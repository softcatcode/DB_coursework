package com.softcat.weatherapp

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.softcat.database.model.CountryDbModel
import kotlinx.coroutines.runBlocking
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class InsertQueryTest {
    private val context = InstrumentationRegistry
    .getInstrumentation().targetContext.applicationContext
    private val component = DaggerUnitTestsComponent.factory().create(context)
    private val db = component.getDatabase()

    private fun cmp(a: CountryDbModel, b: CountryDbModel) {
        assert(a.name == b.name)
    }

    @Test
    fun saveTowDifferentCountries() = runBlocking {
        val countryModels = listOf(
            CountryDbModel(
                id = CountryDbModel.UNSPECIFIED_ID,
                name = "Russia"
            ),
            CountryDbModel(
                id = CountryDbModel.UNSPECIFIED_ID,
                name = "England"
            ),
        )

        countryModels.forEach {
            db.saveCountry(it)
        }
        val savedCountries = db.getCountries().getOrThrow()

        assert(savedCountries.size == countryModels.size)
        for (i in countryModels.indices) {
            assert(countryModels[i].name == savedCountries[i].name)
        }
    }
}