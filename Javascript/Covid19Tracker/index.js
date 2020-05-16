const url = "https://api.covid19api.com/summary"

async function getData(){
    let response = await fetch(url)
    let data = await response.json()
    console.log(data)
}

async function getWorldDetails(){
    let response = await fetch(url)
    let data = await response.json()
    document.getElementById("confirm").innerHTML = data.Global.TotalConfirmed
    document.getElementById("recovered").innerHTML = data.Global.TotalRecovered
    document.getElementById("deaths").innerHTML = data.Global.TotalDeaths
}

async function populateCountryNames(){
    let response = await fetch(url)
    let data = await response.json()
    let select = document.querySelector("select")
    let index = 0
    let options = data.Countries.map(variable => `<option value = ${index++}>${variable.Country}</option>`)
    select.innerHTML = options
}

async function getCountryDetail(){
    let response = await fetch(url)
    let data = await response.json()
    let select = document.querySelector("select")
    let option = select.options[select.selectedIndex]
    document.getElementById("country").innerHTML = option.textContent
    document.getElementById("country-confirm").innerHTML = data.Countries[option.value].TotalConfirmed
    document.getElementById("country-recovered").innerHTML = data.Countries[option.value].TotalRecovered
    document.getElementById("country-deaths").innerHTML = data.Countries[option.value].TotalDeaths

}