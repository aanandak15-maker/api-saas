-- Seed data generated for NEW Architecture
-- Table: diseases (Consolidated)

INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('ALM-0001', 'Almond', 'Almond Red Leaf Blotch', 'Polystigma ochraceum', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/ALM-0001/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('ALM-0002', 'Almond', 'Shothole Disease', 'Wilsonomyces carpophilus', 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/ALM-0002/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('APP-0003', 'Apple', 'Anthracnose Of Apple', NULL, 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/APP-0003/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('APP-0004', 'Apple', 'Aphids', 'Aphis pomi', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/APP-0004/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('APP-0005', 'Apple', 'Apple Scab', 'Venturia inaequalis', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/APP-0005/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('APP-0006', 'Apple', 'Powdery Mildew', 'Podosphaera leucotricha', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/APP-0006/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('APP-0007', 'Apple', 'San-Jose-Scale', NULL, 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/APP-0007/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('APP-0008', 'Apple', 'Thrips', 'Thysanoptera', 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/APP-0008/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('APP-0009', 'Apple', 'Woolly Aphid', 'Eriosoma lanigerum', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/APP-0009/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('APR-0010', 'Apricot', 'Aphids', 'Myzus persicae', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/APR-0010/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('APR-0011', 'Apricot', 'Fruit Tree Bark Beetle', 'Scolytus mali', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/APR-0011/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('APR-0012', 'Apricot', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'Medium', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/APR-0012/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('APR-0013', 'Apricot', 'Powdery Mildew', 'Podosphaera clandestina', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/APR-0013/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('APR-0014', 'Apricot', 'Shothole Disease', 'Wilsonomyces carpophilus', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/APR-0014/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0015', 'Banana', 'Anthracnose Of Banana', NULL, 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BAN-0015/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0016', 'Banana', 'Bacterial Soft Rot Of Banana', NULL, 'Bacterial', 'Low', 'Early', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/BAN-0016/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0017', 'Banana', 'Banana Bract Mosaic Virus', 'Banana bract mosaic virus', 'Viral', 'Medium', 'All', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/BAN-0017/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0018', 'Banana', 'Banana Fruit-Scarring Beetle', 'Colaspis hypochlora', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/BAN-0018/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0019', 'Banana', 'Banana Lace Wing Bug', 'Stephanitis typica', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/BAN-0019/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0020', 'Banana', 'Banana Streak Virus', 'Banana streak virus', 'Viral', 'High', 'Early', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/BAN-0020/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0021', 'Banana', 'Bunchy Top Virus', 'Banana bunchy top virus', 'Viral', 'High', 'Mid', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/BAN-0021/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0022', 'Banana', 'Cigar End Rot', 'Trachysphaera fructigena', 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BAN-0022/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0023', 'Banana', 'Cucumber Mosaic Virus On Banana', NULL, 'Viral', 'Low', 'Mid', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/BAN-0023/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0024', 'Banana', 'Freckle Of Banana', NULL, 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BAN-0024/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0025', 'Banana', 'Nitrogen Deficiency', 'Nutritional (N)', 'Nutrient/Physiological', 'High', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/BAN-0025/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0026', 'Banana', 'Panama Disease', 'Fusarium oxysporum f.sp. cubense', 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BAN-0026/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0027', 'Banana', 'Potassium Deficiency', 'Nutritional (K)', 'Nutrient/Physiological', 'High', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/BAN-0027/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0028', 'Banana', 'Pseudostem Weevil', 'Odoiporus longicollis', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/BAN-0028/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0029', 'Banana', 'Root Borer', 'Cosmopolites sordidus', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/BAN-0029/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0030', 'Banana', 'Sugar Spot', 'Physiological', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BAN-0030/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0031', 'Banana', 'Thrips', 'Thysanoptera', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/BAN-0031/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0032', 'Banana', 'Tobacco Caterpillar', 'Spodoptera litura', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/BAN-0032/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0033', 'Banana', 'Whiteflies', 'Aleyrodidae', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BAN-0033/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAN-0034', 'Banana', 'Yellow And Black Sigatoka', 'Mycosphaerella musicola/M. fijiensis', 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BAN-0034/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAR-0035', 'Barley', 'Brown Rust Of Barley', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BAR-0035/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAR-0036', 'Barley', 'Covered Smut Of Barley', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BAR-0036/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAR-0037', 'Barley', 'Net Blotch', 'Pyrenophora teres', 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BAR-0037/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAR-0038', 'Barley', 'Physiological Leaf Spot', 'Physiological', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BAR-0038/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAR-0039', 'Barley', 'Ramularia Leaf Spot', 'Ramularia collo-cygni', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BAR-0039/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BAR-0040', 'Barley', 'Rhynchosporium', 'Rhynchosporium secalis', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BAR-0040/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0041', 'Bean', 'Aphids', 'Aphis fabae', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/BEA-0041/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0042', 'Bean', 'Bean Common Mosaic Virus', 'Bean common mosaic virus', 'Viral', 'Medium', 'Late', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/BEA-0042/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0043', 'Bean', 'Bean Rust', 'Uromyces appendiculatus', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BEA-0043/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0044', 'Bean', 'Black Spot Disease', 'Colletotrichum lindemuthianum', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BEA-0044/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0045', 'Bean', 'Cercospora Leaf Spot Of Legumes', NULL, 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BEA-0045/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0046', 'Bean', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'Medium', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/BEA-0046/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0047', 'Bean', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BEA-0047/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0048', 'Bean', 'Leaf Variegation', NULL, 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BEA-0048/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0049', 'Bean', 'Magnesium Deficiency', 'Nutritional (Mg)', 'Nutrient/Physiological', 'High', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/BEA-0049/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0050', 'Bean', 'Nitrogen Deficiency', 'Nutritional (N)', 'Nutrient/Physiological', 'Low', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/BEA-0050/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0051', 'Bean', 'Potassium Deficiency', 'Nutritional (K)', 'Nutrient/Physiological', 'Medium', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/BEA-0051/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0052', 'Bean', 'Powdery Mildew', 'Erysiphe polygoni', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BEA-0052/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0053', 'Bean', 'Southern Green Stink Bug', 'Nezara viridula', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/BEA-0053/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0054', 'Bean', 'Spider Mites', 'Tetranychus urticae', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/BEA-0054/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0055', 'Bean', 'Stem Rot', 'Sclerotinia sclerotiorum', 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BEA-0055/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0056', 'Bean', 'Urd Bean Leaf Crinkle Virus', 'Urd Bean Leaf Crinkle Virus', 'Viral', 'Low', 'Mid', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/BEA-0056/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BEA-0057', 'Bean', 'Whiteflies', 'Bemisia tabaci', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BEA-0057/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BIT-0058', 'Bitter', 'Gourd Aphids', 'Aphis gossypii', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/BIT-0058/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BIT-0059', 'Bitter', 'Gourd Downy Mildew Of Cucurbits', NULL, 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BIT-0059/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BIT-0060', 'Bitter', 'Gourd Gummy Stem Blight Of Cucurbits', NULL, 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BIT-0060/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BIT-0061', 'Bitter', 'Gourd Hadda Beetle', 'Epilachna vigintioctopunctata', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/BIT-0061/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BIT-0062', 'Bitter', 'Gourd Leaf-Footed Bugs', NULL, 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/BIT-0062/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BIT-0063', 'Bitter', 'Gourd Powdery Mildew', 'Erysiphe cichoracearum', 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/BIT-0063/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BIT-0064', 'Bitter', 'Gourd Pumpkin Caterpillar', 'Diaphania indica', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/BIT-0064/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('BIT-0065', 'Bitter', 'Gourd Tobacco Caterpillar', 'Spodoptera litura', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/BIT-0065/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAB-0066', 'Cabbage', 'Alternaria Spot', 'Alternaria brassicae', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CAB-0066/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAB-0067', 'Cabbage', 'Aphids', 'Brevicoryne brassicae', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CAB-0067/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAB-0068', 'Cabbage', 'Bacterial Soft Rot Of Cabbage', NULL, 'Bacterial', 'Low', 'Early', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/CAB-0068/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAB-0069', 'Cabbage', 'Bagrada Bug', NULL, 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CAB-0069/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAB-0070', 'Cabbage', 'Black Rot', 'Xanthomonas campestris pv. campestris', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CAB-0070/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAB-0071', 'Cabbage', 'Cabbage White Butterfly', 'Pieris brassicae', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CAB-0071/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAB-0072', 'Cabbage', 'Calcium Deficiency', NULL, 'Nutrient/Physiological', 'Medium', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Rabi', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/CAB-0072/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAB-0073', 'Cabbage', 'Downy Mildew', 'Peronospora parasitica', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CAB-0073/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAB-0074', 'Cabbage', 'Great Southern White', 'Ascia monuste', 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CAB-0074/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAB-0075', 'Cabbage', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CAB-0075/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAB-0076', 'Cabbage', 'Leaf Variegation', NULL, 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CAB-0076/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAB-0077', 'Cabbage', 'Stem Rot', 'Sclerotinia sclerotiorum', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CAB-0077/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAB-0078', 'Cabbage', 'Tobacco Caterpillar', 'Spodoptera litura', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CAB-0078/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAB-0079', 'Cabbage', 'Wet Rot', NULL, 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CAB-0079/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAN-0080', 'Canola', 'Black Leg', 'Plenodomus lingam', 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CAN-0080/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAN-0081', 'Canola', 'Rape Beetle', 'Brassicogethes aeneus', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CAN-0081/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAU-0082', 'Cauliflower', 'Alternaria Spot', 'Alternaria brassicae', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CAU-0082/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAU-0083', 'Cauliflower', 'Aphids', 'Brevicoryne brassicae', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CAU-0083/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAU-0084', 'Cauliflower', 'Bacterial Soft Rot Of Cabbage', NULL, 'Bacterial', 'Medium', 'All', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/CAU-0084/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAU-0085', 'Cauliflower', 'Bagrada Bug', NULL, 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CAU-0085/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAU-0086', 'Cauliflower', 'Black Rot', 'Xanthomonas campestris pv. campestris', 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CAU-0086/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAU-0087', 'Cauliflower', 'Cabbage White Butterfly', 'Pieris brassicae', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CAU-0087/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAU-0088', 'Cauliflower', 'Great Southern White', 'Ascia monuste', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CAU-0088/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAU-0089', 'Cauliflower', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CAU-0089/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAU-0090', 'Cauliflower', 'Tobacco Caterpillar', 'Spodoptera litura', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CAU-0090/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CAU-0091', 'Cauliflower', 'Wet Rot', NULL, 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CAU-0091/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CHE-0092', 'Cherry', 'Aphids', 'Myzus cerasi', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CHE-0092/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CHE-0093', 'Cherry', 'Shothole Disease', 'Wilsonomyces carpophilus', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CHE-0093/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CHI-0094', 'Chickpea', 'Ascochyta Blight', 'Didymella rabiei', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CHI-0094/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CHI-0095', 'Chickpea', 'Chickpea Rust', 'Uromyces ciceris-arietini', 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CHI-0095/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CHI-0096', 'Chickpea', 'Fusarium Wilt', 'Fusarium oxysporum f.sp. ciceri', 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CHI-0096/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CHI-0097', 'Chickpea', 'Helicoverpa Caterpillar', 'Helicoverpa armigera', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CHI-0097/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CHI-0098', 'Chickpea', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CHI-0098/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CHI-0099', 'Chickpea', 'Nitrogen Deficiency', 'Nutritional (N)', 'Nutrient/Physiological', 'Medium', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Rabi', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/CHI-0099/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CHI-0100', 'Chickpea', 'Phosphorus Deficiency', 'Nutritional (P)', 'Nutrient/Physiological', 'Medium', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Rabi', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/CHI-0100/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CHI-0101', 'Chickpea', 'Potassium Deficiency', 'Nutritional (K)', 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Rabi', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/CHI-0101/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0102', 'Citrus', 'Algal Leaf Spot', 'Cephaleuros virescens', 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CIT-0102/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0103', 'Citrus', 'Anthracnose Of Citrus', NULL, 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CIT-0103/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0104', 'Citrus', 'Black Citrus Aphid', 'Toxoptera aurantii', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CIT-0104/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0105', 'Citrus', 'Black Parlatoria Scale', NULL, 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CIT-0105/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0106', 'Citrus', 'Broad Nosed Weevils', 'Myllocerus sp.', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CIT-0106/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0107', 'Citrus', 'Citrus Blackfly', 'Aleurocanthus woglumi', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CIT-0107/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0108', 'Citrus', 'Citrus Butterfly', 'Papilio demoleus', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CIT-0108/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0109', 'Citrus', 'Citrus Canker', 'Xanthomonas citri pv. citri', 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CIT-0109/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0110', 'Citrus', 'Citrus Greening Disease', NULL, 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CIT-0110/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0111', 'Citrus', 'Citrus Hindu Mite', 'Schizotetranychus hindustanicus', 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CIT-0111/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0112', 'Citrus', 'Citrus Leaf Miner', 'Phyllocnistis citrella', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CIT-0112/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0113', 'Citrus', 'Citrus Leprosis', 'Citrus leprosis virus', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CIT-0113/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0114', 'Citrus', 'Citrus Psyllid', 'Diaphorina citri', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CIT-0114/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0115', 'Citrus', 'Citrus Rust Mite', 'Phyllocoptruta oleivora', 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CIT-0115/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0116', 'Citrus', 'Citrus Scab', 'Elsinoë fawcettii', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CIT-0116/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0117', 'Citrus', 'Citrus Snow Scale', 'Unaspis citri', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CIT-0117/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0118', 'Citrus', 'Citrus Thrips', 'Scirtothrips citri', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CIT-0118/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0119', 'Citrus', 'Citrus Yellow Mosaic Virus', 'CiYMV', 'Viral', 'High', 'Mid', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/CIT-0119/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0120', 'Citrus', 'Cottony Cushion Scale', 'Icerya purchasi', 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CIT-0120/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0121', 'Citrus', 'Fruit Cracking', 'Physiological', 'Nutrient/Physiological', 'High', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/CIT-0121/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0122', 'Citrus', 'Greasy Spot', 'Mycosphaerella citri', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CIT-0122/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0123', 'Citrus', 'Green And Blue Molds', 'Penicillium digitatum/P. italicum', 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CIT-0123/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0124', 'Citrus', 'Gummosis Of Citrus', NULL, 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CIT-0124/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0125', 'Citrus', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'Medium', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/CIT-0125/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0126', 'Citrus', 'Magnesium Deficiency', 'Nutritional (Mg)', 'Nutrient/Physiological', 'Low', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/CIT-0126/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0127', 'Citrus', 'Mealybug', 'Planococcus citri', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CIT-0127/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0128', 'Citrus', 'Nitrogen Deficiency', 'Nutritional (N)', 'Nutrient/Physiological', 'Low', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/CIT-0128/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0129', 'Citrus', 'Purple Mussel Scale', 'Lepidosaphes beckii', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CIT-0129/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0130', 'Citrus', 'Red Scale', 'Aonidiella aurantii', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CIT-0130/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0131', 'Citrus', 'Sooty Mold', 'Capnodium spp.', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CIT-0131/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0132', 'Citrus', 'White Mango Scale', 'Aulacaspis tubercularis', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CIT-0132/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CIT-0133', 'Citrus', 'Zinc Deficiency', 'Nutritional (Zn)', 'Nutrient/Physiological', 'Medium', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/CIT-0133/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COF-0134', 'Coffee', 'Brown Eye Spot', 'Mycosphaerella coffeicola', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COF-0134/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COF-0135', 'Coffee', 'Coffee Leaf Miner', 'Leucoptera spp.', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COF-0135/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COF-0136', 'Coffee', 'Rust Of Coffee', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COF-0136/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COF-0137', 'Coffee', 'Sooty Mold', 'Capnodium spp.', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COF-0137/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0138', 'Cotton', 'Alternaria Leaf Spot Of Cotton', NULL, 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0138/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0139', 'Cotton', 'Aphids', 'Aphis gossypii', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/COT-0139/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0140', 'Cotton', 'Boll Sprouting', 'Physiological', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0140/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0141', 'Cotton', 'Broad Nosed Weevils', 'Myllocerus sp.', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/COT-0141/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0142', 'Cotton', 'Corynespora Leaf Spot Of Cotton', NULL, 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0142/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0143', 'Cotton', 'Cotton Leaf Curl Virus', 'Cotton leaf curl virus', 'Viral', 'High', 'All', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Kharif', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0143/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0144', 'Cotton', 'Cotton Leafhopper Jassids', 'Amrasca biguttula', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/COT-0144/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0145', 'Cotton', 'Cotton Stem Weevil', 'Pempherulus affinis', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/COT-0145/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0146', 'Cotton', 'Dusty Cotton Stainer', 'Oxycarenus hyalinipennis', 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0146/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0147', 'Cotton', 'Flower Chafer', 'Oxycetonia versicolor', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0147/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0148', 'Cotton', 'Fungal Boll Rot Complex', 'Fusarium/Aspergillus/Phytophthora/Rhizopus/Diplodia', 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0148/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0149', 'Cotton', 'Fusarium Wilt', 'Fusarium oxysporum', 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0149/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0150', 'Cotton', 'Grey Mildew Of Cotton', NULL, 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0150/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0151', 'Cotton', 'Helicoverpa Caterpillar', 'Helicoverpa armigera', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/COT-0151/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0152', 'Cotton', 'Herbicide Bleach', 'Herbicide damage', 'Nutrient/Physiological', 'High', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/COT-0152/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0153', 'Cotton', 'Herbicide Burn', 'Herbicide damage', 'Nutrient/Physiological', 'Medium', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/COT-0153/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0154', 'Cotton', 'Herbicide Growth Damage', 'Herbicide damage', 'Nutrient/Physiological', 'Medium', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/COT-0154/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0155', 'Cotton', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/COT-0155/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0156', 'Cotton', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0156/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0157', 'Cotton', 'Leaf Reddening Of Cotton', NULL, 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0157/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0158', 'Cotton', 'Leaf Variegation', 'Genetic/Physiological', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0158/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0159', 'Cotton', 'Mealybug', 'Phenacoccus solenopsis', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/COT-0159/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0160', 'Cotton', 'Nitrogen Deficiency', 'Nutritional (N)', 'Nutrient/Physiological', 'Medium', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/COT-0160/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0161', 'Cotton', 'Parawilt', 'Physiological', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0161/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0162', 'Cotton', 'Phosphorus Deficiency', 'Nutritional (P)', 'Nutrient/Physiological', 'High', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/COT-0162/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0163', 'Cotton', 'Pink Bollworm', 'Pectinophora gossypiella', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/COT-0163/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0164', 'Cotton', 'Potassium Deficiency', 'Nutritional (K)', 'Nutrient/Physiological', 'High', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/COT-0164/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0165', 'Cotton', 'Red Cotton Bug', 'Dysdercus cingulatus', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/COT-0165/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0166', 'Cotton', 'Short Horned Grasshopper And Locust', 'Oxya intricata', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/COT-0166/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0167', 'Cotton', 'Sooty Mold', NULL, 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0167/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0168', 'Cotton', 'Spittlebugs', 'Cercopidae', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/COT-0168/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0169', 'Cotton', 'Thrips', 'Thrips tabaci', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/COT-0169/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0170', 'Cotton', 'Tobacco Caterpillar', 'Spodoptera litura', 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/COT-0170/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0171', 'Cotton', 'Tobacco Grasshopper', 'Atractomorpha crenulata', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/COT-0171/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0172', 'Cotton', 'Tobacco Streak Virus', 'Tobacco streak virus', 'Viral', 'High', 'All', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Kharif', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0172/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0173', 'Cotton', 'Verticillium Wilt', 'Verticillium spp.', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0173/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0174', 'Cotton', 'Whiteflies', 'Bemisia tabaci', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/COT-0174/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('COT-0175', 'Cotton', 'Zinc Deficiency', 'Nutritional (Zn)', 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/COT-0175/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0176', 'Cucumber', 'Angular Leaf Spot Disease', NULL, 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CUC-0176/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0177', 'Cucumber', 'Anthracnose Of Cucurbits', NULL, 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CUC-0177/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0178', 'Cucumber', 'Aphids', 'Aphis gossypii', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CUC-0178/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0179', 'Cucumber', 'Bacterial Wilt Of Cucurbits', NULL, 'Bacterial', 'Low', 'All', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/CUC-0179/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0180', 'Cucumber', 'Blister Beetle', 'Mylabris pustulata', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CUC-0180/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0181', 'Cucumber', 'Cucumber Green Mottle Virus', 'Cucumber green mottle mosaic virus', 'Viral', 'Low', 'Early', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/CUC-0181/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0182', 'Cucumber', 'Cucumber Mosaic Virus', 'Cucumber mosaic virus', 'Viral', 'High', 'Early', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/CUC-0182/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0183', 'Cucumber', 'Cucurbit Stink Bug', 'Coridius janus', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CUC-0183/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0184', 'Cucumber', 'Downy Mildew Of Cucurbits', NULL, 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CUC-0184/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0185', 'Cucumber', 'Gummy Stem Blight Of Cucurbits', NULL, 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CUC-0185/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0186', 'Cucumber', 'Herbicide Growth Damage', NULL, 'Nutrient/Physiological', 'Low', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/CUC-0186/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0187', 'Cucumber', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CUC-0187/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0188', 'Cucumber', 'Leaf Variegation', NULL, 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CUC-0188/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0189', 'Cucumber', 'Magnesium Deficiency', 'Nutritional (Mg)', 'Nutrient/Physiological', 'High', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/CUC-0189/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0190', 'Cucumber', 'Potassium Deficiency', 'Nutritional (K)', 'Nutrient/Physiological', 'Medium', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/CUC-0190/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0191', 'Cucumber', 'Powdery Mildew', 'Erysiphe cichoracearum', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CUC-0191/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0192', 'Cucumber', 'Pumpkin Caterpillar', 'Diaphania indica', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CUC-0192/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0193', 'Cucumber', 'Red Pumpkin Beetle', 'Aulacophora foveicollis', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CUC-0193/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0194', 'Cucumber', 'Spider Mites', 'Tetranychus urticae', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CUC-0194/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0195', 'Cucumber', 'Stem Rot', 'Sclerotinia sclerotiorum', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CUC-0195/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0196', 'Cucumber', 'Thrips', 'Thrips tabaci', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/CUC-0196/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUC-0197', 'Cucumber', 'Whiteflies', 'Bemisia tabaci', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CUC-0197/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('CUR-0198', 'Currant', 'Redcurrant Blister Aphi', 'Cryptomyzus ribis', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/CUR-0198/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0199', 'Eggplant', 'Aphids', 'Aphis gossypii', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0199/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0200', 'Eggplant', 'Bihar Hairy Caterpillar', 'Spilarctia obliqua', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0200/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0201', 'Eggplant', 'Blight Of Pepper', 'Phytophthora capsici', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/EGG-0201/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0202', 'Eggplant', 'Brinjal Shoot And Fruit Borer', 'Leucinodes orbonalis', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0202/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0203', 'Eggplant', 'Broad Nosed Weevils', 'Myllocerus sp.', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0203/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0204', 'Eggplant', 'Cercospora Leaf Spot Of Eggplant', NULL, 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/EGG-0204/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0205', 'Eggplant', 'Eggplant Lace Bug', 'Gargaphia solani', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0205/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0206', 'Eggplant', 'Eggplant Leaf Roller', 'Lineodes integra', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/EGG-0206/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0207', 'Eggplant', 'Flea Beetles', 'Chrysomelidae', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0207/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0208', 'Eggplant', 'Flower Chafer', NULL, 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/EGG-0208/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0209', 'Eggplant', 'Fruit Cracking', NULL, 'Nutrient/Physiological', 'Medium', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/EGG-0209/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0210', 'Eggplant', 'Hadda Beetle', NULL, 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0210/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0211', 'Eggplant', 'Hairy Caterpillars', NULL, 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0211/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0212', 'Eggplant', 'Hawk Moth', NULL, 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0212/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0213', 'Eggplant', 'Helicoverpa Caterpillar', 'Helicoverpa armigera', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0213/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0214', 'Eggplant', 'Herbicide Growth Damage', NULL, 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/EGG-0214/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0215', 'Eggplant', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'High', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/EGG-0215/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0216', 'Eggplant', 'Leaf Miner Flies', NULL, 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/EGG-0216/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0217', 'Eggplant', 'Leaf Variegation', NULL, 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/EGG-0217/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0218', 'Eggplant', 'Leafhoppers And Jassids', NULL, 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0218/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0219', 'Eggplant', 'Little Leaf Of Brinjal', 'Phytoplasma', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/EGG-0219/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0220', 'Eggplant', 'Magnesium Deficiency', 'Nutritional (Mg)', 'Nutrient/Physiological', 'High', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/EGG-0220/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0221', 'Eggplant', 'Mealybug', NULL, 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0221/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0222', 'Eggplant', 'Nitrogen Deficiency', 'Nutritional (N)', 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/EGG-0222/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0223', 'Eggplant', 'Phomopsis Blight', 'Diaporthe vexans', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/EGG-0223/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0224', 'Eggplant', 'Powdery Mildew', 'Erysiphe cichoracearum', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/EGG-0224/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0225', 'Eggplant', 'Red Cotton Bug', NULL, 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0225/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0226', 'Eggplant', 'Sooty Mold', NULL, 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/EGG-0226/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0227', 'Eggplant', 'Southern Green Stink Bug', 'Nezara viridula', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0227/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0228', 'Eggplant', 'Spider Mites', 'Tetranychus urticae', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0228/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0229', 'Eggplant', 'Thrips', 'Thrips tabaci', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0229/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0230', 'Eggplant', 'Tobacco Caterpillar', 'Spodoptera litura', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0230/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0231', 'Eggplant', 'Tobacco Grasshopper', 'Atractomorpha crenulata', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0231/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0232', 'Eggplant', 'Tobacco Mosaic Virus', 'Tobacco mosaic virus', 'Viral', 'Low', 'Mid', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/EGG-0232/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0233', 'Eggplant', 'Tomato Leaf Miner', 'Tuta absoluta', 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/EGG-0233/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0234', 'Eggplant', 'Tussock Moths', NULL, 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/EGG-0234/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0235', 'Eggplant', 'Verticillium Wilt', 'Verticillium dahliae', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/EGG-0235/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0236', 'Eggplant', 'Wet Rot', NULL, 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/EGG-0236/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('EGG-0237', 'Eggplant', 'Whiteflies', 'Bemisia tabaci', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/EGG-0237/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GIN-0238', 'Ginger', 'Fall Armyworm', 'Spodoptera frugiperda', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/GIN-0238/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GIN-0239', 'Ginger', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'Medium', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/GIN-0239/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GIN-0240', 'Ginger', 'Leaf Spot Of Ginger', NULL, 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GIN-0240/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GIN-0241', 'Ginger', 'Rhizome Rot', 'Pythium aphanidermatum', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GIN-0241/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0242', 'Gram', 'Anthracnose Of Blackgram', NULL, 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GRA-0242/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0243', 'Gram', 'Aphids', 'Aphis craccivora', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/GRA-0243/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0244', 'Gram', 'Cercospora Leaf Spot Of Legumes', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GRA-0244/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0245', 'Gram', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GRA-0245/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0246', 'Gram', 'Mungbean Yellow Mosaic Virus', 'Mungbean yellow mosaic virus', 'Viral', 'Low', 'Late', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Rabi', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/GRA-0246/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0247', 'Gram', 'Nitrogen Deficiency', 'Nutritional (N)', 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Rabi', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/GRA-0247/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0248', 'Gram', 'Powdery Mildew', 'Erysiphe polygoni', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GRA-0248/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0249', 'Gram', 'Thrips', 'Thrips palmi', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/GRA-0249/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0250', 'Gram', 'Tobacco Caterpiller', 'Spodoptera litura', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GRA-0250/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0251', 'Gram', 'Urd Bean Leaf Crinkle Virus', 'Urd Bean Leaf Crinkle Virus', 'Viral', 'Medium', 'All', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Rabi', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/GRA-0251/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0252', 'Grape', 'Anthracnose Of Grape', NULL, 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GRA-0252/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0253', 'Grape', 'Black Vine Thrips', 'Retithrips syriacus', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/GRA-0253/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0254', 'Grape', 'Downy Mildew Of Grape', NULL, 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GRA-0254/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0255', 'Grape', 'Esca', 'Togninia minima', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GRA-0255/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0256', 'Grape', 'Grape Blister Mite', 'Colomerus vitis', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/GRA-0256/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0257', 'Grape', 'Grape Rust', 'Phakopsora euvitis', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GRA-0257/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0258', 'Grape', 'Grapevine Phylloxera', 'Daktulosphaira vitifoliae', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GRA-0258/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0259', 'Grape', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'High', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/GRA-0259/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0260', 'Grape', 'Leafhopper Jassids', 'Amrasca', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/GRA-0260/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0261', 'Grape', 'Mealybug', 'Planococcus ficus', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/GRA-0261/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0262', 'Grape', 'Powdery Mildew Of Grape', NULL, 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GRA-0262/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GRA-0263', 'Grape', 'Thrips', 'Thysanoptera', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/GRA-0263/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GUA-0264', 'Guava', 'Canker Of Guava', NULL, 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GUA-0264/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GUA-0265', 'Guava', 'Hyaloderma Leaf Spot', 'Hyaloderma sp.', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GUA-0265/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GUA-0266', 'Guava', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'Medium', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/GUA-0266/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GUA-0267', 'Guava', 'Leafcutter Bees', 'Megachile sp.', 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GUA-0267/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GUA-0268', 'Guava', 'Mealybug', 'Planococcus citri', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/GUA-0268/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GUA-0269', 'Guava', 'Nitrogen Deficiency', 'Nutritional (N)', 'Nutrient/Physiological', 'High', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/GUA-0269/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GUA-0270', 'Guava', 'Phosphorus Deficiency', 'Nutritional (P)', 'Nutrient/Physiological', 'Low', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/GUA-0270/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GUA-0271', 'Guava', 'Pomegranate Fruit Borer', 'Deudorix isocrates', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/GUA-0271/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GUA-0272', 'Guava', 'Sooty Mold', 'Capnodium spp.', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GUA-0272/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('GUA-0273', 'Guava', 'Whiteflies', 'Bemisia tabaci', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/GUA-0273/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0274', 'Maize', 'Aphids', 'Rhopalosiphum maidis', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAI-0274/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0275', 'Maize', 'Bacterial Stalk Rot Of Maize', NULL, 'Bacterial', 'Low', 'All', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/MAI-0275/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0276', 'Maize', 'Banded Leaf And Sheath Blight', 'Rhizoctonia solani', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0276/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0277', 'Maize', 'Brown Spot Of Maize', NULL, 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0277/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0278', 'Maize', 'Common Rust Of Maize', NULL, 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0278/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0279', 'Maize', 'Cucumber Beetle', 'Diabrotica spp.', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAI-0279/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0280', 'Maize', 'Downy Mildew Of Maize', NULL, 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0280/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0281', 'Maize', 'Eyespot Of Maize', NULL, 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0281/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0282', 'Maize', 'Fall Armyworm', 'Spodoptera frugiperda', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAI-0282/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0283', 'Maize', 'Fusarium Ear Rot', 'Fusarium verticillioides', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0283/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0284', 'Maize', 'Goss Wilt', 'Clavibacter michiganensis', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0284/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0285', 'Maize', 'Grey Leaf Spot Of Maize', NULL, 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0285/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0286', 'Maize', 'Head Smut', 'Sphacelotheca reiliana', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0286/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0287', 'Maize', 'Holcus Leaf Spot', 'Pseudomonas syringae pv. syringae', 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0287/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0288', 'Maize', 'Leaf-Footed Bugs', 'Coreidae', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAI-0288/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0289', 'Maize', 'Leaf Variegation', 'Genetic/Physiological', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0289/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0290', 'Maize', 'Magnesium Deficiency', 'Nutritional (Mg)', 'Nutrient/Physiological', 'Medium', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/MAI-0290/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0291', 'Maize', 'Maize Leaf Streak Virus', 'Maize chlorotic mottle virus', 'Viral', 'High', 'Late', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Kharif', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0291/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0292', 'Maize', 'Maize Smut', 'Ustilago maydis', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0292/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0293', 'Maize', 'Nitrogen Deficiency', 'Nutritional (N)', 'Nutrient/Physiological', 'Low', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/MAI-0293/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0294', 'Maize', 'Northern Leaf Blight', 'Setosphaeria turcica', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0294/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0295', 'Maize', 'Phaeosphaeria Leaf Spot', 'Phaeosphaeria maydis', 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0295/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0296', 'Maize', 'Phosphorus Deficiency', 'Nutritional (P)', 'Nutrient/Physiological', 'Medium', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/MAI-0296/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0297', 'Maize', 'Potassium Deficiency', 'Nutritional (K)', 'Nutrient/Physiological', 'Low', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/MAI-0297/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0298', 'Maize', 'Rapid Growth Syndrome', 'Physiological', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0298/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0299', 'Maize', 'Short Horned Grasshopper And Locust', 'Oxya intricata & Locusta migratoria manilensis', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAI-0299/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0300', 'Maize', 'Southern Leaf Blight Of Maize', NULL, 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0300/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0301', 'Maize', 'Southern Rust Of Maize', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0301/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0302', 'Maize', 'Tar Spot', 'Phyllachora maydis', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAI-0302/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAI-0303', 'Maize', 'Thrips', 'Thysanoptera', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAI-0303/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0304', 'Mango', 'Algal Leaf Spot', 'Cephaleuros virescens', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAN-0304/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0305', 'Mango', 'Bacterial Black Spot Of Mango', NULL, 'Bacterial', 'Low', 'Mid', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/MAN-0305/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0306', 'Mango', 'Black Banded Disease', 'Peziotrichum corticola', 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAN-0306/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0307', 'Mango', 'Blue-Striped Nettle Grub', 'Parasa lepida', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAN-0307/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0308', 'Mango', 'Broad Nosed Weevils', 'Myllocerus sp.', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0308/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0309', 'Mango', 'Cashew Leafminer', 'Acrocercops syngramma', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAN-0309/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0310', 'Mango', 'Citrus Blackfly', 'Aleurocanthus woglumi', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0310/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0311', 'Mango', 'Cottony Cushion Scale', 'Icerya purchasi', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0311/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0312', 'Mango', 'Gummosis', 'Botryosphaeria dothidea', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAN-0312/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0313', 'Mango', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'High', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Summer', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/MAN-0313/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0314', 'Mango', 'Leaf-Cutting Weevil', 'Deporaus marginatus', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0314/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0315', 'Mango', 'Leaf Twisting Weevil', 'Apoderus tranquebaricus', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0315/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0316', 'Mango', 'Mango Hoppers', 'Idioscopus spp.', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0316/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0317', 'Mango', 'Mango Leaf Coating Mite', 'Cisaberoptus kenyae', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0317/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0318', 'Mango', 'Mango Leaf Webber', 'Orthaga euadrusalis', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0318/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0319', 'Mango', 'Mango Malformation', 'Fusarium mangiferae', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAN-0319/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0320', 'Mango', 'Mango Midge', 'Procontarinia mangiferae', 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAN-0320/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0321', 'Mango', 'Mealybug', 'Drosicha mangiferae', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0321/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0322', 'Mango', 'Potassium Deficiency', 'Nutritional (K)', 'Nutrient/Physiological', 'Medium', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Summer', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/MAN-0322/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0323', 'Mango', 'Powdery Mildew Of Mango', NULL, 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAN-0323/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0324', 'Mango', 'Slug Caterpillar Moth', 'Limacodidae sp.', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0324/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0325', 'Mango', 'Sooty Mold', 'Capnodium spp.', 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAN-0325/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0326', 'Mango', 'Tea Flush Worm', 'Cricula trifenestrata', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0326/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0327', 'Mango', 'Thrips', 'Thysanoptera', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0327/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0328', 'Mango', 'Tussock Moths', 'Lymantriinae', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0328/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0329', 'Mango', 'Weaver Ant', 'Oecophylla smaragdina', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAN-0329/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0330', 'Mango', 'White Mango Scale', 'Aulacaspis tubercularis', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0330/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0331', 'Mango', 'Whiteflies', 'Aleyrodidae', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAN-0331/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0332', 'Manioc', 'Brown Leaf Spot', 'Clarohilum henningsii', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MAN-0332/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0333', 'Manioc', 'Cassava Bacterial Blight', 'Xanthomonas axonopodis pv. manihotis', 'Bacterial', 'Low', 'All', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/MAN-0333/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0334', 'Manioc', 'Cassava Gall Midge', 'Jatrophobia brasiliensis', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0334/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0335', 'Manioc', 'Cassava Mosaic Disease', 'Cassava Mosaic Disease', 'Viral', 'Low', 'All', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/MAN-0335/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MAN-0336', 'Manioc', 'Spider Mites', 'Tetranychus urticae', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MAN-0336/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MEL-0337', 'Melon', 'Anthracnose Of Cucurbits', NULL, 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MEL-0337/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MEL-0338', 'Melon', 'Aphids', 'Aphis gossypii', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MEL-0338/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MEL-0339', 'Melon', 'Blossom End Rot', 'Physiological (Ca)', 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MEL-0339/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MEL-0340', 'Melon', 'Cottony Leak', NULL, 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MEL-0340/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MEL-0341', 'Melon', 'Cucumber Mosaic Virus', 'Cucumber mosaic virus', 'Viral', 'Medium', 'Early', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Summer', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/MEL-0341/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MEL-0342', 'Melon', 'Downy Mildew Of Cucurbits', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MEL-0342/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MEL-0343', 'Melon', 'Fruit Cracking', NULL, 'Nutrient/Physiological', 'Low', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Summer', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/MEL-0343/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MEL-0344', 'Melon', 'Gummy Stem Blight Of Cucurbits', NULL, 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MEL-0344/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MEL-0345', 'Melon', 'Hadda Beetle', 'Epilachna vigintioctopunctata', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MEL-0345/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MEL-0346', 'Melon', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MEL-0346/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MEL-0347', 'Melon', 'Leaf Variegation', NULL, 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MEL-0347/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MEL-0348', 'Melon', 'Mediterranean Brocade Moth', 'Spodoptera littoralis', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MEL-0348/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MEL-0349', 'Melon', 'Powdery Mildew', 'Podosphaera xanthii', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MEL-0349/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MEL-0350', 'Melon', 'Pumpkin Caterpillar', 'Diaphania indica', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MEL-0350/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MEL-0351', 'Melon', 'Red Pumpkin Beetle', 'Aulacophora foveicollis', 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MEL-0351/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MIL-0352', 'Millet', 'Blast Of Millets', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MIL-0352/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MIL-0353', 'Millet', 'Downy Mildew Of Millet', NULL, 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MIL-0353/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MIL-0354', 'Millet', 'Hairy Caterpillars', 'Euproctis sp.', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MIL-0354/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MIL-0355', 'Millet', 'Millet Rust', 'Puccinia substriata', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MIL-0355/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MIL-0356', 'Millet', 'Pearl Millet Smut', 'Moesziomyces bullatus', 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/MIL-0356/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('MIL-0357', 'Millet', 'Southern Green Stink Bug', 'Nezara viridula', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/MIL-0357/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0358', 'Okra', 'Alternaria Brown Spot', 'Alternaria alternata', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/OKR-0358/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0359', 'Okra', 'Aphids', 'Aphis gossypii', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OKR-0359/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0360', 'Okra', 'Bhendi Yellow Vein Mosaic Virus', 'Bhendi yellow vein mosaic virus', 'Viral', 'Low', 'All', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Summer', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/OKR-0360/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0361', 'Okra', 'Blister Beetle', 'Mylabris pustulata', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OKR-0361/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0362', 'Okra', 'Broad Nosed Weevils', 'Myllocerus sp.', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OKR-0362/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0363', 'Okra', 'Cercospora Leaf Spot Of Okra', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/OKR-0363/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0364', 'Okra', 'Dusty Cotton Stainer', NULL, 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/OKR-0364/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0365', 'Okra', 'Flea Beetles', 'Chrysomelidae', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OKR-0365/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0366', 'Okra', 'Helicoverpa Caterpillar', 'Helicoverpa armigera', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OKR-0366/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0367', 'Okra', 'Herbicide Growth Damage', NULL, 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Summer', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/OKR-0367/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0368', 'Okra', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Summer', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/OKR-0368/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0369', 'Okra', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/OKR-0369/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0370', 'Okra', 'Leaf Variegation', NULL, 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/OKR-0370/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0371', 'Okra', 'Leafhopper Jassids', NULL, 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OKR-0371/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0372', 'Okra', 'Mealybug', NULL, 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OKR-0372/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0373', 'Okra', 'Nitrogen Deficiency', 'Nutritional (N)', 'Nutrient/Physiological', 'Low', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Summer', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/OKR-0373/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0374', 'Okra', 'Powdery Mildew', 'Erysiphe cichoracearum', 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/OKR-0374/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0375', 'Okra', 'Red Cotton Bug', NULL, 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OKR-0375/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0376', 'Okra', 'Spider Mites', 'Tetranychus urticae', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OKR-0376/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0377', 'Okra', 'Spotted Bollworm', 'Earias vittella', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/OKR-0377/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0378', 'Okra', 'Tobacco Caterpillar', 'Spodoptera litura', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OKR-0378/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0379', 'Okra', 'Transverse Moth', NULL, 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Summer', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OKR-0379/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OKR-0380', 'Okra', 'Wet Rot', NULL, 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Summer', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/OKR-0380/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OLI-0381', 'Olive', 'Black Scale', 'Saissetia oleae', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OLI-0381/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OLI-0382', 'Olive', 'Curculio Weevil', 'Otiorhynchus cribricollis', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OLI-0382/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OLI-0383', 'Olive', 'Jasmine Moth', 'Palpita vitrealis', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OLI-0383/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OLI-0384', 'Olive', 'Neofabraea Leaf Spot', 'Neofabraea spp.', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/OLI-0384/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OLI-0385', 'Olive', 'Olive Bark Beetle', 'Phloeotribus scarabaeoides', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OLI-0385/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OLI-0386', 'Olive', 'Olive Bud Mite', 'Oxycenus maxwelli', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OLI-0386/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OLI-0387', 'Olive', 'Olive Fruit Fly', 'Bactrocera oleae', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OLI-0387/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OLI-0388', 'Olive', 'Olive Knot', 'Pseudomonas savastanoi pv. savastanoi', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/OLI-0388/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OLI-0389', 'Olive', 'Olive Lace Bug', 'Froggattia olivinia', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OLI-0389/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OLI-0390', 'Olive', 'Olive Leaf Spot', 'Venturia oleagina', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/OLI-0390/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OLI-0391', 'Olive', 'Olive Moth', 'Prays oleae', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OLI-0391/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OLI-0392', 'Olive', 'Olive Psyllid', 'Euphyllura olivina', 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OLI-0392/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('OLI-0393', 'Olive', 'Olive Scale', 'Parlatoria oleae', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/OLI-0393/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('ONI-0394', 'Onion', 'Aphids', 'Myzus persicae', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/ONI-0394/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('ONI-0395', 'Onion', 'Botrytis Leaf Blight', 'Botryotinia squamosa', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/ONI-0395/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('ONI-0396', 'Onion', 'Downy Mildew', 'Peronospora destructor', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/ONI-0396/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('ONI-0397', 'Onion', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/ONI-0397/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('ONI-0398', 'Onion', 'Leek Rust', NULL, 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/ONI-0398/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('ONI-0399', 'Onion', 'Stemphylium Leaf Blight Of Onion', NULL, 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/ONI-0399/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('ONI-0400', 'Onion', 'Thrips', 'Thrips tabaci', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/ONI-0400/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PAP-0401', 'Papaya', 'Anthracnose Of Papaya And Mango', NULL, 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PAP-0401/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PAP-0402', 'Papaya', 'Black Spot Disease Of Papaya', NULL, 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PAP-0402/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PAP-0403', 'Papaya', 'Broad Nosed Weevils', 'Myllocerus sp.', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PAP-0403/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PAP-0404', 'Papaya', 'Hairy Caterpillars', 'Euproctis sp.', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PAP-0404/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PAP-0405', 'Papaya', 'Leaf Variegation', NULL, 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PAP-0405/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PAP-0406', 'Papaya', 'Magnesium Deficiency', 'Nutritional (Mg)', 'Nutrient/Physiological', 'Low', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/PAP-0406/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PAP-0407', 'Papaya', 'Mealybug', 'Paracoccus marginatus', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PAP-0407/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PAP-0408', 'Papaya', 'Papaya Fruit Fly', 'Toxotrypana curvida', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PAP-0408/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PAP-0409', 'Papaya', 'Papaya Leaf Curl Virus', 'Papaya Leaf Curl Virus', 'Viral', 'High', 'All', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/PAP-0409/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PAP-0410', 'Papaya', 'Papaya Mosaic Virus', 'Papaya mosaic virus', 'Viral', 'High', 'All', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/PAP-0410/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PAP-0411', 'Papaya', 'Phytophthora Crown And Root Rot', 'Phytophthora spp.', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PAP-0411/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PAP-0412', 'Papaya', 'Potassium Deficiency', 'Nutritional (K)', 'Nutrient/Physiological', 'Low', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/PAP-0412/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PAP-0413', 'Papaya', 'Powdery Mildew Of Papaya', NULL, 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PAP-0413/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PAP-0414', 'Papaya', 'Ring Spot Virus', NULL, 'Viral', 'High', 'All', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/PAP-0414/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0415', 'Pea', 'Aphids', 'Acyrthosiphon pisum', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEA-0415/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0416', 'Pea', 'Ascochyta Blight', 'Didymella rabiei', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0416/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0417', 'Pea', 'Botrytis Blight', 'Botrytis cinerea', 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0417/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0418', 'Pea', 'Frost Damage', NULL, 'Nutrient/Physiological', 'High', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Rabi', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/PEA-0418/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0419', 'Pea', 'Helicoverpa Caterpillar', 'Helicoverpa armigera', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEA-0419/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0420', 'Pea', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'High', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Rabi', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/PEA-0420/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0421', 'Pea', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0421/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0422', 'Pea', 'Pea Rust', 'Uromyces pisi', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0422/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0423', 'Pea', 'Powdery Mildew', 'Erysiphe pisi', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0423/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0424', 'Peach', 'Aphids', 'Myzus persicae', 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEA-0424/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0425', 'Peach', 'Peach Leaf Curl', 'Taphrina deformans', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0425/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0426', 'Peach', 'Plum Rust', 'Tranzschelia pruni-spinosae', 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0426/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0427', 'Peach', 'Shothole Disease', 'Wilsonomyces carpophilus', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0427/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0428', 'Peanut', 'Alternaria Leaf Spot Peanut', NULL, 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0428/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0429', 'Peanut', 'Aphids', 'Aphis craccivora', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEA-0429/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0430', 'Peanut', 'Broad Nosed Weevils', 'Myllocerus sp.', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEA-0430/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0431', 'Peanut', 'Foot And Collar Rot', 'Aspergillus niger', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0431/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0432', 'Peanut', 'Groundnut Bud Necrosis Virus', 'Groundnut bud necrosis virus', 'Viral', 'Medium', 'Early', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Kharif', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0432/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0433', 'Peanut', 'Groundnut Chlorotic Fan-Spot Virus', 'GCFSV', 'Viral', 'High', 'All', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Kharif', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0433/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0434', 'Peanut', 'Groundnut Leaf Miner', 'Aproaerema modicella', 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0434/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0435', 'Peanut', 'Helicoverpa Caterpillar', 'Helicoverpa armigera', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEA-0435/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0436', 'Peanut', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/PEA-0436/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0437', 'Peanut', 'Late And Early Leaf Spot', 'Cercospora arachidicola/C. personata', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0437/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0438', 'Peanut', 'Leaf Variegation', 'Genetic', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0438/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0439', 'Peanut', 'Leafhopper Jassids', 'Amrasca', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEA-0439/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0440', 'Peanut', 'Manganese Deficiency', 'Nutritional (Mn)', 'Nutrient/Physiological', 'Medium', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/PEA-0440/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0441', 'Peanut', 'Nitrogen Deficiency', 'Nutritional (N)', 'Nutrient/Physiological', 'Low', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/PEA-0441/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0442', 'Peanut', 'Peanut Rust', 'Puccinia arachidis', 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0442/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0443', 'Peanut', 'Pepper Spot And Scorch', 'Leptosphaerulina arachidicola', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0443/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0444', 'Peanut', 'Phyllosticta Leaf Spot', 'Nothophoma arachidis-hypogaeae', 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0444/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0445', 'Peanut', 'Potassium Deficiency', 'Nutritional (K)', 'Nutrient/Physiological', 'Medium', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/PEA-0445/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0446', 'Peanut', 'Spider Mites', 'Tetranychus urticae', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEA-0446/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0447', 'Peanut', 'Thrips', 'Thrips palmi', 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEA-0447/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0448', 'Peanut', 'Tobacco Caterpillar', 'Spodoptera litura', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEA-0448/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEA-0449', 'Pear', 'European Pear Rust', 'Gymnosporangium sabinae', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEA-0449/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0450', 'Pepper', 'Alfalfa Mosaic Virus', 'Alfalfa mosaic virus', 'Viral', 'Low', 'Mid', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/PEP-0450/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0451', 'Pepper', 'Anthracnose Of Pepper', NULL, 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEP-0451/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0452', 'Pepper', 'Aphids', 'Aphis gossypii', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEP-0452/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0453', 'Pepper', 'Bacterial Spot Of Pepper', NULL, 'Bacterial', 'Medium', 'Late', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/PEP-0453/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0454', 'Pepper', 'Blight Of Pepper', NULL, 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEP-0454/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0455', 'Pepper', 'Blossom End Rot', 'Physiological (Ca)', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEP-0455/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0456', 'Pepper', 'Broad Mite', NULL, 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEP-0456/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0457', 'Pepper', 'Chilli Cercospora Leaf Spot', 'Cercospora capsici', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEP-0457/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0458', 'Pepper', 'Chilli Leaf Curl Virus', 'Chilli leaf curl virus', 'Viral', 'Low', 'Late', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/PEP-0458/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0459', 'Pepper', 'Chilli Thrips', 'Scirtothrips dorsalis', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEP-0459/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0460', 'Pepper', 'Cucumber Mosaic Virus Of Pepper', 'Cucumber mosaic virus', 'Viral', 'High', 'Mid', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/PEP-0460/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0461', 'Pepper', 'Fusarium Wilt', 'Fusarium oxysporum', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEP-0461/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0462', 'Pepper', 'Hairy Caterpillars', NULL, 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEP-0462/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0463', 'Pepper', 'Helicoverpa Caterpillar', 'Helicoverpa armigera', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEP-0463/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0464', 'Pepper', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/PEP-0464/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0465', 'Pepper', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEP-0465/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0466', 'Pepper', 'Leaf Variegation', NULL, 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEP-0466/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0467', 'Pepper', 'Magnesium Deficiency', 'Nutritional (Mg)', 'Nutrient/Physiological', 'Low', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/PEP-0467/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0468', 'Pepper', 'Mealybug', NULL, 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEP-0468/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0469', 'Pepper', 'Nitrogen Deficiency', 'Nutritional (N)', 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/PEP-0469/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0470', 'Pepper', 'Powdery Mildew Of Pepper', NULL, 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEP-0470/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0471', 'Pepper', 'Red Cotton Bug', NULL, 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEP-0471/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0472', 'Pepper', 'Sooty Mold', NULL, 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEP-0472/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0473', 'Pepper', 'Southern Green Stink Bug', 'Nezara viridula', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEP-0473/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0474', 'Pepper', 'Spider Mites', 'Tetranychus urticae', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEP-0474/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0475', 'Pepper', 'Sunburn', 'Physiological', 'Nutrient/Physiological', 'Low', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/PEP-0475/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0476', 'Pepper', 'Thrips', 'Thrips tabaci', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEP-0476/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0477', 'Pepper', 'Tobacco Caterpillar', 'Spodoptera litura', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PEP-0477/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0478', 'Pepper', 'Tomato Spotted Wilt Virus', 'Tomato spotted wilt virus', 'Viral', 'High', 'All', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/PEP-0478/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0479', 'Pepper', 'Wet Rot', NULL, 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEP-0479/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PEP-0480', 'Pepper', 'Whiteflies', 'Bemisia tabaci', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PEP-0480/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0481', 'Pigeonpea', 'Aphids', 'Aphis craccivora', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0481/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0482', 'Pigeonpea', 'Blister Beetle', 'Mylabris pustulata', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0482/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0483', 'Pigeonpea', 'Broad Nosed Weevils', 'Myllocerus sp.', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0483/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0484', 'Pigeonpea', 'Cercospora Leaf Spot Of Legumes', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PIG-0484/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0485', 'Pigeonpea', 'Cowbugs', 'Membracidae', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0485/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0486', 'Pigeonpea', 'Fusarium Wilt', 'Fusarium udum', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PIG-0486/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0487', 'Pigeonpea', 'Gram Pod Borer', 'Helicoverpa armigera', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0487/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0488', 'Pigeonpea', 'Hairy Caterpillars', 'Euproctis sp.', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0488/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0489', 'Pigeonpea', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'Low', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/PIG-0489/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0490', 'Pigeonpea', 'Kudzu Bug', 'Megacopta cribraria', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0490/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0491', 'Pigeonpea', 'Leaf-Footed Bugs', 'Coreidae', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0491/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0492', 'Pigeonpea', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PIG-0492/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0493', 'Pigeonpea', 'Leaf Webber', 'Eucosma critica', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0493/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0494', 'Pigeonpea', 'Mealybug', 'Phenacoccus solenopsis', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0494/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0495', 'Pigeonpea', 'Mungbean Yellow Mosaic Virus', 'Mungbean yellow mosaic virus', 'Viral', 'High', 'Mid', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Kharif', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/PIG-0495/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0496', 'Pigeonpea', 'Phyllosticta Leaf Spot Of Pigeonpea', NULL, 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PIG-0496/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0497', 'Pigeonpea', 'Pod Bug', 'Clavigralla gibbosa', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0497/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0498', 'Pigeonpea', 'Pod Fly', 'Melanagromyza obtusa', 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0498/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0499', 'Pigeonpea', 'Southern Green Stink Bug', 'Nezara viridula', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0499/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0500', 'Pigeonpea', 'Spider Mites', 'Tetranychus urticae', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0500/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0501', 'Pigeonpea', 'Spittlebugs', 'Cercopidae', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0501/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0502', 'Pigeonpea', 'Stem Rot Of Pigeonpea', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PIG-0502/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0503', 'Pigeonpea', 'Sterility Mosaic Virus', 'Pigeonpea sterility mosaic virus', 'Viral', 'High', 'Late', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Kharif', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/PIG-0503/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0504', 'Pigeonpea', 'Thrips', 'Thrips palmi', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0504/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0505', 'Pigeonpea', 'Tobacco Caterpillar', 'Spodoptera litura', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0505/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0506', 'Pigeonpea', 'Tussock Moths', 'Lymantriinae', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIG-0506/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIG-0507', 'Pigeonpea', 'Wet Rot', 'Choanephora cucurbitarum', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PIG-0507/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIS-0508', 'Pistachio', 'Alternaria Late Blight', 'Alternaria alternata', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PIS-0508/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIS-0509', 'Pistachio', 'Leaf Spot Of Pistachio', NULL, 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PIS-0509/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PIS-0510', 'Pistachio', 'Pistachio Beetle', 'Chaetoptelius vestitus', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PIS-0510/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POM-0511', 'Pomegranate', 'Anthracnose Of Pomegranate', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/POM-0511/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POM-0512', 'Pomegranate', 'Aphids', 'Aphis spp.', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/POM-0512/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POM-0513', 'Pomegranate', 'Bacterial Blight Of Pomegranate', NULL, 'Bacterial', 'Low', 'All', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/POM-0513/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POM-0514', 'Pomegranate', 'Castor Semilooper', 'Achaea janata', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/POM-0514/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POM-0515', 'Pomegranate', 'Cercospora Fruit And Leaf Spot', 'Pseudocercospora punicae', 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/POM-0515/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POM-0516', 'Pomegranate', 'Fruit Cracking', 'Physiological', 'Nutrient/Physiological', 'Low', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/POM-0516/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POM-0517', 'Pomegranate', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'High', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/POM-0517/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POM-0518', 'Pomegranate', 'Magnesium Deficiency', 'Nutritional (Mg)', 'Nutrient/Physiological', 'Medium', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/POM-0518/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POM-0519', 'Pomegranate', 'Mealybug', 'Planococcus citri', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/POM-0519/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POM-0520', 'Pomegranate', 'Pomegranate Fruit Borer', 'Deudorix isocrates', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/POM-0520/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POM-0521', 'Pomegranate', 'Scab Of Pomegranate', NULL, 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/POM-0521/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POM-0522', 'Pomegranate', 'Sunburn', 'Physiological', 'Nutrient/Physiological', 'Low', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/POM-0522/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POM-0523', 'Pomegranate', 'Thrips', 'Thysanoptera', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/POM-0523/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0524', 'Potato', 'Alfalfa Mosaic Virus', NULL, 'Viral', 'High', 'Late', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Rabi', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/POT-0524/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0525', 'Potato', 'Alternaria Brown Spot', NULL, 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/POT-0525/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0526', 'Potato', 'Aphids', 'Aphis gossypii', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/POT-0526/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0527', 'Potato', 'Bacterial Wilt', 'Ralstonia solanacearum', 'Bacterial', 'Low', 'Mid', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/POT-0527/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0528', 'Potato', 'Black Scurf', 'Rhizoctonia solani', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/POT-0528/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0529', 'Potato', 'Botrytis Blight', 'Botrytis cinerea', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/POT-0529/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0530', 'Potato', 'Early Blight', 'Alternaria solani', 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/POT-0530/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0531', 'Potato', 'Flea Beetles', 'Chrysomelidae', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/POT-0531/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0532', 'Potato', 'Helicoverpa Caterpillar', 'Helicoverpa armigera', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/POT-0532/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0533', 'Potato', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'Low', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Rabi', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/POT-0533/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0534', 'Potato', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/POT-0534/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0535', 'Potato', 'Leafhopper Jassids', 'Amrasca', 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/POT-0535/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0536', 'Potato', 'Potassium Deficiency', 'Nutritional (K)', 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Rabi', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/POT-0536/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0537', 'Potato', 'Potato Beetle', 'Leptinotarsa decemlineata', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/POT-0537/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0538', 'Potato', 'Late Blight', 'Phytophthora infestans', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/POT-0538/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0539', 'Potato', 'Leafroll Virus', 'Potato leafroll virus', 'Viral', 'Medium', 'Late', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Rabi', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/POT-0539/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0540', 'Potato', 'Potato Mop-Top Virus', 'Potato mop-top virus', 'Viral', 'Medium', 'Mid', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Rabi', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/POT-0540/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0541', 'Potato', 'Potato Scabs', 'Streptomyces scabies', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/POT-0541/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0542', 'Potato', 'Potato Tuber Moth', 'Phthorimaea operculella', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/POT-0542/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0543', 'Potato', 'Potato Y Virus', 'Potato virus Y', 'Viral', 'Medium', 'Early', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Rabi', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/POT-0543/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0544', 'Potato', 'Scarab Beetles / White Grubs', 'Scarabaeidae sp.', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/POT-0544/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0545', 'Potato', 'Silver Scurf', 'Helminthosporium solani', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/POT-0545/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0546', 'Potato', 'Southern Green Stink Bug', 'Nezara viridula', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/POT-0546/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0547', 'Potato', 'Tuber Discoloration', 'Physiological', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/POT-0547/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('POT-0548', 'Potato', 'Whiteflies', 'Aleyrodidae', 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/POT-0548/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PUM-0549', 'Pumpkin', 'Powdery Mildew', 'Erysiphe cichoracearum', 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/PUM-0549/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('PUM-0550', 'Pumpkin', 'Red Pumpkin Beetle', 'Aulacophora foveicollis', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/PUM-0550/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0551', 'Rice', 'Bacterial Blight Of Rice', NULL, 'Bacterial', 'Medium', 'All', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/RIC-0551/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0552', 'Rice', 'Bacterial Leaf Streak', 'Xanthomonas oryzae pv. oryzicola', 'Viral', 'High', 'Mid', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Kharif', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/RIC-0552/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0553', 'Rice', 'Bacterial Panicle Blight', NULL, 'Bacterial', 'Low', 'Early', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/RIC-0553/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0554', 'Rice', 'Blast Of Rice', NULL, 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/RIC-0554/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0555', 'Rice', 'Brown Planthopper', 'Nilaparvata lugens', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/RIC-0555/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0556', 'Rice', 'Brown Spot Of Rice', NULL, 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/RIC-0556/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0557', 'Rice', 'False Smut', 'Ustilaginoidea virens', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/RIC-0557/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0558', 'Rice', 'Golden Apple Snail', 'Pomacea canaliculata', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/RIC-0558/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0559', 'Rice', 'Green Paddy Leafhoppers', NULL, 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/RIC-0559/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0560', 'Rice', 'Greenhorned Caterpillars', 'Melanitis leda', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/RIC-0560/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0561', 'Rice', 'Leaf Scald Of Rice', NULL, 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/RIC-0561/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0562', 'Rice', 'Magnesium Deficiency', NULL, 'Nutrient/Physiological', 'High', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/RIC-0562/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0563', 'Rice', 'Mealybug', NULL, 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/RIC-0563/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0564', 'Rice', 'Narrow Brown Leaf Spot Of Rice', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/RIC-0564/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0565', 'Rice', 'Nitrogen Deficiency', NULL, 'Nutrient/Physiological', 'Medium', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/RIC-0565/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0566', 'Rice', 'Pod Bug', NULL, 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/RIC-0566/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0567', 'Rice', 'Potassium Deficiency', NULL, 'Nutrient/Physiological', 'Medium', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/RIC-0567/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0568', 'Rice', 'Rice Bug', 'Leptocorisa sp.', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/RIC-0568/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0569', 'Rice', 'Rice Ear-Cutting Caterpillar', 'Mythimna separata', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/RIC-0569/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0570', 'Rice', 'Rice Hispa', 'Dicladispa armigera', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/RIC-0570/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0571', 'Rice', 'Rice Leafroller', 'Cnaphalocrocis medinalis', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/RIC-0571/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0572', 'Rice', 'Rice Sheath Blight', NULL, 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/RIC-0572/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0573', 'Rice', 'Rice Skipper', 'Pelopidas mathias', 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/RIC-0573/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0574', 'Rice', 'Sheath Rot Of Rice', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/RIC-0574/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0575', 'Rice', 'Short Horned Grasshopper And Locust', 'Oxya intricata', 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/RIC-0575/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0576', 'Rice', 'Slender Rice Bug', NULL, 'Pest', 'Medium', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/RIC-0576/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0577', 'Rice', 'Southern Green Stink Bug', 'Nezara viridula', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/RIC-0577/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0578', 'Rice', 'Stackburn Of Rice', NULL, 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/RIC-0578/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0579', 'Rice', 'Stem Rot Of Rice', NULL, 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/RIC-0579/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0580', 'Rice', 'Thermal Stress', NULL, 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/RIC-0580/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0581', 'Rice', 'Tobacco Caterpillar', 'Spodoptera litura', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/RIC-0581/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0582', 'Rice', 'Tussock Moths', NULL, 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/RIC-0582/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0583', 'Rice', 'Yellow Stem Borer', 'Scirpophaga incertulas', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/RIC-0583/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('RIC-0584', 'Rice', 'Zinc Deficiency', NULL, 'Nutrient/Physiological', 'High', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/RIC-0584/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('ROS-0585', 'Rose', 'Aphids', 'Macrosiphum rosae', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/ROS-0585/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('ROS-0586', 'Rose', 'Black Spot', 'Diplocarpon rosae', 'Fungal', 'Low', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/ROS-0586/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOR-0587', 'Sorghum', 'Anthracnose Leaf Blight And Stalk Rot', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOR-0587/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOR-0588', 'Sorghum', 'Aphids', 'Melanaphis sacchari', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SOR-0588/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOR-0589', 'Sorghum', 'Ergot Of Sorghum', NULL, 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOR-0589/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOR-0590', 'Sorghum', 'Fall Armyworm', 'Spodoptera frugiperda', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SOR-0590/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOR-0591', 'Sorghum', 'Magnesium Deficiency', 'Nutritional (Mg)', 'Nutrient/Physiological', 'Low', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/SOR-0591/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0592', 'Soybean', 'Anthracnose Of Soybean', NULL, 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0592/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0593', 'Soybean', 'Bacterial Blight Of Soybean', NULL, 'Bacterial', 'Low', 'All', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/SOY-0593/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0594', 'Soybean', 'Bihar Hairy Caterpillar', 'Spilarctia obliqua', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SOY-0594/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0595', 'Soybean', 'Boron Deficiency', 'Nutritional (B)', 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/SOY-0595/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0596', 'Soybean', 'Broad Nosed Weevils', 'Myllocerus sp.', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SOY-0596/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0597', 'Soybean', 'Brown Spot Of Soybean', NULL, 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0597/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0598', 'Soybean', 'Castor Semilooper', 'Achaea janata', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0598/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0599', 'Soybean', 'Downy Mildew Of Soybean', NULL, 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0599/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0600', 'Soybean', 'Fall Armyworm', 'Spodoptera frugiperda', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SOY-0600/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0601', 'Soybean', 'Frogeye Leaf Spot', 'Cercospora sojina', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0601/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0602', 'Soybean', 'Helicoverpa Caterpillar', 'Helicoverpa armigera', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SOY-0602/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0603', 'Soybean', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'Medium', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/SOY-0603/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0604', 'Soybean', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0604/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0605', 'Soybean', 'Mungbean Yellow Mosaic Virus', NULL, 'Viral', 'Low', 'Mid', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'Kharif', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0605/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0606', 'Soybean', 'Pesticide Damage', 'Chemical injury', 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/SOY-0606/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0607', 'Soybean', 'Potassium Deficiency', 'Nutritional (K)', 'Nutrient/Physiological', 'High', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Kharif', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/SOY-0607/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0608', 'Soybean', 'Powdery Mildew Of Soybean', NULL, 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0608/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0609', 'Soybean', 'Purple Seed Stain Of Soybean', NULL, 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0609/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0610', 'Soybean', 'Rhizoctonia Aerial Blight', 'Rhizoctonia solani', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0610/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0611', 'Soybean', 'Southern Green Stink Bug', 'Nezara viridula', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SOY-0611/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0612', 'Soybean', 'Soybean Girdle Beetle', 'Obereopsis brevis', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SOY-0612/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0613', 'Soybean', 'Soybean Looper', 'Chrysodeixis includens', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0613/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0614', 'Soybean', 'Soybean Rust', 'Phakopsora pachyrhizi', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0614/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0615', 'Soybean', 'Spider Mites', 'Tetranychus urticae', 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SOY-0615/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0616', 'Soybean', 'Spittlebugs', 'Cercopidae', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SOY-0616/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0617', 'Soybean', 'Stem Blight Of Soybean', NULL, 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0617/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0618', 'Soybean', 'Stem Rot', 'Sclerotinia sclerotiorum', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0618/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0619', 'Soybean', 'Sudden Death Syndrome', 'Fusarium virguliforme', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0619/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0620', 'Soybean', 'Target Spot Of Soybean', NULL, 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SOY-0620/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0621', 'Soybean', 'Tobacco Caterpillar', 'Spodoptera litura', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SOY-0621/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SOY-0622', 'Soybean', 'Tussock Moths', 'Lymantriinae', 'Pest', 'Medium', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Kharif', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SOY-0622/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('STR-0623', 'Strawberry', 'Angular Leaf Spot Of Strawberry', NULL, 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/STR-0623/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('STR-0624', 'Strawberry', 'Anthracnose Of Strawberry', NULL, 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/STR-0624/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('STR-0625', 'Strawberry', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'Low', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/STR-0625/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('STR-0626', 'Strawberry', 'Nitrogen Deficiency', 'Nutritional (N)', 'Nutrient/Physiological', 'Medium', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/STR-0626/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0627', 'Sugarbeet', 'Cercospora Leaf Spot Of Beet', NULL, 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SUG-0627/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0628', 'Sugarcane', 'Bacterial Leaf Blight Of Sugarcane', NULL, 'Bacterial', 'Medium', 'Early', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/SUG-0628/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0629', 'Sugarcane', 'Banded Chlorosis', 'Physiological', 'Nutrient/Physiological', 'Medium', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/SUG-0629/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0630', 'Sugarcane', 'Boron Deficiency', 'Nutritional (B)', 'Nutrient/Physiological', 'Low', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/SUG-0630/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0631', 'Sugarcane', 'Eyespot Of Sugarcane', NULL, 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SUG-0631/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0632', 'Sugarcane', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'Medium', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/SUG-0632/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0633', 'Sugarcane', 'Leaf Scorch Of Sugarcane', NULL, 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SUG-0633/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0634', 'Sugarcane', 'Mealybug', 'Saccharicoccus sacchari', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SUG-0634/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0635', 'Sugarcane', 'Phosphorus Deficiency', 'Nutritional (P)', 'Nutrient/Physiological', 'Low', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/SUG-0635/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0636', 'Sugarcane', 'Pokkah Boeng', 'Fusarium moniliforme', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SUG-0636/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0637', 'Sugarcane', 'Potassium Deficiency', 'Nutritional (K)', 'Nutrient/Physiological', 'Low', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/SUG-0637/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0638', 'Sugarcane', 'Red Rot', 'Glomerella tucumanensis', 'Fungal', 'Medium', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SUG-0638/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0639', 'Sugarcane', 'Ring Spot Of Sugarcane', NULL, 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SUG-0639/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0640', 'Sugarcane', 'Smut Of Sugarcane', NULL, 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SUG-0640/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0641', 'Sugarcane', 'Sugarcane Borer', 'Diatraea saccharalis', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SUG-0641/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0642', 'Sugarcane', 'Sugarcane Common Rust', 'Puccinia melanocephala', 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SUG-0642/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0643', 'Sugarcane', 'Sugarcane Leaf Mite', 'Schizotetranychus andropogoni', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SUG-0643/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0644', 'Sugarcane', 'Sugarcane Mosaic Virus', 'Sugarcane mosaic virus', 'Viral', 'High', 'All', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/SUG-0644/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0645', 'Sugarcane', 'Sugarcane Pyrilla', 'Pyrilla perpusilla', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SUG-0645/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0646', 'Sugarcane', 'Sugarcane Scale', 'Melanaspis glomerata', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SUG-0646/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0647', 'Sugarcane', 'Sugarcane Yellow Leaf Virus', 'Sugarcane yellow leaf virus', 'Viral', 'High', 'Late', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/SUG-0647/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0648', 'Sugarcane', 'White Top Borer', 'Scirpophaga excerptalis', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SUG-0648/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0649', 'Sugarcane', 'Whiteflies', 'Aleyrodidae', 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/SUG-0649/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('SUG-0650', 'Sugarcane', 'Woolly Aphid', 'Eriosoma lanigerum', 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/SUG-0650/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0651', 'Tobacco', 'Aphids', 'Myzus persicae', 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TOB-0651/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0652', 'Tobacco', 'Bacterial Wilt', 'Ralstonia solanacearum', 'Bacterial', 'Low', 'Mid', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/TOB-0652/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0653', 'Tobacco', 'Blue Mould Of Tobacco', NULL, 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOB-0653/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0654', 'Tobacco', 'Cucumber Beetle', 'Diabrotica spp.', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TOB-0654/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0655', 'Tobacco', 'Flea Beetles', 'Chrysomelidae', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TOB-0655/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0656', 'Tobacco', 'Fungus Gnats', 'Bradysia matogrossensis', 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOB-0656/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0657', 'Tobacco', 'Potato Tuber Moth', 'Phthorimaea operculella', 'Pest', 'High', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TOB-0657/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0658', 'Tobacco', 'Potato Y Virus', 'Potato virus Y', 'Viral', 'High', 'Late', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/TOB-0658/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0659', 'Tobacco', 'Powdery Mildew', 'Erysiphe cichoracearum', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOB-0659/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0660', 'Tobacco', 'Spider Mites', 'Tetranychus urticae', 'Pest', 'High', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TOB-0660/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0661', 'Tobacco', 'Stem Rot', 'Sclerotinia sclerotiorum', 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOB-0661/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0662', 'Tobacco', 'Target Spot', 'Rhizoctonia solani', 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOB-0662/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0663', 'Tobacco', 'Tobacco Hornworm', 'Manduca sexta', 'Pest', 'High', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TOB-0663/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0664', 'Tobacco', 'Tobacco Leaf Curl Disease', NULL, 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOB-0664/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0665', 'Tobacco', 'Tobacco Mosaic Virus', 'Tobacco mosaic virus', 'Viral', 'High', 'All', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/TOB-0665/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0666', 'Tobacco', 'Tobacco Streak Virus', 'Tobacco streak virus', 'Viral', 'High', 'Mid', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/TOB-0666/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0667', 'Tobacco', 'Tospovirus', 'TSWV, GRSV and TCSV', 'Viral', 'Medium', 'All', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/TOB-0667/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0668', 'Tobacco', 'Whiteflies', 'Bemisia tabaci', 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOB-0668/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0669', 'Tobacco', 'Wildfire', 'Pseudomonas syringae pv. tabaci', 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOB-0669/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOB-0670', 'Tobacco', 'Yellow Stunt', 'Fusarium/Pythium/Rhizoctonia complex', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOB-0670/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0671', 'Tomato', 'Adventitious Roots', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0671/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0672', 'Tomato', 'Anthracnose', 'Colletotrichum spp.', 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0672/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0673', 'Tomato', 'Aphids', 'Aphis gossypii', 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TOM-0673/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0674', 'Tomato', 'Bacterial Canker Of Tomato', NULL, 'Bacterial', 'High', 'Late', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/TOM-0674/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0675', 'Tomato', 'Bacterial Spot And Speck Of Tomato', NULL, 'Bacterial', 'Medium', 'Early', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/TOM-0675/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0676', 'Tomato', 'Bacterial Wilt', 'Ralstonia solanacearum', 'Bacterial', 'Low', 'Late', 'Water-soaked lesions, bacterial ooze, wilting', 'Leaf, Stem, Fruit, Root', 'High humidity, rain, 25-35°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Copper soap 3ml/L – organic', '1. Streptomycin 0.01% – 10 days
2. Copper oxychloride 2.5g/L – 10 days
3. Kasugamycin 2ml/L – 7 days', '1. Bacillus subtilis – antibacterial
2. Pseudomonas fluorescens – preventive', 'Foliar/Soil', 'As per label', 'Avoid wet fields, sanitize tools', '["Q: Survive in soil? → Yes, years
Q: Cure? → Limited, prevention
Q: Copper effective? → Yes, preventive"]', 'disease-images/TOM-0676/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0677', 'Tomato', 'Blossom Drop', 'Physiological', 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/TOM-0677/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0678', 'Tomato', 'Blossom End Rot', 'Physiological (Ca deficiency)', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0678/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0679', 'Tomato', 'Botrytis Blight', 'Botrytis cinerea', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0679/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0680', 'Tomato', 'Early Blight', 'Alternaria solani', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0680/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0681', 'Tomato', 'Edema', 'Physiological', 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0681/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0682', 'Tomato', 'Fusarium Wilt', 'Fusarium oxysporum', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0682/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0683', 'Tomato', 'Glyphosate Injury', NULL, 'Nutrient/Physiological', 'High', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/TOM-0683/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0684', 'Tomato', 'Growth Cracks In Tomato', NULL, 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0684/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0685', 'Tomato', 'Helicoverpa Caterpillar', 'Helicoverpa armigera', 'Pest', 'Medium', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TOM-0685/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0686', 'Tomato', 'Herbicide Growth Damage', NULL, 'Nutrient/Physiological', 'Medium', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/TOM-0686/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0687', 'Tomato', 'Iron Deficiency', NULL, 'Nutrient/Physiological', 'High', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/TOM-0687/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0688', 'Tomato', 'Leaf-Footed Bugs', NULL, 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TOM-0688/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0689', 'Tomato', 'Leaf Curl In Tomato', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0689/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0690', 'Tomato', 'Leaf Miner Flies', NULL, 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0690/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0691', 'Tomato', 'Leaf Mold Of Tomato', NULL, 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0691/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0692', 'Tomato', 'Leaf Variegation', NULL, 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0692/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0693', 'Tomato', 'Magnesium Deficiency', NULL, 'Nutrient/Physiological', 'Low', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/TOM-0693/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0694', 'Tomato', 'Mealybug', NULL, 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TOM-0694/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0695', 'Tomato', 'Nitrogen Deficiency', NULL, 'Nutrient/Physiological', 'High', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/TOM-0695/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0696', 'Tomato', 'Oriental Fruit Fly', NULL, 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TOM-0696/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0697', 'Tomato', 'Phosphorus Deficiency', NULL, 'Nutrient/Physiological', 'Low', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/TOM-0697/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0698', 'Tomato', 'Potassium Deficiency', NULL, 'Nutrient/Physiological', 'Low', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/TOM-0698/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0699', 'Tomato', 'Powdery Mildew', 'Blumeria graminis', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0699/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0700', 'Tomato', 'Southern Green Stink Bug', 'Nezara viridula', 'Pest', 'Medium', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TOM-0700/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0701', 'Tomato', 'Spider Mites', 'Tetranychus urticae', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TOM-0701/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0702', 'Tomato', 'Sunburn', 'Physiological', 'Nutrient/Physiological', 'High', 'Late', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/TOM-0702/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0703', 'Tomato', 'Thrips', 'Thrips tabaci', 'Pest', 'Low', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TOM-0703/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0704', 'Tomato', 'Tobacco Caterpillar', 'Spodoptera litura', 'Pest', 'Low', 'Late', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TOM-0704/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0705', 'Tomato', 'Tobacco Mosaic Virus', NULL, 'Viral', 'High', 'Late', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0705/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0706', 'Tomato', 'Tomato Catface', 'Physiological', 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0706/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0707', 'Tomato', 'Tomato Late Blight', NULL, 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0707/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0708', 'Tomato', 'Tomato Leaf Miner', 'Tuta absoluta', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0708/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0709', 'Tomato', 'Tomato Russeting', 'Physiological', 'Fungal', 'Low', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0709/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0710', 'Tomato', 'Tomato Spotted Wilt Virus', 'Tomato spotted wilt virus', 'Viral', 'High', 'Late', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0710/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0711', 'Tomato', 'Tomato Yellow Leaf Curl Virus', 'Tomato yellow leaf curl virus', 'Viral', 'Medium', 'All', 'Leaf curling, mosaic patterns, stunting, yellowing', 'Leaf, Whole Plant', 'Vector activity, warm weather', 'All', '1. Neem oil 5ml/L – 7 days (vector)
2. Reflective mulch – deterrent
3. Sticky traps – monitoring', '1. Imidacloprid 0.3ml/L – 15 days (vector)
2. Thiamethoxam 0.2ml/L – 14 days
3. No direct cure', '1. Encarsia formosa – parasitoid
2. Beauveria bassiana – fungal
3. Verticillium lecanii – biocontrol', 'Foliar', 'As per label', 'No cure – focus on prevention', '["Q: Can be cured? → No, remove plants
Q: Vector control helps? → Yes, prevents spread
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0711/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0712', 'Tomato', 'Tomato Zippering', NULL, 'Fungal', 'High', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0712/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TOM-0713', 'Tomato', 'Whiteflies', 'Bemisia tabaci', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TOM-0713/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TUR-0714', 'Turmeric', 'Anthracnose', 'Colletotrichum spp.', 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TUR-0714/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TUR-0715', 'Turmeric', 'Banana Lace Wing Bug', NULL, 'Pest', 'Low', 'Early', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TUR-0715/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TUR-0716', 'Turmeric', 'Damping-Off Of Seedlings', NULL, 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TUR-0716/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TUR-0717', 'Turmeric', 'Iron Deficiency', 'Nutritional (Fe)', 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/TUR-0717/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TUR-0718', 'Turmeric', 'Leaf Blotch Of Turmeric', NULL, 'Fungal', 'Low', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/TUR-0718/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TUR-0719', 'Turmeric', 'Manganese Deficiency', 'Nutritional (Mn)', 'Nutrient/Physiological', 'Medium', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/TUR-0719/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TUR-0720', 'Turmeric', 'Potassium Deficiency', 'Nutritional (K)', 'Nutrient/Physiological', 'Medium', 'Early', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'All', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/TUR-0720/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('TUR-0721', 'Turmeric', 'Tobacco Caterpillar', 'Spodoptera litura', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'All', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/TUR-0721/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('WHE-0722', 'Wheat', 'Aphids', 'Aphis gossypii', 'Pest', 'Low', 'All', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/WHE-0722/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('WHE-0723', 'Wheat', 'Cereal Leaf Beetle', 'Oulema melanopus', 'Pest', 'High', 'Mid', 'Holes in leaves, feeding damage, frass, wilting', 'Leaf, Stem, Fruit, Root, Flower', 'Warm weather, susceptible stage', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. NSKE 5% – contact
3. Pheromone traps – monitoring', '1. Spinosad 0.3ml/L – 10 days
2. Emamectin benzoate 0.2g/L – 10 days
3. Chlorantraniliprole 0.2ml/L – 14 days', '1. Trichogramma spp. – egg parasitoid
2. Bacillus thuringiensis – bacterial
3. NPV/Granulovirus – viral', 'Foliar/Soil', 'As per label', 'Monitor populations, apply at ETL', '["Q: What is ETL? → Economic Threshold
Q: Natural enemies help? → Yes
Q: Pheromone trap density? → 5-10/ha"]', 'disease-images/WHE-0723/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('WHE-0724', 'Wheat', 'Frost Damage', NULL, 'Nutrient/Physiological', 'High', 'Mid', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Rabi', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/WHE-0724/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('WHE-0725', 'Wheat', 'Fusarium Head Blight', 'Fusarium graminearum', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/WHE-0725/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('WHE-0726', 'Wheat', 'Iron Deficiency', NULL, 'Nutrient/Physiological', 'Low', 'All', 'Yellowing, chlorosis, necrosis, stunted growth', 'Leaf, Fruit, Whole Plant', 'Nutrient deficiency, abiotic stress', 'Rabi', '1. Compost application
2. Biofertilizers
3. Green manuring', '1. Foliar fertilizers
2. NPK as per soil test
3. Chelated micronutrients', '1. Azotobacter – N fixation
2. PSB – P solubilization
3. KMB – K mobilization', 'Soil/Foliar', 'As per soil test', 'Soil test before application', '["Q: Soil test necessary? → Yes
Q: Foliar or soil? → Both
Q: Organic sufficient? → May need supplement"]', 'disease-images/WHE-0726/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('WHE-0727', 'Wheat', 'Loose Smut Of Wheat', NULL, 'Fungal', 'Medium', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/WHE-0727/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('WHE-0728', 'Wheat', 'Powdery Mildew Of Cereals', NULL, 'Fungal', 'High', 'Mid', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/WHE-0728/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('WHE-0729', 'Wheat', 'Septoria Tritici Blotch', 'Zymoseptoria tritici', 'Fungal', 'Low', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/WHE-0729/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('WHE-0730', 'Wheat', 'Tan Spot', 'Pyrenophora tritici-repentis', 'Fungal', 'High', 'Late', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/WHE-0730/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('WHE-0731', 'Wheat', 'Wheat Leaf Rust', NULL, 'Fungal', 'Medium', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/WHE-0731/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('WHE-0732', 'Wheat', 'Yellow Stripe Rust', NULL, 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'Rabi', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/WHE-0732/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('ZUC-0733', 'Zucchini', 'Leaf Miner Flies', 'Agromyzidae', 'Fungal', 'High', 'Early', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/ZUC-0733/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
INSERT INTO diseases (disease_id, crop, disease_name, scientific_name, category, severity_default, stage_default, key_symptoms, affected_parts, environmental_trigger, season, treatment_organic_generic, treatment_chemical_generic, treatment_biological_generic, application_method, dosage_generic, preventive_measures, faq, image_folder_path, confidence_threshold) VALUES ('ZUC-0734', 'Zucchini', 'Powdery Mildew', 'Podosphaera xanthii', 'Fungal', 'Medium', 'All', 'Leaf spots, yellowing, wilting, lesions', 'Leaf, Stem, Fruit', 'High humidity (>80%), 20-30°C', 'All', '1. Neem oil 5ml/L – 7 days
2. Baking soda 5g/L – foliar
3. Compost tea – weekly', '1. Mancozeb 2g/L – 7-10 days
2. Carbendazim 1g/L – 10 days
3. Propiconazole 1ml/L – 10 days', '1. Trichoderma harzianum – soil
2. Bacillus subtilis – foliar
3. Pseudomonas fluorescens – preventive', 'Foliar', 'As per label', 'Avoid rain spray, rotate fungicides', '["Q: Spread fast? → Yes in humid
Q: Organic effective? → Moderate
Q: Resistant varieties? → Yes"]', 'disease-images/ZUC-0734/image1.jpg', 90) ON CONFLICT (disease_id) DO UPDATE SET disease_name = EXCLUDED.disease_name;
