package webapp

import org.http4k.template.ViewModel

data class Results(val colour: Double) : ViewModel {
    override fun template() = "views/ScrabbleResults.ftl"
}
