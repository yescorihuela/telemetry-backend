
namespace :trips do
  data_gps_measurements = [
    {:road_lonlat=>"POINT (-70.69127082824706 -33.45403754073398)"},
    {:road_lonlat=>"POINT (-70.6915283203125 -33.456364866148014)"},
    {:road_lonlat=>"POINT (-70.69032669067383 -33.45965881995727)"},
    {:road_lonlat=>"POINT (-70.68998336791992 -33.465243933879066)"},
    {:road_lonlat=>"POINT (-70.68998336791992 -33.47383571415577)"},
    {:road_lonlat=>"POINT (-70.68758010864258 -33.477988102605764)"},
    {:road_lonlat=>"POINT (-70.68895339965819 -33.4821402920467)"},
    {:road_lonlat=>"POINT (-70.69341659545898 -33.492018839206224)"},
    {:road_lonlat=>"POINT (-70.69839477539062 -33.501896259517494)"},
    {:road_lonlat=>"POINT (-70.70783615112305 -33.521504608636306)"},
    {:road_lonlat=>"POINT (-70.70852279663086 -33.52651332821698)"},
    {:road_lonlat=>"POINT (-70.71950912475586 -33.60604149572663)"},
    {:road_lonlat=>"POINT (-70.71796417236328 -33.61376155108331)"},
    {:road_lonlat=>"POINT (-70.71487426757812 -33.637203406257235)"},
    {:road_lonlat=>"POINT (-70.71367263793945 -33.64463485765219)"},
    {:road_lonlat=>"POINT (-70.718994140625 -33.657638354109665)"},
    {:road_lonlat=>"POINT (-70.72225570678711 -33.66506804140365)"},
    {:road_lonlat=>"POINT (-70.72603225708008 -33.67463996177376)"},
    {:road_lonlat=>"POINT (-70.72860717773438 -33.68363945239179)"},
    {:road_lonlat=>"POINT (-70.7274055480957 -33.68735325327766)"},
    {:road_lonlat=>"POINT (-70.72380065917969 -33.69449472706071)"},
    {:road_lonlat=>"POINT (-70.72431564331055 -33.701064358790276)"},
    {:road_lonlat=>"POINT (-70.7280921936035 -33.71548722249545)"},
    {:road_lonlat=>"POINT (-70.73272705078125 -33.72505352836076)"},
    {:road_lonlat=>"POINT (-70.73993682861327 -33.73918686460779)"},
    {:road_lonlat=>"POINT (-70.75538635253905 -33.8300698997189)"},
    {:road_lonlat=>"POINT (-70.74972152709961 -33.859297450398245)"},
    {:road_lonlat=>"POINT (-70.74216842651367 -33.86713728719762)"},
    {:road_lonlat=>"POINT (-70.73598861694335 -33.89948681391328)"},
    {:road_lonlat=>"POINT (-70.73616027832031 -33.90333373867912)"},
    {:road_lonlat=>"POINT (-70.72637557983398 -33.91387627229514)"},
    {:road_lonlat=>"POINT (-70.72843551635741 -33.920429081889196)"},
    {:road_lonlat=>"POINT (-70.72586059570312 -33.92313553009509)"},
    {:road_lonlat=>"POINT (-70.71882247924805 -33.9278359989436)"},
    {:road_lonlat=>"POINT (-70.71418762207031 -33.93823308422682)"},
    {:road_lonlat=>"POINT (-70.71418762207031 -33.94364476321219)"},
    {:road_lonlat=>"POINT (-70.71624755859374 -33.9484865001747)"},
    {:road_lonlat=>"POINT (-70.71676254272461 -33.953755136273514)"},
    {:road_lonlat=>"POINT (-70.70320129394531 -33.986214127142)"},
    {:road_lonlat=>"POINT (-70.7080078125 -34.03445260967644)"},
    {:road_lonlat=>"POINT (-70.71161270141602 -34.036159664315605)"},
    {:road_lonlat=>"POINT (-70.72036743164062 -34.039289175269076)"},
    {:road_lonlat=>"POINT (-70.73341369628906 -34.045263375550654)"},
    {:road_lonlat=>"POINT (-70.75109481811523 -34.05265942137597)"},
    {:road_lonlat=>"POINT (-70.75504302978516 -34.05678385900245)"},
    {:road_lonlat=>"POINT (-70.77718734741211 -34.08664448743108)"},
    {:road_lonlat=>"POINT (-70.78079223632812 -34.094605543881926)"},
    {:road_lonlat=>"POINT (-70.78182220458984 -34.10910411569082)"},
    {:road_lonlat=>"POINT (-70.78817367553711 -34.139088373438476)"},
    {:road_lonlat=>"POINT (-70.79280853271484 -34.15230080698923)"},
    {:road_lonlat=>"POINT (-70.79778671264648 -34.16110794795231)"},
    {:road_lonlat=>"POINT (-70.79452514648436 -34.172612667476244)"},
    {:road_lonlat=>"POINT (-70.78834533691406 -34.19291964055571)"},
    {:road_lonlat=>"POINT (-70.7874870300293 -34.20896295162417)"},
    {:road_lonlat=>"POINT (-70.79246520996094 -34.218190021599234)"},
    {:road_lonlat=>"POINT (-70.79504013061523 -34.2234419024609)"},
    {:road_lonlat=>"POINT (-70.79538345336914 -34.22798380564679)"},
    {:road_lonlat=>"POINT (-70.79504013061523 -34.23493812022693)"},
    {:road_lonlat=>"POINT (-70.79847335815428 -34.24132422972855)"},
    {:road_lonlat=>"POINT (-70.80997467041014 -34.26204027139666)"},
    {:road_lonlat=>"POINT (-70.82405090332031 -34.28587159652361)"},
    {:road_lonlat=>"POINT (-70.83314895629883 -34.32429955337337)"},
    {:road_lonlat=>"POINT (-70.84156036376952 -34.342585649404036)"},
    {:road_lonlat=>"POINT (-70.87778091430664 -34.40648477017429)"},
    {:road_lonlat=>"POINT (-70.88396072387694 -34.41838077212271)"},
    {:road_lonlat=>"POINT (-70.88567733764648 -34.422204127692474)"},
    {:road_lonlat=>"POINT (-70.88739395141602 -34.42602730843172)"},
    {:road_lonlat=>"POINT (-70.89031219482422 -34.435796864855725)"},
    {:road_lonlat=>"POINT (-70.89305877685547 -34.44528215290128)"},
    {:road_lonlat=>"POINT (-70.90112686157227 -34.47061816265395)"},
    {:road_lonlat=>"POINT (-70.90215682983398 -34.475995767558636)"},
    {:road_lonlat=>"POINT (-70.90490341186523 -34.4793919710481)"},
    {:road_lonlat=>"POINT (-70.91005325317383 -34.48420302267625)"},
    {:road_lonlat=>"POINT (-70.91348648071289 -34.488589327926576)"},
    {:road_lonlat=>"POINT (-70.92584609985352 -34.50669808103445)"},
    {:road_lonlat=>"POINT (-70.93846321105957 -34.52819711604961)"},
    {:road_lonlat=>"POINT (-70.94301223754883 -34.53427807308364)"},
    {:road_lonlat=>"POINT (-70.95580101013184 -34.54502472496434)"},
    {:road_lonlat=>"POINT (-70.96283912658691 -34.55117514478884)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.97331047058105 -34.56955300035297)"},
    {:road_lonlat=>"POINT (-70.97356796264648 -34.57195595815898)"},
    {:road_lonlat=>"POINT (-70.96661567687988 -34.58552429876527)"},
    {:road_lonlat=>"POINT (-70.98464012145996 -34.60516619968573)"},
    {:road_lonlat=>"POINT (-70.9892749786377 -34.60996998643594)"},
    {:road_lonlat=>"POINT (-70.99167823791504 -34.62565100237967)"},
    {:road_lonlat=>"POINT (-70.99382400512695 -34.65269732107384)"},
    {:road_lonlat=>"POINT (-70.99511146545409 -34.66173433297161)"},
    {:road_lonlat=>"POINT (-71.00197792053223 -34.66914677104502)"},
    {:road_lonlat=>"POINT (-71.01356506347656 -34.68538122266006)"},
    {:road_lonlat=>"POINT (-71.02729797363281 -34.70422331140433)"},
    {:road_lonlat=>"POINT (-71.03785514831542 -34.725177448317595)"},
    {:road_lonlat=>"POINT (-71.04137420654297 -34.73498244258411)"},
    {:road_lonlat=>"POINT (-71.0430908203125 -34.73702794221469)"},
    {:road_lonlat=>"POINT (-71.04249000549316 -34.749652491484056)"},
    {:road_lonlat=>"POINT (-71.04695320129395 -34.78060620575734)"},
    {:road_lonlat=>"POINT (-71.04806900024413 -34.792025828558856)"},
    {:road_lonlat=>"POINT (-71.04766900024413 -34.790025828558851)"},
    {:road_lonlat=>"POINT (-71.04652404785156 -34.791074253715365)"}
  ]

  data_gps_measurements_get_out_from_route = [
    {:road_lonlat=>"POINT (-70.69127082824706 -33.45403754073398)"},
    {:road_lonlat=>"POINT (-70.6915283203125 -33.456364866148014)"},
    {:road_lonlat=>"POINT (-70.69032669067383 -33.45965881995727)"},
    {:road_lonlat=>"POINT (-70.68998336791992 -33.465243933879066)"},
    {:road_lonlat=>"POINT (-70.68998336791992 -33.47383571415577)"},
    {:road_lonlat=>"POINT (-70.68758010864258 -33.477988102605764)"},
    {:road_lonlat=>"POINT (-70.68895339965819 -33.4821402920467)"},
    {:road_lonlat=>"POINT (-70.69341659545898 -33.492018839206224)"},
    {:road_lonlat=>"POINT (-70.73839477539062 -33.511896259517494)"},
    {:road_lonlat=>"POINT (-70.70783615112305 -33.521504608636306)"},
    {:road_lonlat=>"POINT (-70.70852279663086 -33.52651332821698)"},
    {:road_lonlat=>"POINT (-70.71950912475586 -33.60604149572663)"},
    {:road_lonlat=>"POINT (-70.71796417236328 -33.61376155108331)"},
    {:road_lonlat=>"POINT (-70.71487426757812 -33.637203406257235)"},
    {:road_lonlat=>"POINT (-70.71367263793945 -33.64463485765219)"},
    {:road_lonlat=>"POINT (-70.718994140625 -33.657638354109665)"},
    {:road_lonlat=>"POINT (-70.72225570678711 -33.66506804140365)"},
    {:road_lonlat=>"POINT (-70.72603225708008 -33.67463996177376)"},
    {:road_lonlat=>"POINT (-70.72860717773438 -33.68363945239179)"},
    {:road_lonlat=>"POINT (-70.7274055480957 -33.68735325327766)"},
    {:road_lonlat=>"POINT (-70.72380065917969 -33.69449472706071)"},
    {:road_lonlat=>"POINT (-70.72431564331055 -33.701064358790276)"},
    {:road_lonlat=>"POINT (-70.7580921936035 -33.71548722249545)"},
    {:road_lonlat=>"POINT (-70.73272705078125 -33.72505352836076)"},
    {:road_lonlat=>"POINT (-70.73993682861327 -33.73918686460779)"},
    {:road_lonlat=>"POINT (-70.75538635253905 -33.8300698997189)"},
    {:road_lonlat=>"POINT (-70.74972152709961 -33.859297450398245)"},
    {:road_lonlat=>"POINT (-70.74216842651367 -33.86713728719762)"},
    {:road_lonlat=>"POINT (-70.73598861694335 -33.89948681391328)"},
    {:road_lonlat=>"POINT (-70.73616027832031 -33.90333373867912)"},
    {:road_lonlat=>"POINT (-70.72637557983398 -33.91387627229514)"},
    {:road_lonlat=>"POINT (-70.72843551635741 -33.920429081889196)"},
    {:road_lonlat=>"POINT (-70.75586059570312 -33.92313553009509)"},
    {:road_lonlat=>"POINT (-70.71882247924805 -33.9278359989436)"},
    {:road_lonlat=>"POINT (-70.71418762207031 -33.93823308422682)"},
    {:road_lonlat=>"POINT (-70.71418762207031 -33.94364476321219)"},
    {:road_lonlat=>"POINT (-70.71624755859374 -33.9484865001747)"},
    {:road_lonlat=>"POINT (-70.71676254272461 -33.953755136273514)"},
    {:road_lonlat=>"POINT (-70.70320129394531 -33.986214127142)"},
    {:road_lonlat=>"POINT (-70.7080078125 -34.03445260967644)"},
    {:road_lonlat=>"POINT (-70.71161270141602 -34.036159664315605)"},
    {:road_lonlat=>"POINT (-70.72036743164062 -34.039289175269076)"},
    {:road_lonlat=>"POINT (-70.73341369628906 -34.045263375550654)"},
    {:road_lonlat=>"POINT (-70.75109481811523 -34.05265942137597)"},
    {:road_lonlat=>"POINT (-70.75504302978516 -34.05678385900245)"},
    {:road_lonlat=>"POINT (-70.77718734741211 -34.08664448743108)"},
    {:road_lonlat=>"POINT (-70.78079223632812 -34.094605543881926)"},
    {:road_lonlat=>"POINT (-70.78182220458984 -34.10910411569082)"},
    {:road_lonlat=>"POINT (-70.78817367553711 -34.139088373438476)"},
    {:road_lonlat=>"POINT (-70.79280853271484 -34.15230080698923)"},
    {:road_lonlat=>"POINT (-70.79778671264648 -34.16110794795231)"},
    {:road_lonlat=>"POINT (-70.79452514648436 -34.172612667476244)"},
    {:road_lonlat=>"POINT (-70.78834533691406 -34.19291964055571)"},
    {:road_lonlat=>"POINT (-70.7874870300293 -34.20896295162417)"},
    {:road_lonlat=>"POINT (-70.79246520996094 -34.218190021599234)"},
    {:road_lonlat=>"POINT (-70.79504013061523 -34.2234419024609)"},
    {:road_lonlat=>"POINT (-70.79538345336914 -34.22798380564679)"},
    {:road_lonlat=>"POINT (-70.79504013061523 -34.23493812022693)"},
    {:road_lonlat=>"POINT (-70.79847335815428 -34.24132422972855)"},
    {:road_lonlat=>"POINT (-70.80997467041014 -34.26204027139666)"},
    {:road_lonlat=>"POINT (-70.82405090332031 -34.28587159652361)"},
    {:road_lonlat=>"POINT (-70.83314895629883 -34.32429955337337)"},
    {:road_lonlat=>"POINT (-70.84156036376952 -34.342585649404036)"},
    {:road_lonlat=>"POINT (-70.87778091430664 -34.40648477017429)"},
    {:road_lonlat=>"POINT (-70.88396072387694 -34.41838077212271)"},
    {:road_lonlat=>"POINT (-70.88567733764648 -34.422204127692474)"},
    {:road_lonlat=>"POINT (-70.88739395141602 -34.42602730843172)"},
    {:road_lonlat=>"POINT (-70.89031219482422 -34.435796864855725)"},
    {:road_lonlat=>"POINT (-70.89305877685547 -34.44528215290128)"},
    {:road_lonlat=>"POINT (-70.90112686157227 -34.47061816265395)"},
    {:road_lonlat=>"POINT (-70.90215682983398 -34.475995767558636)"},
    {:road_lonlat=>"POINT (-70.90490341186523 -34.4793919710481)"},
    {:road_lonlat=>"POINT (-70.91005325317383 -34.48420302267625)"},
    {:road_lonlat=>"POINT (-70.91348648071289 -34.488589327926576)"},
    {:road_lonlat=>"POINT (-70.92584609985352 -34.50669808103445)"},
    {:road_lonlat=>"POINT (-70.93846321105957 -34.52819711604961)"},
    {:road_lonlat=>"POINT (-70.94301223754883 -34.53427807308364)"},
    {:road_lonlat=>"POINT (-70.95580101013184 -34.54502472496434)"},
    {:road_lonlat=>"POINT (-70.96283912658691 -34.55117514478884)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.97331047058105 -34.56955300035297)"},
    {:road_lonlat=>"POINT (-70.97356796264648 -34.57195595815898)"},
    {:road_lonlat=>"POINT (-70.96661567687988 -34.58552429876527)"},
    {:road_lonlat=>"POINT (-70.98464012145996 -34.60516619968573)"},
    {:road_lonlat=>"POINT (-70.9892749786377 -34.60996998643594)"},
    {:road_lonlat=>"POINT (-70.99167823791504 -34.62565100237967)"},
    {:road_lonlat=>"POINT (-70.99382400512695 -34.65269732107384)"},
    {:road_lonlat=>"POINT (-70.99511146545409 -34.66173433297161)"},
    {:road_lonlat=>"POINT (-71.00197792053223 -34.66914677104502)"},
    {:road_lonlat=>"POINT (-71.01356506347656 -34.68538122266006)"},
    {:road_lonlat=>"POINT (-71.02729797363281 -34.70422331140433)"},
    {:road_lonlat=>"POINT (-71.03785514831542 -34.725177448317595)"},
    {:road_lonlat=>"POINT (-71.04137420654297 -34.73498244258411)"},
    {:road_lonlat=>"POINT (-71.0430908203125 -34.73702794221469)"},
    {:road_lonlat=>"POINT (-71.04249000549316 -34.749652491484056)"},
    {:road_lonlat=>"POINT (-71.04695320129395 -34.78060620575734)"},
    {:road_lonlat=>"POINT (-71.04806900024413 -34.792025828558856)"},
    {:road_lonlat=>"POINT (-71.04766900024413 -34.790025828558851)"},
    {:road_lonlat=>"POINT (-71.04652404785156 -34.791074253715365)"}
  ]


  data_gps_measurements_unfinished_trip = [
    {:road_lonlat=>"POINT (-70.69127082824706 -33.45403754073398)"},
    {:road_lonlat=>"POINT (-70.6915283203125 -33.456364866148014)"},
    {:road_lonlat=>"POINT (-70.69032669067383 -33.45965881995727)"},
    {:road_lonlat=>"POINT (-70.68998336791992 -33.465243933879066)"},
    {:road_lonlat=>"POINT (-70.68998336791992 -33.47383571415577)"},
    {:road_lonlat=>"POINT (-70.68758010864258 -33.477988102605764)"},
    {:road_lonlat=>"POINT (-70.68895339965819 -33.4821402920467)"},
    {:road_lonlat=>"POINT (-70.69341659545898 -33.492018839206224)"},
    {:road_lonlat=>"POINT (-70.73839477539062 -33.511896259517494)"},
    {:road_lonlat=>"POINT (-70.70783615112305 -33.521504608636306)"},
    {:road_lonlat=>"POINT (-70.70852279663086 -33.52651332821698)"},
    {:road_lonlat=>"POINT (-70.71950912475586 -33.60604149572663)"},
    {:road_lonlat=>"POINT (-70.71796417236328 -33.61376155108331)"},
    {:road_lonlat=>"POINT (-70.71487426757812 -33.637203406257235)"},
    {:road_lonlat=>"POINT (-70.71367263793945 -33.64463485765219)"},
    {:road_lonlat=>"POINT (-70.718994140625 -33.657638354109665)"},
    {:road_lonlat=>"POINT (-70.72225570678711 -33.66506804140365)"},
    {:road_lonlat=>"POINT (-70.72603225708008 -33.67463996177376)"},
    {:road_lonlat=>"POINT (-70.72860717773438 -33.68363945239179)"},
    {:road_lonlat=>"POINT (-70.7274055480957 -33.68735325327766)"},
    {:road_lonlat=>"POINT (-70.72380065917969 -33.69449472706071)"},
    {:road_lonlat=>"POINT (-70.72431564331055 -33.701064358790276)"},
    {:road_lonlat=>"POINT (-70.7580921936035 -33.71548722249545)"},
    {:road_lonlat=>"POINT (-70.73272705078125 -33.72505352836076)"},
    {:road_lonlat=>"POINT (-70.73993682861327 -33.73918686460779)"},
    {:road_lonlat=>"POINT (-70.75538635253905 -33.8300698997189)"},
    {:road_lonlat=>"POINT (-70.74972152709961 -33.859297450398245)"},
    {:road_lonlat=>"POINT (-70.74216842651367 -33.86713728719762)"},
    {:road_lonlat=>"POINT (-70.73598861694335 -33.89948681391328)"},
    {:road_lonlat=>"POINT (-70.73616027832031 -33.90333373867912)"},
    {:road_lonlat=>"POINT (-70.72637557983398 -33.91387627229514)"},
    {:road_lonlat=>"POINT (-70.72843551635741 -33.920429081889196)"},
    {:road_lonlat=>"POINT (-70.75586059570312 -33.92313553009509)"},
    {:road_lonlat=>"POINT (-70.71882247924805 -33.9278359989436)"},
    {:road_lonlat=>"POINT (-70.71418762207031 -33.93823308422682)"},
    {:road_lonlat=>"POINT (-70.71418762207031 -33.94364476321219)"},
    {:road_lonlat=>"POINT (-70.71624755859374 -33.9484865001747)"},
    {:road_lonlat=>"POINT (-70.71676254272461 -33.953755136273514)"},
    {:road_lonlat=>"POINT (-70.70320129394531 -33.986214127142)"},
    {:road_lonlat=>"POINT (-70.7080078125 -34.03445260967644)"},
    {:road_lonlat=>"POINT (-70.71161270141602 -34.036159664315605)"},
    {:road_lonlat=>"POINT (-70.72036743164062 -34.039289175269076)"},
    {:road_lonlat=>"POINT (-70.73341369628906 -34.045263375550654)"},
    {:road_lonlat=>"POINT (-70.75109481811523 -34.05265942137597)"},
    {:road_lonlat=>"POINT (-70.75504302978516 -34.05678385900245)"},
    {:road_lonlat=>"POINT (-70.77718734741211 -34.08664448743108)"},
    {:road_lonlat=>"POINT (-70.78079223632812 -34.094605543881926)"},
    {:road_lonlat=>"POINT (-70.78182220458984 -34.10910411569082)"},
    {:road_lonlat=>"POINT (-70.78817367553711 -34.139088373438476)"},
    {:road_lonlat=>"POINT (-70.79280853271484 -34.15230080698923)"},
    {:road_lonlat=>"POINT (-70.79778671264648 -34.16110794795231)"},
    {:road_lonlat=>"POINT (-70.79452514648436 -34.172612667476244)"},
    {:road_lonlat=>"POINT (-70.78834533691406 -34.19291964055571)"},
    {:road_lonlat=>"POINT (-70.7874870300293 -34.20896295162417)"},
    {:road_lonlat=>"POINT (-70.79246520996094 -34.218190021599234)"},
    {:road_lonlat=>"POINT (-70.79504013061523 -34.2234419024609)"},
    {:road_lonlat=>"POINT (-70.79538345336914 -34.22798380564679)"},
    {:road_lonlat=>"POINT (-70.79504013061523 -34.23493812022693)"},
    {:road_lonlat=>"POINT (-70.79847335815428 -34.24132422972855)"},
    {:road_lonlat=>"POINT (-70.80997467041014 -34.26204027139666)"},
    {:road_lonlat=>"POINT (-70.82405090332031 -34.28587159652361)"},
    {:road_lonlat=>"POINT (-70.83314895629883 -34.32429955337337)"},
    {:road_lonlat=>"POINT (-70.84156036376952 -34.342585649404036)"},
    {:road_lonlat=>"POINT (-70.87778091430664 -34.40648477017429)"},
    {:road_lonlat=>"POINT (-70.88396072387694 -34.41838077212271)"},
    {:road_lonlat=>"POINT (-70.88567733764648 -34.422204127692474)"},
    {:road_lonlat=>"POINT (-70.88739395141602 -34.42602730843172)"},
    {:road_lonlat=>"POINT (-70.89031219482422 -34.435796864855725)"},
    {:road_lonlat=>"POINT (-70.89305877685547 -34.44528215290128)"},
    {:road_lonlat=>"POINT (-70.90112686157227 -34.47061816265395)"},
    {:road_lonlat=>"POINT (-70.90215682983398 -34.475995767558636)"},
    {:road_lonlat=>"POINT (-70.90490341186523 -34.4793919710481)"},
    {:road_lonlat=>"POINT (-70.91005325317383 -34.48420302267625)"},
    {:road_lonlat=>"POINT (-70.91348648071289 -34.488589327926576)"},
    {:road_lonlat=>"POINT (-70.92584609985352 -34.50669808103445)"},
    {:road_lonlat=>"POINT (-70.93846321105957 -34.52819711604961)"},
    {:road_lonlat=>"POINT (-70.94301223754883 -34.53427807308364)"},
    {:road_lonlat=>"POINT (-70.95580101013184 -34.54502472496434)"},
    {:road_lonlat=>"POINT (-70.96283912658691 -34.55117514478884)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"},
    {:road_lonlat=>"POINT (-70.96524238586426 -34.5532251837122)"}
  ]


  upper_bound = 5

  desc "Start to broadcast as GPS installed device in a vehicle each 10 seconds"
  task regular_trips: :environment do
    @devices = Device.select(:id, :device_serial_number).limit(upper_bound)
    @devices.each do |device|
      trip = Trip.create!(route_id: 1, trip_status_id: 1, device_id: device.id, started_at: Time.now().to_s)
      data_gps_measurements.each do |measurement|
        GpsMeasurement.create!({
          :device_id => device.id,
          :road_lonlat => measurement[:road_lonlat],
          :incoming_measurement_at => Time.now().to_s,
          :trip_id => trip.id
        })
        Rails.logger.info "Broadcasting vehicle #{device.vehicles.first.license_plate} with device #{device.device_serial_number}..."
        # Ten seconds for broadcast the next position
        sleep(10)
      end
      # Finish the trip
      trip.update!(trip_status_id: 3)
      # Next bus to exit
      sleep(5)
    end
  end

  desc "Start to broadcast as GPS installed device in vehicle with irregular broadcasting"
  task irregular_trips: :environment do
    @devices = Device.select(:id, :device_serial_number).limit(upper_bound)
    @devices.each do |device|
      trip = Trip.create!(route_id: 1, trip_status_id: 1, device_id: device.id, started_at: Time.now().to_s)
      data_gps_measurements.each do |measurement|
        GpsMeasurement.create!({
          :device_id => device.id,
          :road_lonlat => measurement[:road_lonlat],
          :incoming_measurement_at => Time.now().to_s,
          :trip_id => trip.id
        })
        Rails.logger.info "Broadcasting vehicle #{device.vehicles.first.license_plate} with device #{device.device_serial_number}..."
        # Ten seconds for broadcast the next position
        sleep((rand * 60).to_i)
      end
      # Next bus to exit
      sleep(60)
    end
  end

  desc "Start to broadcast as GPS installed device get out from the route"
  task irregular_route: :environment do
    @devices = Device.select(:id, :device_serial_number).limit(upper_bound)
    @route = Route.find(1)
    @devices.each do |device|
      trip = Trip.create!(route_id: 1, trip_status_id: 1, device_id: device.id, started_at: Time.now().to_s)
      data_gps_measurements_get_out_from_route.each do |measurement|
    
        unless RouteCoordinateService.is_within_route?(@route.id, measurement[:road_lonlat])
          Rails.logger.info "Vehicle out of route #{device.vehicles.first.license_plate}..."
          EventRoute.create!({
            :device_id => device.id,
            :event_id => 1,
            :trip_id => trip.id,
            :occurred_at => Time.now().to_s,
            :location => measurement[:road_lonlat]
          })
        end

        if RouteCoordinateService.back_to_route?(trip.id, device.id, @route.id, measurement[:road_lonlat])
          Rails.logger.info "Vehicle #{device.vehicles.first.license_plate} return to route..."
          EventRoute.create!({
            :device_id => device.id,
            :event_id => 2,
            :trip_id => trip.id,
            :occurred_at => Time.now().to_s,
            :location => measurement[:road_lonlat]
          })
        end          

        GpsMeasurement.create!({
          :device_id => device.id,
          :road_lonlat => measurement[:road_lonlat],
          :incoming_measurement_at => Time.now().to_s,
          :trip_id => trip.id
        })
        Rails.logger.info "Broadcasting vehicle #{device.vehicles.first.license_plate} with device #{device.device_serial_number}..."
        # Ten seconds for broadcast the next position
        sleep((0.500))
      end
      last_location = device.gps_measurements.where(:trip_id => trip.id).last.road_lonlat
      unless DistanceEvaluatorService.close_to_terminal?(last_location)
        trip.update!({trip_status_id: 2, finished_at: Time.now().to_s})
        Rails.logger.info "Unfinished trip vehicle #{device.vehicles.first.license_plate} with device #{device.device_serial_number}..."
      else
        Rails.logger.info "Finished trip vehicle #{device.vehicles.first.license_plate} with device #{device.device_serial_number}..."
        trip.update!({trip_status_id: 3, finished_at: Time.now().to_s})
      end
      # Next bus to exit
      sleep(60)
    end
  end

  desc "Stopped vehicle"
  task stopped_vehicle: :environment do
    @devices = Device.select(:id, :device_serial_number).limit(upper_bound)
    @route = Route.find(1)
    @devices.each do |device|
      trip = Trip.create!(route_id: 1, trip_status_id: 1, device_id: device.id)
      data_gps_measurements_get_out_from_route.each do |measurement|

        if RouteEvaluatorService.vehicle_is_stopped?(device.id, trip.id)
          Rails.logger.info "Vehicle has stopped #{device.device_serial_number}..."
          EventRoute.create!({
            :device_id => device.id,
            :event_id => 3,
            :trip_id => trip.id,
            :occurred_at => Time.now().to_s,
            :location => measurement[:road_lonlat]
          })
        end

        GpsMeasurement.create!({
          :device_id => device.id,
          :road_lonlat => measurement[:road_lonlat],
          :incoming_measurement_at => Time.now().to_s,
          :trip_id => trip.id
        })
        Rails.logger.info "Broadcasting vehicle #{device.vehicles.first.license_plate} with device #{device.device_serial_number}..."
        # Ten seconds for broadcast the next position
        sleep((rand * 150).to_i)
      end
      last_location = device.gps_measurements.where(:trip_id => trip.id).last.road_lonlat
      unless DistanceEvaluatorService.close_to_terminal?(last_location)
        trip.update!({trip_status_id: 2, finished_at: Time.now().to_s})
        Rails.logger.info "Unfinished trip vehicle #{device.vehicles.first.license_plate} with device #{device.device_serial_number}..."
      else
        Rails.logger.info "Finished trip vehicle #{device.vehicles.first.license_plate} with device #{device.device_serial_number}..."
        trip.update!({trip_status_id: 3, finished_at: Time.now().to_s})
      end
      # Next bus to exit
      sleep(60)
    end
  end



  desc "Start to broadcast as GPS installed device for unfinished trip"
  task unfinished_trip: :environment do
    @devices = Device.select(:id, :device_serial_number).limit(1)
    @devices.each do |device|
      trip = Trip.create!(route_id: 1, trip_status_id: 1, device_id: device.id)
      data_gps_measurements_unfinished_trip.each do |measurement|
        GpsMeasurement.create!({
          :device_id => device.id,
          :road_lonlat => measurement[:road_lonlat],
          :incoming_measurement_at => Time.now().to_s,
          :trip_id => trip.id
        })
        Rails.logger.info "Broadcasting vehicle #{device.vehicles.first.license_plate} with device #{device.device_serial_number}..."
        # Ten seconds for broadcast the next position
        sleep(0.25)
      end
      last_location = device.gps_measurements.where(:trip_id => trip.id).last.road_lonlat
      unless DistanceEvaluatorService.close_to_terminal?(last_location)
        trip.update!({trip_status_id: 2, finished_at: Time.now().to_s})
        Rails.logger.info "Unfinished trip vehicle #{device.vehicles.first.license_plate} with device #{device.device_serial_number}..."
      end
    end
  end
end
