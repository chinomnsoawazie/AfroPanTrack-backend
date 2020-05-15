# AfroPanTrackBackend
<p align="center">
 <a href="https://github.com/chinomnsoawazie/AfroPanTrack-backend">
 <img width="30%" src="https://github.com/chinomnsoawazie/AfroPanTrack-frontend/blob/master/logo.png" style="max-width:50%;">
 </a>
</p>

<p align="center"> <img src="https://img.shields.io/badge/-Technologies%20Used-blue" style="max-width:50%;"> </p>

<p align="center">
  <img src="https://img.shields.io/badge/CSS-3.0-blue" style="max-width:50%;">  
  <img src="https://img.shields.io/badge/HTML-5.2-green" style="max-width:50%;">
  <img src="https://img.shields.io/badge/JavaScript-1.8.5-blue" style="max-width:50%;">
  <img src="https://img.shields.io/badge/ReactJS-16.12.0-yellowgreen" style="max-width:50%;">
  <img src="https://img.shields.io/badge/Redux-4.0.5-brightgreen" style="max-width:50%;">
  <img src="https://img.shields.io/badge/React%20Activestorage%20provider-0.8.0-orange" style="max-width:50%;">
  <img src="https://img.shields.io/badge/Redux%20Thunk-2.3.0-yellowgreen" style="max-width:50%;">
  <img src="https://img.shields.io/badge/React%20Google%20Maps-9.4.5-lightgrey" style="max-width:50%;">
  <img src="https://img.shields.io/badge/axios-0.19.1-red" style="max-width:50%;">
 </p>
  
 <p align="center"> <img src="https://img.shields.io/badge/-Notices-blue" style="max-width:50%;"> </p>

 <p align="center"> 
    <a target="_blank" rel="noopener noreferrer" href="https://github.com/chinomnsoawazie/station-locate-backend">
      <img src="https://img.shields.io/badge/Backend%20Repository-Click%20here-green" style="max-width:50%;">
    </a>
   <img src="https://img.shields.io/badge/Status-Making%20mobile%20app%20version-brightgreen" style="max-width:50%;">
 </p>
 
 <h3 align="center"> Take a spin of the FindStation app on Heroku by clicking
 <a href="https://stationfind-app-frontend.herokuapp.com/">👉here👈</a></h3>

  
  
  <h1>
  <a id="table-of-contents" class="anchor" href="#contents">  </a>
  Table of Contents
  </h1>
  
  <ul>
    <li><a href="#inspiration">Inspiration</a></li>
    <li><a href="#introduction">Introduction</a>
      <ul>
        <li><a href="#overview">Basic overview</a></li>
        <li><a href="#features">Features</a></li>
        <li><a href="#goals">Goals</a></li>
        <li><a href="#challenge">Challenge</a></li>
      </ul>
    </li>
    <li><a href="#demo">Demo</a></li>  
    <li><a href="#installation">Installation</a>
      <ul>
          <li><a href="#prerequisites">Prerequisites</a></li>
          <li><a href="#frontend-installation">Frontend installation</a></li>
          <li><a href="#first-start">First start</a></li>
      </ul>
    </li>   
    <li><a href="#summary-of-files">Summary of files</a>
      <ul>
          <li><a href="#external-dataset">External dataset</a></li>
      </ul>
    </li>
   <li><a href="#planned-improvements">Planned improvements</a></li>
   <li><a href="#contact">Contact</a></li>
   <li><a href="#credits">Credits</a></li>
 </ul>
  
  <h1 id="inspiration">Inspiration</h1>
  
 <p>The root inspiration for this app is sustainability. For Electric Vehicle (EV) drivers, knowing stations closest to them is crucial. They equally need information about those stations without the clutter of ads. Finally, drivers should be able to focus on driving and delegate charge management to the app.</p>
  
 <a href=#table-of-contents> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
  
  <h1 id="introduction">Introduction</h1>
   <h2 id="overview">Basic Overview</h2>
    <p>User searches for nearest EV charging stations, displays those stations on a map individually or all at once, be able to have a street view of a station location whether viewed individually or collectively, and if they like a station, they can navigate to it.</p>
    
   <h2 id="features">Features</h2>
    <p>Features of the app include the following;
      <ul> 
       <li>User can create, edit, and delete an account</li>
       <li>User can check availability of username when creating an account</li>
       <li> A logged in user can search for stations using the following search criteria:
        <ul>
         <li>Street, city, and state</li>
         <li>Street and zipcode</li>
         <li>Zipcode</li>
         <li>City and state</li>
         <li>Use their current geolocation(or GPS)</li>
        </ul>
        </li>
       <li>A logged in user can search for stations and do the following:
        <ul>
         <li>Add a station to 'My stations' (a kinda favorite stations)</li>
         <li>If station was already in the user's 'My stations', the station card gives them the option to remove it from their stations</li>
         <li>View stations on a map individually and collectively</li>
         <li>Navigate to the station directly from the station's card on the search results page or from the collective stations display, and see route info like distance, travel time and estimated time in traffic</li>
         <li>See information on the station like station name, distance from current location, price to charge, address, available ports, kind of facility it is located in, who the station is accessible to, etc</li>
         <li>Search returned stations by name</li>
         <li>Filter stations by hours of operation, Telsa or non-tesla location, connector types, in-my-stations, etc</li>
         <li>Start a new search altogether</li>
        </ul>
       </li>
       <li>User can view 'My stations' in a separate dashboard</li>
       <li>User can add/delete notes to a station in 'My stations'</li>
       <li>User can upload pictures from thier device in the process of creating notes and those pictures will show alongside with the corresponding note</li>
       <li>User can create and delete locations they frequent and view them in 'My locations' dashboard</li>
       <li>User can run a search for nearest stations from a location card</li>
      </ul>
    </p>
    
  <a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
  
  
 <h1 id="goals">Goals</h1>
  <p>The goals are to serve up relevant nearby EV charging stations, give information on them, show them on a map, and navigate to them.</p>
  
 <a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
 
 <h1 id="challenge">Challenge</h1>
  <p>The challenge for the frontend of this app being able to follow the navigation polyline on a desktop or laptop. I mean you could try, but since the best-case scenerio is a laptop which uses wifi for location, it's practically useless for nagivation purposes. This challenge shall be solved by the mobile version which will use device GPS location strategy instead.</p>
  
 <a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
 
 
   <h1 id="demo">Demo</h1>
   <p>Click <a href="https://youtu.be/DE5wNYxjdBY">here</a> to view demo</p>
   
   <a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
   
   
   <h1 id="installation">Installation</h1>
   <h2 id="prerequisites">Prerequisites</h2>
    <p>FindStation frontend is biult with React(^16.12.0), Axios(^0.19.1), google maps react(^2.0.2"), react google maps(^9.4.5), redux(^4.0.5), and redux thunk(^2.3.0). Ensure you have installed these packages with the specified versions or newer ones before cloning this repo. You can find their official installation guides below;
 <ul>
  <li><a href="https://reactjs.org/docs/getting-started.html#create-a-new-react-app">React</a></li>
  <li><a href="https://www.npmjs.com/package/axios">Axios</a></li>
  <li><a href="https://www.npmjs.com/package/google-maps-react">Google maps react</a></li>
  <li><a href="https://www.npmjs.com/package/react-google-maps">React google maps</a></li>
  <li><a href="https://www.npmjs.com/package/redux">React Redux</a></li>
  <li><a href="https://www.npmjs.com/package/redux-thunk">Redux Thunk</a></li>
 </ul>
</p>

 <h2 id="frontend-installation">Frontend installation</h2>
<p>To install the front end of FindStation, do the following;
 <ul>
  <li>Clone the <a href="https://github.com/chinomnsoawazie/station-locate-frontend">Frontend</a></li>
  <li>Ensure all relevant packages from the prerequisites section above are installed by running <code>npm install</code> from your terminal</li>
  <li>Head over to <a href="https://github.com/chinomnsoawazie/station-locate-backend">Backend</a> and follow the instructions to install the backend API</li>
 </ul>
</p>

 <h2 id="first-start">First start</h2>
<p>After installtion you need to fire up the backend API and the frontend in that order. For the backend, navigate into the folder you cloned the backend repo into(probably need to run an <code>ls</code> command to be sure youre in the root app folder), and run <code>rails s</code>. This would start the backend on the default <code>port 3000</code>. Then in a new shell tab or new terminal window, navivate to the folder containing the cloned and properly installed frontend repo and run <code>npm start</code>. It should come up with a dialog that informs you <code>port 3000</code> is taken and props you to chose to run the frontend on a different port. Chose yes and everything should be alright. Frontend will run on a port with a number above 3000, usually 3001.<br/>

To access the backend, go to <code>http://localhost:3000</code><br/>
To acess the frontend, go to <code>http://localhost:3001</code></p>
 
<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>

<h1 id="summary-of-files">Summary of files</h1>
   <h2 id="external-dataset">External datatset</h2>
    <p>
 <ul>
  <li><a href="https://developer.nrel.gov/docs/transportation/alt-fuel-stations-v1/nearest/">National Renewable Laboratory's Nearest Stations(Alternative Fuel Stations):</a> Source of EV charging stations</li>
   <li><a href="https://developers.google.com/maps/documentation/javascript/tutorial"> Google Maps JavaScript Api documentation:</a>  You get the map data by sending the request to <code>https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap</code></li>
  <li><a href="https://developers.google.com/maps/documentation/geocoding/intro#GeocodingResponses"> Google Maps Geocoding information documentation:</a>  You get the geocode information by sending the request to <code>https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,
+Mountain+View,+CA&key=YOUR_API_KEY</code></li>
  <li><a href="https://developers.google.com/maps/documentation/javascript/directions"> Google Maps Directions Service documentation:</a> Gives detailed information on how to send a directions service request</li>
</ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>



 <h1 id="planned-improvements">Planned improvements</h1>
    <p>  Some of the planned improvements include;

 <ul>
  <li>Implement checkins</li>
  <li>Make the app social by allowing public commenting and sharing to social networks</li>
   <li>Implement OAuth 2.0 to enable logging in using social media accounts</li>
  <li>Implement tracking that lets the user know how when they need to head to a charging station and which stations they can make it to
</li>
  <li>Audible alarm warning if charge is low and driver is getting out of range of charging stations. The alarm will persit until driver heeds it</li>
 </ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>

 <h1 id="contact">Contacts</h1>
    <p>
 <ul>
  <li><a href="coawazie@gmail.com">Email</a></li>
  <li><a href="https://www.linkedin.com/in/chinomnsoawazie/">LinkedIn</a></li>
  <li><a href="https://twitter.com/COAwazie">Twitter</a></li>
  <li><a href="https://medium.com/coffee-software">Medium</a></li>
 </ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>

 <h1 id="credits">Credits</h1>
    <p>
 <ul>
  <li><a href="https://flatironschool.com/">The Flatiron School</a></li>
  <li><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript">JavaScript</a></li>
  <li><a href="https://jwt.io/introduction/">JWT Auth</a></li>
  <li><a href="https://reactjs.org/">React</a></li>
    <li><a href="https://reacttraining.com/react-router/">React router</a></li>
  <li><a href="https://www.npmjs.com/package/redux-thunk">Redux Thunk</a></li>
  <li><a href="https://www.npmjs.com/package/axios">Axios</a></li>
  <li><a href="https://www.npmjs.com/package/google-maps-react">Google maps react</a></li>
    <li><a href="https://www.npmjs.com/package/react-google-maps">React Google maps</a></li>
  <li><a href="https://www.npmjs.com/package/redux">Redux</a></li>
 </ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
