# 1. Cleanup everything in the correct order
puts "Wiping database..."
Session.destroy_all
Favorite.destroy_all
Recipe.destroy_all
User.destroy_all

# 2. Create the User (The Parent)
puts "Creating user..."
user = User.create!(
  email_address: "test@test.dk", 
  password_digest: "$2a$12$vz38eT2SHCAVsN6op5j3T.KHIMtpg8YHxOJf8REzBXdRTM.lbtySi"
)

# 3. Create the Recipes (The Children)
puts "Creating recipes..."

r1 = Recipe.create!(
  title: "Ninja Creami Protein-is", 
  user: user,
  instructions: "<!-- BEGIN app/views/layouts/action_text/contents/_content.html.erb\n--><div class=\"trix-content\">\n  <!-- BEGIN /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb\n--><div><strong>Klargørring</strong><br>1. Tilsæt alle dine ingredienser sammen i din Creami-beholder<br>2. Bland alle dine ingredienser sammen i din Creami-beholder<br>3. Lad den fryse i 24 timer<br><br><strong>Tilberedning</strong><br>4. Når den skal laves skal du tage den ud og stille den på bordet i 10 minutter<br>5. På Ninja Creami maskinen Vælg funktionen \"Ice Cream\" eller \"Sobet\"<br>6. Hvis den er meget grynet skal du tilføje lidt væske og vælge \"respin\".<br><br><strong>Indhold:<br></strong>*med guargummi/Let &amp; fit græsk yoghurt<br>Kalorier: 281<br>Fedt: 3,5 g<br>Mættet fedt: 1,5 g<br>Natrium: 368 mg<br>Kulhydrater: 19,5 g<br>Kostfibre: 3 g<br>Sukker: 9 g<br>Protein: 43 g</div>\n<!-- END /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb --></div>\n<!-- END app/views/layouts/action_text/contents/_content.html.erb -->",
  content: "<!-- BEGIN app/views/layouts/action_text/contents/_content.html.erb\n--><div class=\"trix-content\">\n  <!-- BEGIN /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb\n--><div>340 g proteinshake (klar til at drikke)<br>90 g græsk yoghurt<br>2 spiseskefulde jordnøddesmørpulver<br>2 spiseskefulde instant budding</div>\n<!-- END /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb --></div>\n<!-- END app/views/layouts/action_text/contents/_content.html.erb -->"
)

r2 = Recipe.create!(
  title: "Græsk yoghurtproteinis", 
  user: user,
  instructions: "<!-- BEGIN app/views/layouts/action_text/contents/_content.html.erb\n--><div class=\"trix-content\">\n  <!-- BEGIN /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb\n--><div><strong>Klargørring</strong><br>1. Tilsæt alle dine ingredienser sammen i din Creami-beholder<br>2. Bland alle dine ingredienser sammen i din Creami-beholder<br>3. Lad den fryse i 24 timer<br><br><strong>Tilberedning</strong><br>4. Når den skal laves skal du tage den ud og stille den på bordet i 10 minutter<br>5. På Ninja Creami maskinen Vælg funktionen \"Ice Cream\" eller \"Sobet\"<br>6. Hvis den er meget grynet skal du tilføje lidt væske og vælge \"respin\".<br><br><br><strong>Indhold:<br></strong>*med proteinpulver/Triple Zero græsk yoghurt<br>Kalorier: 445<br>Fedt: 1 g<br>Mættet fedt: 0,5 g<br>Natrium: 435 mg<br>Kulhydrater: 33 g<br>Kostfibre: 0 g<br>Sukker: 21 g<br>Protein: 76 g</div>\n<!-- END /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb --></div>\n<!-- END app/views/layouts/action_text/contents/_content.html.erb -->"",
  content: "<!-- BEGIN app/views/layouts/action_text/contents/_content.html.erb\n--><div class=\"trix-content\">\n  <!-- BEGIN /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb\n--><div>300 ml kopper græsk yoghurt - <em>Mix &amp; Match smagsvarianter!</em><br>50 ml mælk - <em>eller mælkeerstatning (tænk mandel/kokos)</em><br>1 tsk vaniljeekstrakt<br>1 ½ skefuld proteinpulver<em> - *Valgfrit (Bland &amp; Match smagsvarianter!)</em><br>Sødemiddel <em>- *Valgfrit (honning, stevia, brune ris/ahornsirup osv.)</em><br>2 spiseskefulde instant budding <em>- eller 10 g usmagt kollagenpulver, 1/4-1/2 tsk guar/xanthangummi (denne ingrediens er *valgfri for at gøre den mere cremet)</em></div>\n<!-- END /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb --></div>\n<!-- END app/views/layouts/action_text/contents/_content.html.erb -->"
)

r3 = Recipe.create!(
  title: "Creamy Protein Is", 
  user: user,
  instructions: "<!-- BEGIN app/views/layouts/action_text/contents/_content.html.erb\n--><div class=\"trix-content\">\n  <!-- BEGIN /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb\n--><div><strong>Klargørring</strong><br>1. Tilsæt alle dine ingredienser sammen i din Creami-beholder<br>2. Bland alle dine ingredienser sammen i din Creami-beholder<br>3. Lad den fryse i 24 timer<br><br><strong>Tilberedning</strong><br>4. Når den skal laves skal du tage den ud og stille den på bordet i 10 minutter<br>5. På Ninja Creami maskinen Vælg funktionen \"Ice Cream\" eller \"Sobet\"<br>6. Hvis den er meget grynet skal du tilføje lidt væske og vælge \"respin\".<br><br><br><strong>Indhold:</strong><br>*med proteinpulver/Triple Zero græsk yoghurt<br>Kalorier: 445<br>Fedt: 1 g<br>Mættet fedt: 0,5 g<br>Natrium: 435 mg<br>Kulhydrater: 33 g<br>Kostfibre: 0 g<br>Sukker: 21 g<br>Protein: 76 g</div>\n<!-- END /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb --></div>\n<!-- END app/views/layouts/action_text/contents/_content.html.erb -->",
  content: "<!-- BEGIN app/views/layouts/action_text/contents/_content.html.erb\n--><div class=\"trix-content\">\n  <!-- BEGIN /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb\n--><div>340 ml mælk <em>- eller mælkeerstatning (tænk mandel/kokos)</em><br>2 spiseskefulde kakaopulver<em> - til chokoladeis</em><br>1 ½ kugle proteinpulver <em>- *Valgfrit (mix og match smagsvarianter!)</em><br>Sødemiddel <em>- *Valgfrit (honning, stevia, brune ris/ahornsirup osv.)</em><br>2 spiseskefulde instant budding <em>- eller 10 g usmagsfri kollagenpulver, 1/4-1/2 tsk guar/xanthangummi (denne ingrediens er *valgfri for at gøre den mere cremet)</em></div>\n<!-- END /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb --></div>\n<!-- END app/views/layouts/action_text/contents/_content.html.erb -->"
)

r4 = Recipe.create!(
  title: "Cremet hytteostproteinis", 
  user: user,
  instructions: "<!-- BEGIN app/views/layouts/action_text/contents/_content.html.erb\n--><div class=\"trix-content\">\n  <!-- BEGIN /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb\n--><div><strong>Klargørring</strong><br>1. Tilsæt alle dine ingredienser sammen i din Creami-beholder<br>2. Bland alle dine ingredienser sammen i din Creami-beholder<br>3. Lad den fryse i 24 timer<br><br><strong>Tilberedning</strong><br>4. Når den skal laves skal du tage den ud og stille den på bordet i 10 minutter<br>5. Hvis du ikke har noget imod hytteostens konsistens, kan du blande alle ingredienserne sammen i din Creami-beholder.<br>Hvis du vil have det glat, skal du blende eller male alle ingredienserne sammen, inden du tilsætter det til din Creami-beholder.<br>6. På Ninja Creami maskinen Vælg funktionen \"Ice Cream\" eller \"Sobet\"<br>7. Hvis den er meget grynet skal du tilføje lidt væske og vælge \"respin\".<br><br><br><strong>Indhold:</strong><br>*uden proteinpulver<br>Kalorier: 181<br>Fedt: 7,5 g<br>Mættet fedt: 1,2 g<br>Natrium: 340 mg<br>Kulhydrater: 14,5 g<br>Kostfibre: 3,5 g<br>Sukker: 7 g<br>Protein: 14 g</div>\n<!-- END /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb --></div>\n<!-- END app/views/layouts/action_text/contents/_content.html.erb -->",
  content: "<!-- BEGIN app/views/layouts/action_text/contents/_content.html.erb\n--><div class=\"trix-content\">\n  <!-- BEGIN /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb\n--><div>350 ml hytteost<br>110 ml mælk - eller mælkeerstatning (tænk mandel/kokos)<br>1 ½ skefuld proteinpulver - *Valgfrit (mix og match smagsvarianter!)<br>Sødemiddel - *Valgfrit (honning, stevia, brune ris/ahornsirup osv.)<br>2 spiseskefulde instant budding - eller 10 g usmagt kollagenpulver, 1/4-1/2 tsk guar/xanthangummi (denne ingrediens er *valgfri for at gøre den mere cremet)</div>\n<!-- END /home/snaxd/.rbenv/versions/3.3.4/lib/ruby/gems/3.3.0/gems/actiontext-8.1.1/app/views/action_text/contents/_content.html.erb --></div>\n<!-- END app/views/layouts/action_text/contents/_content.html.erb -->"
)

# 4. Create Favorites
puts "Adding favorites..."
Favorite.create!(user: user, recipe: r1)
Favorite.create!(user: user, recipe: r2)

puts "Attaching images to recipes..."

# A helper to attach images safely
def attach_image(recipe, filename)
  path = Rails.root.join("db", "seed_assets", filename)
  if File.exist?(path)
    recipe.images.attach(
      io: File.open(path),
      filename: filename,
      content_type: "image/png"
    )
  else
    puts "Warning: #{filename} not found in db/seed_assets"
  end
end

attach_image(r1, "Is1.png")
attach_image(r1, "Is1-1.png")

attach_image(r2, "Is3.png")
attach_image(r2, "Is3-1.png")

attach_image(r3, "Is4.png")
attach_image(r3, "Is4-1.png")
attach_image(r3, "Is4-2.png")

attach_image(r4, "is5.png")
attach_image(r4, "is5-2.png")

puts "All done!"