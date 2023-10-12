pico-8 cartridge // http://www.pico-8.com
version 41
__lua__

--[[
Jaden Speth 2023
]]--

-- Official word dictionary

DICTIONARY = {{"a","interjection",{"ah","ha","uh","oh","ooh","aw","well"}},{"akesi","adjective",{"amphibian-","reptilian-","slimy"}},{"akesi","noun",{"reptile","amphibian","non-cute animal"}},{"ala","adjective",{"no","not","none","un-"}},{"ala","adjective numeral",{"null","0"}},{"ala","adverb",{"don't"}},{"ala","noun",{"nothing","negation","zero"}},{"ala!","interjection",{"no!"}},{"alasa","adjective",{"hunting-","-hunting","hunting"}},{"alasa","noun",{"hunting"}},{"alasa","verb transitive",{"to hunt","to forage"}},{"ale","adjective",{"all","every","complete","whole"}},{"ale","adjective numeral",{"100"}},{"ale","adverb",{"always","forever","evermore","eternally"}},{"ale","noun",{"everything","anything","life","the universe"}},{"ali","adjective",{"all","every","complete","whole (ale = ali)"}},{"ali","adverb",{"always","forever","evermore","eternally"}},{"ali","noun",{"everything","anything","life","the universe"}},{"anpa","adjective",{"low","lower","bottom","down"}},{"anpa","adverb",{"downstairs","below","deep","low","deeply"}},{"anpa","noun",{"bottom","lower part","under","below","floor","beneath"}},{"anpa","verb intransitive",{"to prostrate oneself"}},{"anpa","verb transitive",{"to defeat","to beat","to vanquish","to conquer","to enslave"}},{"ante","adjective",{"different","dissimilar","changed","other","unequal","differential"}},{"ante","noun",{"difference","distinction","differential","variation","variance","disagreement"}},{"ante","verb transitive",{"to change","to alter","to modify"}},{"ante la","noun",{"if difference","if variance","if disagreement"}},{"anu","conjunction",{"or"}},{"awen","adjective",{"remaining","stationary","permanent","sedentary"}},{"awen","adverb",{"still","yet"}},{"awen","noun",{"inertia","continuity","continuum","stay"}},{"awen","verb intransitive",{"to stay","to wait,to remain"}},{"awen","verb transitive",{"to keep"}},{"e mi","reflexive pronoun",{"myself","ourselves"}},{"e ona","reflexive pronoun",{"himself","herself","itself","themselves"}},{"e sina","reflexive pronoun",{"yourself","yourselves"}},{"en","conjunction",{"and"}},{"esun","adjective",{"commercial","trade","marketable","for sale","salable","deductible"}},{"esun","noun",{"market","shop","fair","bazaar","business","transaction"}},{"esun","verb transitive",{"to buy","to sell","to barter","to swap"}},{"ijo","adjective",{"of something"}},{"ijo","adverb",{"of something"}},{"ijo","noun",{"thing","something","stuff","anything","object"}},{"ijo","verb transitive",{"to objectify"}},{"ike","adjective",{"bad","negative","wrong","evil","overly complex"}},{"ike","adverb",{"bad","negative","wrong","evil","overly complex"}},{"ike","noun",{"negativity","badness","evil"}},{"ike","verb intransitive",{"to be bad","to suck"}},{"ike","verb transitive",{"to make bad","to worsen"}},{"ike la","noun",{"if negativity","if badness","if evil"}},{"ike!","interjection",{"oh dear! woe! alas!"}},{"ilo","adjective",{"useful"}},{"ilo","adverb",{"usefully"}},{"ilo","noun",{"tool","device","machine"}},{"insa","adjective",{"inner","internal"}},{"insa","noun",{"inside","inner world","centre","stomach"}},{"jaki","adjective",{"dirty","gross","filthy","obscene"}},{"jaki","adverb",{"dirty","gross","filthy"}},{"jaki","noun",{"dirt","pollution","garbage","filth","feces"}},{"jaki","verb transitive",{"to pollute","to dirty"}},{"jaki!","interjection",{"ew! yuck!"}},{"jan","adjective",{"human","somebody's","personal","of people"}},{"jan","adverb",{"human","somebody's","personal","of people"}},{"jan","noun",{"person","people","human","being","somebody","anybody"}},{"jan","verb transitive",{"to personify","to humanize","to personalize"}},{"jelo","adjective",{"yellowish","yellowy"}},{"jelo","noun",{"yellow","light green"}},{"jo","adjective",{"private","personal"}},{"jo","noun",{"having","possessions","content"}},{"jo","verb transitive",{"to have","to contain"}},{"jo","verb transitive",{"to get"}},{"kala","adjective",{"fish-"}},{"kala","noun",{"fish","marine animal","sea creature"}},{"kalama","adjective",{"noisy","loud","rowdy"}},{"kalama","noun",{"sound","noise","voice"}},{"kalama","verb intransitive",{"to make noise"}},{"kalama","verb transitive",{"to sound","to ring","to play (an instrument)"}},{"kama","adjective",{"coming","future"}},{"kama","adverb",{"coming","future"}},{"kama","noun",{"event","happening","chance","arrival","beginning"}},{"kama","verb intransitive",{"to come","to become","to arrive","to happen"}},{"kama","auxiliary verb",{"to become","to mange to"}},{"kama","verb transitive",{"to bring about","to summon"}},{"kasi","adjective",{"vegetable","vegetal","biological","biologic","leafy"}},{"kasi","noun",{"plant","vegetation","herb","leaf"}},{"kasi","verb intransitive",{"to grow"}},{"kasi","verb transitive",{"to plant","to grow"}},{"ken","noun",{"possibility","ability","power to do things","permission"}},{"ken","verb intransitive",{"can","is able to","is allowed to","may","is possible"}},{"ken","auxiliary verb",{"to can","may"}},{"ken","verb transitive",{"to make possible","to enable","to allow","to permit"}},{"ken la","noun",{"if possibility","if ability","if permission"}},{"kepeken","noun",{"use","usage","tool"}},{"kepeken","verb intransitive",{"to use"}},{"kepeken","preposition",{"with","using"}},{"kepeken","auxiliary verb",{"to use"}},{"kili","adjective",{"fruity"}},{"kili","adverb",{"fruity"}},{"kili","noun",{"fruit","pulpy vegetable","mushroom"}},{"kin","adjective",{"indeed","still"}},{"kin","adverb",{"actually","indeed","in fact","really","objectively"}},{"kin","noun",{"reality","fact"}},{"kin la","noun",{"if reality","if fact"}},{"kin!","interjection",{"really!"}},{"kipisi","noun",{"section","fragment","slice"}},{"kipisi","verb transitive",{"to cut"}},{"kiwen","adjective",{"hard","solid","stone-like","made of stone or metal"}},{"kiwen","adverb",{"hard","solid","stone-like","made of stone or metal"}},{"kiwen","noun",{"hard thing","rock","stone","metal","mineral","clay"}},{"kiwen","verb transitive",{"to solidify","to harden","to petrify","to fossilize"}},{"ko","noun",{"semi-solid","squishy","clay","dough","glue","paste","powder","gum"}},{"ko","verb transitive",{"to squash","to pulverize"}},{"kon","adjective",{"air-like","ethereal","gaseous"}},{"kon","adverb",{"air-like","ethereal","gaseous"}},{"kon","noun",{"air","wind","smell","soul"}},{"kon","verb intransitive",{"to breathe"}},{"kon","verb transitive",{"to blow away something","to puff away something"}},{"kule","adjective",{"colourful","pigmented","painted"}},{"kule","noun",{"color","colour","paint","ink","dye","hue"}},{"kule","verb transitive",{"to paint","to color"}},{"kulupu","adjective",{"communal","shared","public","of the society"}},{"kulupu","noun",{"group","community","society","company","people"}},{"kulupu","verb transitive",{"to assemble","to call together","to convene"}},{"kute","adjective",{"auditory","hearing"}},{"kute","noun",{"hearing","ear"}},{"kute","verb transitive",{"to hear","to listen,"}},{"lape","adjective",{"sleeping","of sleep","dormant"}},{"lape","adverb",{"asleep"}},{"lape","noun",{"sleep","rest"}},{"lape","verb intransitive",{"to sleep","to rest"}},{"lape","verb transitive",{"to knock out"}},{"laso","adjective",{"bluish","bluey"}},{"laso","noun",{"blue","blue-green"}},{"lawa","adjective",{"main","leading","in charge"}},{"lawa","adverb",{"main","leading","in charge"}},{"lawa","noun",{"head","mind"}},{"lawa","verb transitive",{"to lead","to control","to rule","to steer"}},{"len","adjective",{"dressed","clothed","costumed","dressed up"}},{"len","noun",{"clothing","cloth","fabric","network","internet"}},{"len","verb transitive",{"to wear","to be dressed","to dress"}},{"lete","adjective",{"cold","cool","uncooked","raw","perishing"}},{"lete","adverb",{"bleakly"}},{"lete","noun",{"cold","chill","bleakness"}},{"lete","verb transitive",{"to cool down","to chill"}},{"lili","adjective",{"small","little","young","a bit","short","few","less"}},{"lili","adverb",{"small","little","young","a bit","short","few","less"}},{"lili","noun",{"smallness","youth","immaturity"}},{"lili","verb transitive",{"to reduce","to shorten","to shrink","to lessen"}},{"linja","adjective",{"elongated","oblong","long"}},{"linja","noun",{"long and flexible thing","string","rope","hair","thread","cord","chain","line","yarn"}},{"lipu","adjective",{"book-","paper-","card-","ticket-","sheet-","page-"}},{"lipu","noun",{"paper","book","card","ticket","sheet","(web-)page","list","flat and bendable thing"}},{"loje","adjective",{"reddish","ruddy","pink","pinkish","gingery"}},{"loje","noun",{"red"}},{"lon","adjective",{"true","existing","correct","real","genuine"}},{"lon","noun",{"existence","being","presence"}},{"lon","verb intransitive",{"to be there","to be present","to be real/true","to exist"}},{"lon","preposition",{"be (located) in/at/on"}},{"lon","verb transitive",{"to give birth","to create"}},{"luka","adjective",{"tangible","palpable"}},{"luka","adjective numeral",{"five","5"}},{"luka","noun",{"arm","hand","tacticle organ"}},{"lukin","adjective",{"visual(ly)"}},{"lukin","adverb",{"visual(ly)"}},{"lukin","noun",{"view","look","glance","sight","gaze","glimpse","seeing","vision"}},{"lukin","verb intransitive",{"to look","to watch out","to pay attention"}},{"lukin","auxiliary verb",{"to seek to","try to","look for"}},{"lukin","verb transitive",{"to see","to look at","to watch","to read"}},{"lupa","adjective",{"hole-","holey","full of holes"}},{"lupa","noun",{"hole","orifice","door","window"}},{"lupa","verb transitive",{"to pierce","to stab","to perforate"}},{"ma","adjective",{"countrified","outdoor","alfresco","open-air"}},{"ma","noun",{"land","earth","country","(outdoor) area"}},{"mama","adjective",{"of the parent","parental","maternal","fatherly","motherly","mumsy"}},{"mama","noun",{"parent","mother","father"}},{"mama","verb transitive",{"to mother sb.","to wet-nurse","mothering"}},{"mani","adjective",{"financial","financially","monetary","pecuniary"}},{"mani","adverb",{"financially"}},{"mani","noun",{"money","material wealth","currency","dollar","capital"}},{"meli","adjective",{"female","feminine","womanly"}},{"meli","noun",{"woman","female","girl","wife","girlfriend"}},{"mi","personal pronoun",{"i","we"}},{"mi","possessive pronoun",{"my","our"}},{"mije","adjective",{"male","masculine","manly"}},{"mije","noun",{"man","male","husband","boyfriend"}},{"moku","adjective",{"eating"}},{"moku","adverb",{"eating"}},{"moku","noun",{"food","meal"}},{"moku","verb transitive",{"to eat","to drink","to swallow","to ingest","to consume"}},{"moli","adjective",{"dead","dying","fatal","deadly","lethal","mortal","deathly","killing"}},{"moli","adverb",{"mortally"}},{"moli","noun",{"death","decease"}},{"moli","verb intransitive",{"to die","to be dead"}},{"moli","verb intransitive",{"dieing"}},{"moli","verb transitive",{"to kill"}},{"monsi","adjective",{"back","rear"}},{"monsi","noun",{"back","rear end","butt","behind"}},{"monsuta","adjective",{"fearful","afraid"}},{"monsuta","noun",{"monster","monstrosity","fearful thing","fright","mythical creatures","fear"}},{"mu","adjective",{"animal noise"}},{"mu","adverb",{"animal noise"}},{"mu","noun",{"animal noise"}},{"mu","verb intransitive",{"to communicate animally"}},{"mu","verb transitive",{"to make animal noise"}},{"mu!","interjection",{"woof!","meow!","moo!"}},{"mun","adjective",{"lunar"}},{"mun","noun",{"moon","lunar","night sky object","star"}},{"musi","adjective",{"artful","fun","recreational"}},{"musi","adverb",{"cheerfully"}},{"musi","noun",{"fun","playing","game","recreation","art","entertainment"}},{"musi","verb intransitive",{"to play","to have fun"}},{"musi","verb transitive",{"to amuse","to entertain"}},{"mute","adjective",{"many","very","much","several","a lot","abundant","numerous","more"}},{"mute","adjective numeral",{"20"}},{"mute","adverb",{"many","very","much","several","a lot","abundant","numerous","more"}},{"mute","noun",{"amount","quantity"}},{"mute","verb transitive",{"to make many or much"}},{"namako","adjective",{"spicy","piquant"}},{"namako","noun",{"spice","something extra","food additive","accessory"}},{"namako","verb transitive",{"to spice","to flavor","to decorate"}},{"nanpa","noun",{"number","numeral"}},{"nanpa","adjective numeral",{"-th number"}},{"nanpa","verb transitive",{"to count","to reckon","to number"}},{"nasa","adjective",{"silly","crazy","foolish","drunk","strange","stupid","weird"}},{"nasa","adverb",{"silly","crazy","foolish","drunk","strange","stupid","weird"}},{"nasa","noun",{"stupidity","foolishness","silliness","nonsense","idiocy","obtuseness","muddler"}},{"nasa","verb transitive",{"to drive crazy","to make weird"}},{"nasin","adjective",{"systematic","habitual","customary","doctrinal"}},{"nasin","noun",{"way","manner","custom","road","path","doctrine","system","method"}},{"nena","adjective",{"hilly","undulating","mountainous","hunchbacked","humpbacked","bumpy"}},{"nena","noun",{"bump","hill","extrusion","button","mountain","nose","protuberance"}},{"ni","adjective demonstrative pronoun",{"this","that"}},{"ni","noun demonstrative pronoun",{"this","that"}},{"nimi","noun",{"word","name"}},{"nimi","verb transitive",{"to name"}},{"noka","adjective",{"foot-","lower","bottom"}},{"noka","noun",{"leg","foot","organ of locomotion","bottom","lower part"}},{"noka","adverb",{"on foot"}},{"o,","interjection",{"adressing people"}},{"o!","interjection",{"hey!"}},{"oko","adjective",{"optical","eye-"}},{"oko","noun",{"eye"}},{"olin","adjective",{"love"}},{"olin","noun",{"love"}},{"olin","verb transitive",{"to love (a person)"}},{"ona","personal pronoun",{"she","he","it","they"}},{"ona","possessive pronoun",{"her","his","its"}},{"open","adjective",{"initial","starting","opening"}},{"open","noun",{"start","beginning","opening"}},{"open","auxiliary verb",{"to begin","to start"}},{"open","verb transitive",{"to open","to start","to begin","to turn on"}},{"open la","noun",{"at the opening","in the beginning"}},{"pakala","adjective",{"destroyed","ruined","demolished","shattered","wrecked"}},{"pakala","adverb",{"destroyed","ruined","demolished","shattered","wrecked"}},{"pakala","noun",{"blunder","accident","mistake","destruction","damage","breaking"}},{"pakala","verb intransitive",{"to screw up","to fall apart","to break"}},{"pakala","verb transitive",{"to screw up","to ruin","to break","to hurt","to injure","to damage"}},{"pakala!","interjection",{"damn!","fuck!"}},{"pali","adjective",{"active","work-related","operating","working"}},{"pali","adverb",{"actively","briskly"}},{"pali","noun",{"activity","work","deed","project"}},{"pali","verb intransitive",{"to act","to work","to function"}},{"pali","verb transitive",{"to do","to make","to build","to create"}},{"palisa","adjective",{"long"}},{"palisa","noun",{"long hard thing","branch","rod","stick","pointy thing"}},{"palisa","verb transitive",{"to stretch","to beat","to poke","to stab","to sexually arouse"}},{"pan","noun",{"cereal","grain","barley","corn","oat","rice","wheat","bread","pasta"}},{"pan","verb transitive",{"to sow"}},{"pana","adjective",{"generous"}},{"pana","noun",{"giving","transfer","exchange"}},{"pana","verb transitive",{"to give","to put","to send","to place","to release","to emit","to cause"}},{"pilin","adjective",{"sensitive","feeling","empathic"}},{"pilin","adverb",{"perceptively"}},{"pilin","noun",{"feelings","emotion","feel","think","sense","touch,"}},{"pilin","verb intransitive",{"to feel","to sense"}},{"pilin","verb transitive",{"to feel","to think","to touch","to fumble","to fiddle"}},{"pimeja","adjective",{"black","dark"}},{"pimeja","noun",{"darkness","shadows"}},{"pimeja","verb transitive",{"to darken"}},{"pini","adjective",{"completed","finished","past","done"}},{"pini","adverb",{"ago","past","perfectly"}},{"pini","noun",{"end","tip"}},{"pini","auxiliary verb",{"to stop","to finish","to end","to interrupt"}},{"pini","verb transitive",{"to end","to stop","to turn off","to finish","to close"}},{"pipi","noun",{"bug","insect","spider"}},{"poka","adjective",{"neighbouring"}},{"poka","noun",{"side","hip","next to"}},{"poki","noun",{"container","box","bowl","cup","glass"}},{"poki","verb transitive",{"to box up","to put in","to can","to bottle"}},{"pona","adjective",{"good","simple","positive","nice","correct","right"}},{"pona","adverb",{"good","simple","positive","nice","correct","right"}},{"pona","noun",{"good","simplicity","positivity"}},{"pona","verb transitive",{"to improve","to fix","to repair","to make good"}},{"pona la","noun",{"if good","if simplicity","if positivity"}},{"pona!","interjection",{"great!","good!","thanks!","ok!","cool!","yay!"}},{"pu","noun",{"official toki pona book"}},{"sama","adjective",{"same","similar","equal","of equal status or position"}},{"sama","adverb",{"just as","equally","exactly the same","just the same","similarly"}},{"sama","noun",{"equality","parity","equity","identity","par","sameness"}},{"sama","preposition",{"like","as","seem"}},{"sama","verb transitive",{"to equate","to make equal","to make similar to"}},{"sama la","noun",{"in case of equality","if parity","on identity"}},{"seli","adjective",{"hot","warm","cooked"}},{"seli","adverb",{"hot","warm","cooked"}},{"seli","noun",{"fire","warmth","heat"}},{"seli","verb transitive",{"to heat","to warm up","to cook"}},{"selo","noun",{"skin","outer form","bark","peel","shell","skin","boundary","shape"}},{"selo","verb transitive",{"to shelter","to protect","to guard"}},{"seme","question pronoun",{"what","which","who","when","where"}},{"sewi","adjective",{"superior","elevated","religious","formal"}},{"sewi","adverb",{"superior","elevated","religious","formal"}},{"sewi","noun",{"high","up","above","top","over","on"}},{"sewi","verb intransitive",{"to get up"}},{"sewi","verb transitive",{"to lift"}},{"sijelo","adjective",{"physical","bodily","corporal","corporeal","material","carnal"}},{"sijelo","adverb",{"physically","bodily"}},{"sijelo","noun",{"body (of person or animal)","physical state","torso"}},{"sijelo","verb transitive",{"to heal","to heal up","to cure"}},{"sike","adjective",{"round","cyclical","of one year"}},{"sike","adverb",{"rotated"}},{"sike","noun",{"circle","ball","cycle","sphere","wheel","round or circular thing"}},{"sike","verb transitive",{"to orbit","to circle","to revolve","to circle around","to rotate"}},{"sin","adjective",{"new","fresh","another","more"}},{"sin","noun",{"news","novelty","innovation","newness","new release"}},{"sin","adverb",{"regenerative"}},{"sin","verb transitive",{"to renew","to renovate","to freshen"}},{"sina","personal pronoun",{"you"}},{"sina","possessive pronoun",{"yours"}},{"sinpin","adjective",{"facial","frontal","anterior","vertical"}},{"sinpin","noun",{"face","foremost","front","wall","chest","torso"}},{"sitelen","adjective",{"figurative","pictorial","metaphorical","metaphorisch"}},{"sitelen","adverb",{"pictorially"}},{"sitelen","noun",{"picture","image","representation","symbol","mark","writing"}},{"sitelen","verb transitive",{"to draw","to write"}},{"sona","adjective",{"knowing","cognizant","shrewd"}},{"sona","noun",{"knowledge","wisdom","intelligence","understanding"}},{"sona","verb intransitive",{"to know","to understand"}},{"sona","auxiliary verb",{"to know how to"}},{"sona","verb transitive",{"to know","to understand","to know how to"}},{"sona","transitives verb",{"to learn","to study"}},{"soweli","adjective",{"animal"}},{"soweli","noun",{"animal","especially land mammal","lovable animal","beast"}},{"suli","adjective",{"big","tall","long","adult","important"}},{"suli","adverb",{"big","tall","long","adult","important"}},{"suli","noun",{"size"}},{"suli","verb transitive",{"to enlarge","to lengthen"}},{"suno","adjective",{"sunny","sunnily"}},{"suno","adverb",{"sunny","sunnily"}},{"suno","noun",{"sun","light"}},{"suno","verb transitive",{"to light","to illumine"}},{"supa","adjective",{"flat","shallow","flat-bottomed","horizontal"}},{"supa","noun",{"horizontal surface","furniture","table","chair","pillow","floor"}},{"suwi","adjective",{"sweet","cute"}},{"suwi","noun",{"candy","sweet food"}},{"suwi","verb transitive",{"to sweeten"}},{"tan","adjective",{"causal,"}},{"tan","noun",{"origin","cause"}},{"tan","verb intransitive",{"to come from","originate from","come out of"}},{"tan","preposition",{"from","by","because of","since"}},{"taso","adjective",{"only","sole"}},{"taso","adverb",{"only","just","merely","simply","solely","singly"}},{"taso","conjunction",{"but","however"}},{"tawa","adjective",{"moving","mobile"}},{"tawa","adverb",{"moving","mobile"}},{"tawa","noun",{"movement","transportation"}},{"tawa","verb intransitive",{"go to","walk","travel","move","leave"}},{"tawa","preposition",{"to","in order to","towards","for","until"}},{"tawa","verb transitive",{"to move","to displace"}},{"telo","adjective",{"wett","slobbery","moist","damp","humid","sticky","sweaty","dewy","drizzly"}},{"telo","adverb",{"wett","slobbery","moist","damp","humid","sticky","sweaty","dewy","drizzly"}},{"telo","noun",{"water","liquid","juice","sauce"}},{"telo","verb transitive",{"to water","to wash with water","to put water to","to melt","to liquify"}},{"tenpo","adjective",{"temporal","chronological","chronologic"}},{"tenpo","adverb",{"chronologically"}},{"tenpo","noun",{"time","period of time","moment","duration","situation","occasion"}},{"toki","adjective",{"speaking","eloquent","linguistic","verbal","grammatical"}},{"toki","adverb",{"speaking","eloquent","linguistic","verbal","grammatical"}},{"toki","noun",{"language","speech","tongue","lingo","jargon,"}},{"toki","verb intransitive",{"to talk","to chat","to communicate"}},{"toki","verb transitive",{"to speak","to talk","to say","to pronounce","to discourse"}},{"toki!","interjection",{"hello","hi","good morning,"}},{"tomo","adjective",{"urban","domestic","household"}},{"tomo","adverb",{"urban","domestic","household"}},{"tomo","noun",{"indoor constructed space","e.g. house","home","room","building"}},{"tomo","verb transitive",{"to build","to construct","to engineer"}},{"tu","adjective numeral",{"two","2"}},{"tu","noun",{"duo","pair"}},{"tu","verb transitive",{"to divide","to double","to separate","to cut in two"}},{"unpa","adjective",{"erotic","sexual"}},{"unpa","adverb",{"erotic","sexual"}},{"unpa","noun",{"sex","sexuality"}},{"unpa","verb intransitive",{"to have sex"}},{"unpa","verb transitive",{"to have sex with","to sleep with","to fuck"}},{"uta","adjective",{"oral"}},{"uta","adverb",{"orally"}},{"uta","noun",{"mouth","lips","oral cavity","jaw","beak"}},{"uta","verb transitive",{"to kiss","to osculate","to oral stimulate","to suck"}},{"utala","adjective",{"fighting"}},{"utala","adverb",{"fighting"}},{"utala","noun",{"conflict","disharmony","fight","war","battle","attack","violence"}},{"utala","verb transitive",{"to hit","to strike","to attack","to compete against"}},{"walo","adjective",{"white","whitish","light-coloured","pale"}},{"walo","noun",{"white thing or part","whiteness","lightness"}},{"walo","verb transitive",{"to whiten","to whitewash"}},{"wan","adjective numeral",{"one","1"}},{"wan","noun",{"unit","element","particle","part","piece"}},{"wan","verb transitive",{"to unite","to make one"}},{"waso","adjective",{"bird-"}},{"waso","noun",{"bird","bat","flying creature","winged animal"}},{"wawa","adjective",{"energetic","strong","fierce","intense","sure","confident"}},{"wawa","adverb",{"strongly","powerfully"}},{"wawa","noun",{"energy","strength","power"}},{"wawa","verb transitive",{"to strengthen","to energize","to empower"}},{"weka","adjective",{"absent","away","ignored"}},{"weka","noun",{"absence"}},{"weka","verb transitive",{"to remove","to eliminate","to throw away","to get rid of"}},{"wile","noun",{"desire","need","will"}},{"wile","auxiliary verb",{"to want","need","wish","have to","must","will","should"}},{"wile","verb transitive",{"to want","need","wish","have to","must","will","should"}}}

-- dict len
DICT_LEN = #DICTIONARY

-- time for some globals

M_WORD = "###########################"
U_WORD = "###########"
D_WORD = "###########"
L_WORD = "###########"
R_WORD = "###########"

ANSWER = "###########"
WORD_TYPE = "###########"

ACCURACY = {1,1} -- word accuracy, format is {#correct,#incorrect}

CURRENT_BUTTONS = 000000

DELAY = 0 -- how many frames to wait
NEW_WORDS = 0 -- do we want new words

-- text box colors
M_BG = 7
U_BG = 7
D_BG = 7
L_BG = 7
R_BG = 7
A_BG = 7

-- Fills / bounding boxes
M_F = {8,8,119,31}
U_F = {40,56,87,71}
D_F = {40,104,87,119}
L_F = {8,80,55,95}
R_F = {72,80,119,95}
A_F = {16,32,71,47}

-- to get words from dict, use this helper
function get_word(num)
    -- returns the num'th word and its data
    out = {}
    add(out,DICTIONARY[num][1])
    add(out,DICTIONARY[num][2])
    add(out,DICTIONARY[num][3])
    return out
end

function pick_words()
    -- clear bg colors.
    M_BG = 7
    U_BG = 7
    D_BG = 7
    L_BG = 7
    R_BG = 7
    -- get a random number
    r = flr(rnd(DICT_LEN))+1 -- 1 - DICT_LEN
    -- set master word, and type
    M_WORD = rnd(get_word(r)[3])
    WORD_TYPE = get_word(r)[2]

    -- now pick a random translation to be the answer
    ANSWER = get_word(r)[1]

    -- now get 4 random incorrect answer words
    -- make sure there arent any dupes
    safe = false
    while not safe do
        rand = r
        while rand == r do
            rand = flr(rnd(DICT_LEN))+1
        end
        U_WORD = get_word(rand)[1]
        rand = r
        while rand == r do
            rand = flr(rnd(DICT_LEN))+1
        end
        D_WORD = get_word(rand)[1]
        rand = r
        while rand == r do
            rand = flr(rnd(DICT_LEN))+1
        end
        L_WORD = get_word(rand)[1]
        rand = r
        while rand == r do
            rand = flr(rnd(DICT_LEN))+1
        end
        R_WORD = get_word(rand)[1]

        a = U_WORD
        b = D_WORD
        c = L_WORD
        d = R_WORD
        e = ANSWER
        if ((a~=b)and(a~=c)and(a~=d)and(a~=e)and(b~=c)and(b~=d)and(b~=e)and(c~=d)and(c~=e)and(d~=e)) safe = true -- make sure there are no dupes
    end

    -- now overwrite one with the correct answer

    r = flr(rnd(4))+1 -- 1 - 4

    if (r==1) U_WORD = ANSWER
    if (r==2) D_WORD = ANSWER
    if (r==3) L_WORD = ANSWER
    if (r==4) R_WORD = ANSWER
end

function attempt_solve()
    -- find pressed direction
    solvedir = -1 -- will be 1-4 udlr
    check_word = ""
    if (CURRENT_BUTTONS) == 4 then
        solvedir = 1
        check_word = U_WORD
    elseif (CURRENT_BUTTONS) == 8 then
        solvedir = 3
        check_word = D_WORD
    elseif (CURRENT_BUTTONS) == 1 then
        solvedir = 4
        check_word = L_WORD
    elseif (CURRENT_BUTTONS) == 2 then
        solvedir = 2
        check_word = R_WORD
    else
        goto skip
    end
    wrong = 0

    -- load the word to check
    if check_word == ANSWER then
        -- Correct!
        ACCURACY = {ACCURACY[1]+1,ACCURACY[2]}
        sfx(1)
        DELAY = 15
        NEW_WORDS = 1
    else
        -- Wrong!
        ACCURACY = {ACCURACY[1],ACCURACY[2]+2}
        sfx(0)
        DELAY = 15
        wrong = 1
    end
    -- now color in the backgrounds

    if (((U_WORD ~= ANSWER) or (wrong == 1)) and (solvedir == 1)) then U_BG = 8 elseif ((wrong == 0) and (solvedir == 1)) then U_BG = 11 end
    if (((D_WORD ~= ANSWER) or (wrong == 1)) and (solvedir == 3)) then D_BG = 8 elseif ((wrong == 0) and (solvedir == 3)) then D_BG = 11 end
    if (((L_WORD ~= ANSWER) or (wrong == 1)) and (solvedir == 4)) then L_BG = 8 elseif ((wrong == 0) and (solvedir == 4)) then L_BG = 11 end
    if (((R_WORD ~= ANSWER) or (wrong == 1)) and (solvedir == 2)) then R_BG = 8 elseif ((wrong == 0) and (solvedir == 2)) then R_BG = 11 end


    percentage = flr(ACCURACY[1]/(ACCURACY[1]+ACCURACY[2])*100)
    -- accuracy colors
    if percentage >= 80 then
        A_BG = 11
    elseif percentage >= 70 then
        A_BG = 10
    elseif percentage > 50 then
        A_BG = 9
    elseif percentage <= 50 then
        A_BG = 8
    end
    
    -- new words!
    ::skip::
end

-- fill behind text boxes
function fill_bg()
    rectfill(M_F[1],M_F[2],M_F[3],M_F[4],M_BG)
    rectfill(U_F[1],U_F[2],U_F[3],U_F[4],U_BG)
    rectfill(D_F[1],D_F[2],D_F[3],D_F[4],D_BG)
    rectfill(L_F[1],L_F[2],L_F[3],L_F[4],L_BG)
    rectfill(R_F[1],R_F[2],R_F[3],R_F[4],R_BG)
    rectfill(A_F[1],A_F[2],A_F[3],A_F[4],A_BG)
end

-- print the words where they go
function set_text()
    -- chars are 4px wide
    for i=1,7 do
        if i == 1 then
            cur_cords = M_F
            cur_word = M_WORD
        elseif i == 2 then
            cur_cords = U_F
            cur_word = U_WORD
        elseif i == 3 then
            cur_cords = D_F
            cur_word = D_WORD
        elseif i == 4 then
            cur_cords = L_F
            cur_word = L_WORD
        elseif i == 5 then
            cur_cords = R_F
            cur_word = R_WORD
        elseif i == 6 then
            cur_cords = M_F
            cur_word = WORD_TYPE
        elseif i == 7 then
            cur_cords = A_F
            cur_word = "accuracy: "..tostr(flr(ACCURACY[1]/(ACCURACY[1]+ACCURACY[2])*100)).."%"
        end
        -- find center
        cx = ceil((cur_cords[1]+cur_cords[3])/2) - (#cur_word*2)
        cy = ceil((cur_cords[2]+cur_cords[4])/2) - (3) - (tonum(i==1)*3) + (tonum(i==6)*3)
        -- print
        print(cur_word,cx,cy,0)
    end
end

function _init()
    cls()
    flip()
    pick_words()
end

function _update60()
    if DELAY > 0 then
        DELAY += -1
        goto continue
    end
    if NEW_WORDS == 1 then
        NEW_WORDS = 0
        pick_words()
    end
    CURRENT_BUTTONS = btnp()
    if CURRENT_BUTTONS == 000000 then
        goto continue
    else
        attempt_solve()
    end
    ::continue::
end

function _draw()
    fill_bg()
    map(0, 0, 0, 0, 16, 16)
    set_text()
    flip()
end



__gfx__
00000000111111110000011111100000111111111111111160000000000000066661111111111666777777772222222266666666600000000000000000000006
00000000111111110001111111111000111111111111111160000000000000060006611111166000777777772222222200000000600000000000000000000006
00000000111111110011111111111100111111111111111160000000000000060000061111600000777777772222222200000000600000000000000000000006
00000000111111110111111111111110011111111111111016000000000000610000006116000000777777772222222200000000600000000000000000000006
00000000111111110111111111111110011111111111111016000000000000610000006116000000777777772222222200000000600000000000000000000006
00000000111111111111111111111111001111111111110011600000000006110000000660000000777777772222222200000000600000000000000000000006
00000000111111111111111111111111000111111111100011166000000661110000000660000000777777772222222200000000600000000000000000000006
00000000111111111111111111111111000001111110000011111666666111110000000660000000777777772222222200000000600000006666666600000006
__map__
0201010101010101010101010101010300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
01090c0c0c0c0c0c0c0c0c0c0c0c080100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010d0000000000000000000000000f0100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
01060e0e0e0e0e0e0e0e0e0e0e0e070100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101090c0c0c0c0c080101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101060e0e0e0e0e070101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101090c0c0c0c08010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101060e0e0e0e07010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
01090c0c0c0c080101090c0c0c0c080100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
01060e0e0e0e070101060e0e0e0e070100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101090c0c0c0c08010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101060e0e0e0e07010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0401010101010101010101010101010500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000100000007000070000700007000070000700007000070000000000000000000000000000000000000000000070000700007000070000700007000070000700000000000000000000000000000000000000000
0002000038050380503805038050380503f0503f0503f0503f0503f0503f0403f0403f0303f0303f0203f0203f0103f0100000000000000000000000000000000000000000000000000000000000000000000000
0004000000600006000060000600000000060000600006000060000600006000060000600226001e6001b60000600000000000000000000000000000000000000000000000000000000000000000000000000000
__music__
00 02424344

