USE ad_lister;

# For a given ad, what is the email address of the user that created it?
SELECT u.email, a.title
FROM users AS u
JOIN ads AS a
    on a.user_id = u.id;

# For a given ad, what category, or categories, does it belong to?
SELECT categories.name AS 'Category Name', ads.title AS 'Ad Title'
FROM categories
    JOIN ad_categories
        ON ad_categories.category_id = categories.id
    JOIN ads
        ON ads.id = ad_categories.ad_id;


# For a given category, show all the ads that are in that category.
# SELECT a.id, a.title
# FROM categories AS c
#     JOIN ads_categories AS ac
#         ON c.id = ac.category_id
#     JOIN ads on ac.ad_id



# For a given category, show all the ads that are in that category.
#     For a given user, show all the ads they have posted.