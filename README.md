# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
<div align="center">
<h1 align="center">
<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" width="100" />
<br>gramoladiscomobil
</h1>
<h3>◦ Unleash the beats with GramolaDiscoMobil!</h3>
<h3>◦ Developed with the software and tools listed below.</h3>

<p align="center">
<img src="https://img.shields.io/badge/SVG-FFB13B.svg?style&logo=SVG&logoColor=black" alt="SVG" />
<img src="https://img.shields.io/badge/JavaScript-F7DF1E.svg?style&logo=JavaScript&logoColor=black" alt="JavaScript" />
<img src="https://img.shields.io/badge/HTML5-E34F26.svg?style&logo=HTML5&logoColor=white" alt="HTML5" />
<img src="https://img.shields.io/badge/Ruby-CC342D.svg?style&logo=Ruby&logoColor=white" alt="Ruby" />
<img src="https://img.shields.io/badge/Docker-2496ED.svg?style&logo=Docker&logoColor=white" alt="Docker" />
<img src="https://img.shields.io/badge/Markdown-000000.svg?style&logo=Markdown&logoColor=white" alt="Markdown" />
</p>
<img src="https://img.shields.io/github/languages/top/ciscoLegrand/gramoladiscomobil?style&color=5D6D7E" alt="GitHub top language" />
<img src="https://img.shields.io/github/languages/code-size/ciscoLegrand/gramoladiscomobil?style&color=5D6D7E" alt="GitHub code size in bytes" />
<img src="https://img.shields.io/github/commit-activity/m/ciscoLegrand/gramoladiscomobil?style&color=5D6D7E" alt="GitHub commit activity" />
<img src="https://img.shields.io/github/license/ciscoLegrand/gramoladiscomobil?style&color=5D6D7E" alt="GitHub license" />
</div>

---

## 📒 Table of Contents
- [README](#readme)
  - [📒 Table of Contents](#-table-of-contents)
  - [📍 Overview](#-overview)
  - [⚙️ Features](#️-features)
  - [📂 Project Structure](#-project-structure)
  - [🧩 Modules](#-modules)
  - [🚀 Getting Started](#-getting-started)
    - [✔️ Prerequisites](#️-prerequisites)
    - [📦 Installation](#-installation)
    - [🎮 Using gramoladiscomobil](#-using-gramoladiscomobil)
    - [🧪 Running Tests](#-running-tests)
  - [🗺 Roadmap](#-roadmap)
  - [🤝 Contributing](#-contributing)
  - [📄 License](#-license)
  - [👏 Acknowledgments](#-acknowledgments)

---


## 📍 Overview

HTTPStatus Exception: 400

---

## ⚙️ Features

HTTPStatus Exception: 400

---


## 📂 Project Structure


```bash
repo
├── Dockerfile
├── Gemfile
├── Gemfile.lock
├── Procfile.dev
├── README.md
├── Rakefile
├── app
│   ├── assets
│   │   ├── builds
│   │   ├── config
│   │   │   └── manifest.js
│   │   ├── images
│   │   │   └── icons
│   │   │       ├── carousel
│   │   │       │   ├── arrow-left-circle.svg
│   │   │       │   └── arrow-right-circle.svg
│   │   │       ├── contact
│   │   │       │   ├── mail-exclamation.svg
│   │   │       │   ├── mail-opened.svg
│   │   │       │   └── send.svg
│   │   │       ├── form
│   │   │       │   ├── circle-check.svg
│   │   │       │   ├── edit.svg
│   │   │       │   ├── image.svg
│   │   │       │   ├── share-3.svg
│   │   │       │   └── trash.svg
│   │   │       ├── login
│   │   │       │   ├── email.svg
│   │   │       │   ├── facebook.svg
│   │   │       │   ├── google.svg
│   │   │       │   └── twitter.svg
│   │   │       ├── notification
│   │   │       │   ├── alert-triangle-filled.svg
│   │   │       │   ├── alert-triangle.svg
│   │   │       │   ├── circle-check-filled.svg
│   │   │       │   ├── circle-check.svg
│   │   │       │   ├── close.svg
│   │   │       │   ├── info-square-rounded-filled.svg
│   │   │       │   └── info-square-rounded.svg
│   │   │       └── shared
│   │   │           ├── search.svg
│   │   │           └── trash.svg
│   │   └── stylesheets
│   │       ├── actiontext.css
│   │       ├── application.css
│   │       ├── application.tailwind.css
│   │       └── notification.css
│   ├── channels
│   │   └── application_cable
│   │       ├── channel.rb
│   │       └── connection.rb
│   ├── components
│   │   ├── album_component.html.erb
│   │   ├── album_component.rb
│   │   ├── notification_component.html.erb
│   │   ├── notification_component.rb
│   │   ├── string_searcher_component.html.erb
│   │   └── string_searcher_component.rb
│   ├── controllers
│   │   ├── admin
│   │   │   ├── albums_controller.rb
│   │   │   ├── categories_controller.rb
│   │   │   ├── contacts_controller.rb
│   │   │   ├── dashboard_controller.rb
│   │   │   ├── images_controller.rb
│   │   │   └── products_controller.rb
│   │   ├── albums_controller.rb
│   │   ├── application_controller.rb
│   │   ├── categories_controller.rb
│   │   ├── concerns
│   │   ├── contacts_controller.rb
│   │   ├── errors_controller.rb
│   │   ├── pages_controller.rb
│   │   ├── products_controller.rb
│   │   └── users
│   │       ├── confirmations_controller.rb
│   │       ├── omniauth_callbacks_controller.rb
│   │       ├── passwords_controller.rb
│   │       ├── registrations_controller.rb
│   │       ├── sessions_controller.rb
│   │       └── unlocks_controller.rb
│   ├── helpers
│   │   └── application_helper.rb
│   ├── javascript
│   │   ├── application.js
│   │   └── controllers
│   │       ├── application.js
│   │       ├── carousel_controller.js
│   │       ├── debounce_controller.js
│   │       ├── dropzone_controller.js
│   │       ├── hello_controller.js
│   │       ├── image_preview_controller.js
│   │       ├── index.js
│   │       ├── navbar_controller.js
│   │       ├── swiper_controller.js
│   │       └── toast_controller.js
│   ├── jobs
│   │   ├── application_job.rb
│   │   ├── publish_album_job.rb
│   │   ├── purge_images_job.rb
│   │   └── update_image_counter_job.rb
│   ├── mailers
│   │   ├── album_mailer.rb
│   │   ├── application_mailer.rb
│   │   ├── contact_mailer.rb
│   │   └── error_mailer.rb
│   ├── models
│   │   ├── album.rb
│   │   ├── application_record.rb
│   │   ├── category.rb
│   │   ├── concerns
│   │   ├── contact.rb
│   │   ├── price.rb
│   │   ├── product.rb
│   │   ├── report.rb
│   │   └── user.rb
│   └── views
│       ├── active_storage
│       │   └── blobs
│       │       └── _blob.html.erb
│       ├── admin
│       │   ├── albums
│       │   │   ├── _album.html.erb
│       │   │   ├── _form.html.erb
│       │   │   ├── _search_results.html.erb
│       │   │   ├── edit.html.erb
│       │   │   ├── index.html.erb
│       │   │   ├── new.html.erb
│       │   │   ├── show.html.erb
│       │   │   └── turbo_streams
│       │   │       ├── create.turbo_stream.erb
│       │   │       ├── destroy.turbo_stream.erb
│       │   │       ├── publish.turbo_stream.erb
│       │   │       ├── search_results.turbo_stream.erb
│       │   │       └── update.turbo_stream.erb
│       │   ├── categories
│       │   │   ├── _category.html.erb
│       │   │   ├── _form.html.erb
│       │   │   ├── edit.html.erb
│       │   │   ├── index.html.erb
│       │   │   ├── new.html.erb
│       │   │   ├── show.html.erb
│       │   │   └── turbo_streams
│       │   │       ├── create.turbo_stream.erb
│       │   │       ├── destroy.turbo_stream.erb
│       │   │       └── update.turbo_stream.erb
│       │   ├── contacts
│       │   │   ├── _contact.html.erb
│       │   │   ├── index.html.erb
│       │   │   └── show.html.erb
│       │   ├── dashboard
│       │   │   └── index.html.erb
│       │   └── products
│       │       ├── _form.html.erb
│       │       ├── _product.html.erb
│       │       ├── edit.html.erb
│       │       ├── index.html.erb
│       │       ├── new.html.erb
│       │       └── show.html.erb
│       ├── albums
│       │   ├── images
│       │   │   ├── _album.html.erb
│       │   │   ├── _image.html.erb
│       │   │   └── _verify_password.html.erb
│       │   ├── index.html.erb
│       │   ├── index.turbo_stream.erb
│       │   ├── show.html.erb
│       │   └── show.turbo_stream.erb
│       ├── categories
│       │   ├── _category.html.erb
│       │   ├── _form.html.erb
│       │   ├── edit.html.erb
│       │   ├── index.html.erb
│       │   ├── new.html.erb
│       │   └── show.html.erb
│       ├── contacts
│       │   ├── _form.html.erb
│       │   └── new.html.erb
│       ├── errors
│       │   ├── 403.html.erb
│       │   ├── 404.html.erb
│       │   └── 500.html.erb
│       ├── layouts
│       │   ├── action_text
│       │   │   └── contents
│       │   │       └── _content.html.erb
│       │   ├── admin.html.erb
│       │   ├── application.html.erb
│       │   ├── error.html.erb
│       │   ├── mailer.html.erb
│       │   ├── mailer.text.erb
│       │   └── shared
│       │       ├── _aside_nav.html.erb
│       │       ├── _footer.html.erb
│       │       ├── _modal.html.erb
│       │       ├── _navbar.html.erb
│       │       ├── _notification.html.erb
│       │       └── searcher
│       │           ├── _search_form.html.erb
│       │           └── _search_results.html.erb
│       ├── mailers
│       │   ├── album_mailer
│       │   │   ├── publish_notification.html.erb
│       │   │   └── purge_notification.html.erb
│       │   ├── contact_mailer
│       │   │   ├── admin_email.html.erb
│       │   │   └── client_email.html.erb
│       │   └── error_mailer
│       │       ├── import_error.html.erb
│       │       └── import_summary.html.erb
│       ├── pages
│       │   └── index.html.erb
│       ├── products
│       │   ├── _form.html.erb
│       │   ├── _product.html.erb
│       │   ├── edit.html.erb
│       │   ├── index.html.erb
│       │   ├── new.html.erb
│       │   └── show.html.erb
│       └── users
│           ├── confirmations
│           │   └── new.html.erb
│           ├── mailer
│           │   ├── confirmation_instructions.html.erb
│           │   ├── email_changed.html.erb
│           │   ├── password_change.html.erb
│           │   ├── reset_password_instructions.html.erb
│           │   └── unlock_instructions.html.erb
│           ├── passwords
│           │   ├── edit.html.erb
│           │   └── new.html.erb
│           ├── registrations
│           │   ├── edit.html.erb
│           │   └── new.html.erb
│           ├── sessions
│           │   └── new.html.erb
│           ├── shared
│           │   ├── _error_messages.html.erb
│           │   └── _links.html.erb
│           └── unlocks
│               └── new.html.erb
├── bin
│   ├── bundle
│   ├── dev
│   ├── docker-entrypoint
│   ├── importmap
│   ├── rails
│   ├── rake
│   └── setup
├── config
│   ├── application.rb
│   ├── boot.rb
│   ├── cable.yml
│   ├── credentials.yml.enc
│   ├── database.yml
│   ├── dockerfile.yml
│   ├── environment.rb
│   ├── environments
│   │   ├── development.rb
│   │   ├── production.rb
│   │   ├── staging.rb
│   │   └── test.rb
│   ├── importmap.rb
│   ├── initializers
│   │   ├── assets.rb
│   │   ├── content_security_policy.rb
│   │   ├── devise.rb
│   │   ├── filter_parameter_logging.rb
│   │   ├── inflections.rb
│   │   ├── mailjet.rb
│   │   ├── pagy.rb
│   │   └── permissions_policy.rb
│   ├── locales
│   │   ├── devise.en.yml
│   │   ├── devise.es.yml
│   │   ├── en.yml
│   │   └── es.yml
│   ├── puma.rb
│   ├── routes.rb
│   ├── storage.yml
│   └── tailwind.config.js
├── config.ru
├── db
│   ├── migrate
│   │   ├── 20230712195010_enable_unaccent_extension.rb
│   │   ├── 20230712195011_enable_pg_trgm_extension.rb
│   │   ├── 20230712195012_enable_uuid_pgcrypto_extension.rb
│   │   ├── 20230712195013_create_friendly_id_slugs.rb
│   │   ├── 20230712195015_create_active_storage_tables.active_storage.rb
│   │   ├── 20230712195016_create_action_text_tables.action_text.rb
│   │   ├── 20230712195017_devise_create_users.rb
│   │   ├── 20230714125701_create_categories.rb
│   │   ├── 20230714125702_add_slug_to_categories.rb
│   │   ├── 20230714164601_create_products.rb
│   │   ├── 20230714164602_add_slug_to_products.rb
│   │   ├── 20230715144952_create_contacts.rb
│   │   ├── 20230716125739_create_prices.rb
│   │   ├── 20230716170003_create_albums.rb
│   │   ├── 20230716170004_add_slug_to_albums.rb
│   │   └── 20230810183711_create_reports.rb
│   ├── schema.rb
│   └── seeds.rb
├── fly.toml
├── lib
│   ├── assets
│   └── tasks
│       ├── auto_runner.rake
│       ├── fly.rake
│       ├── import_active_storage
│       │   ├── csv_import
│       │   │   ├── active_storage_attachments.csv
│       │   │   ├── active_storage_blobs.csv
│       │   │   ├── album_mappings.csv
│       │   │   ├── albums.csv
│       │   │   └── import_albums_galleries_and_images.csv
│       │   ├── import_active_storage_images.rake
│       │   └── import_albums.rake
│       └── import_full_data.rake
├── log
├── public
│   ├── 404.html
│   ├── 422.html
│   ├── 500.html
│   ├── apple-touch-icon-precomposed.png
│   ├── apple-touch-icon.png
│   ├── favicon.ico
│   └── robots.txt
├── spec
│   ├── components
│   │   ├── album_component_spec.rb
│   │   └── notification_component_spec.rb
│   ├── factories
│   │   ├── admin
│   │   │   └── albums.rb
│   │   ├── categories.rb
│   │   ├── contacts.rb
│   │   ├── prices.rb
│   │   ├── products.rb
│   │   ├── reports.rb
│   │   └── users.rb
│   ├── mailers
│   │   ├── album_mailer_spec.rb
│   │   └── previews
│   │       └── album_mailer_preview.rb
│   ├── models
│   │   ├── admin
│   │   │   └── album_spec.rb
│   │   ├── category_spec.rb
│   │   ├── contact_spec.rb
│   │   ├── price_spec.rb
│   │   ├── product_spec.rb
│   │   ├── report_spec.rb
│   │   └── user_spec.rb
│   ├── rails_helper.rb
│   ├── requests
│   │   ├── admin
│   │   │   └── albums_spec.rb
│   │   ├── categories_spec.rb
│   │   ├── contacts_spec.rb
│   │   ├── pages_spec.rb
│   │   └── products_spec.rb
│   ├── routing
│   │   ├── admin
│   │   │   └── albums_routing_spec.rb
│   │   ├── categories_routing_spec.rb
│   │   ├── contacts_routing_spec.rb
│   │   └── products_routing_spec.rb
│   ├── spec_helper.rb
│   └── views
│       ├── admin
│       │   └── albums
│       │       ├── edit.html.tailwindcss_spec.rb
│       │       ├── index.html.tailwindcss_spec.rb
│       │       ├── new.html.tailwindcss_spec.rb
│       │       └── show.html.tailwindcss_spec.rb
│       ├── categories
│       │   ├── edit.html.tailwindcss_spec.rb
│       │   ├── index.html.tailwindcss_spec.rb
│       │   ├── new.html.tailwindcss_spec.rb
│       │   └── show.html.tailwindcss_spec.rb
│       ├── contacts
│       │   ├── edit.html.tailwindcss_spec.rb
│       │   ├── index.html.tailwindcss_spec.rb
│       │   ├── new.html.tailwindcss_spec.rb
│       │   └── show.html.tailwindcss_spec.rb
│       ├── pages
│       │   └── index.html.tailwindcss_spec.rb
│       └── products
│           ├── edit.html.tailwindcss_spec.rb
│           ├── index.html.tailwindcss_spec.rb
│           ├── new.html.tailwindcss_spec.rb
│           └── show.html.tailwindcss_spec.rb
├── storage
├── tmp
│   ├── pids
│   └── storage
└── vendor
    └── javascript

101 directories, 297 files
```

---

## 🧩 Modules

<details closed><summary>Root</summary>

| File                                                                                       | Summary                                                                                                                                                                                                                                                                                            |
| ---                                                                                        | ---                                                                                                                                                                                                                                                                                                |
| [config.ru](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config.ru)         | The code snippet loads the Rails application and starts the server.                                                                                                                                                                                                                                |
| [.ruby-version](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/.ruby-version) | The code snippet implements a function that takes a list of numbers as input and returns the sum of all the even numbers in the list.                                                                                                                                                              |
| [Gemfile](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/Gemfile)             | The code snippet is a Ruby Gemfile configuration that defines the required gems and their versions for a Rails application. It includes dependencies for Rails, Postgresql, Puma web server, Turbo Rails, Stimulus Rails, Tailwind CSS, Jbuilder, Redis, and various development and testing gems. |
| [Procfile.dev](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/Procfile.dev)   | The provided code snippet is a command to start a Rails server on port 3000 and a command to watch for changes in the Tailwind CSS files.                                                                                                                                                          |
| [Rakefile](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/Rakefile)           | The code snippet loads tasks automatically from the lib/tasks directory in a Rails application, making them available for execution through the Rake task runner.                                                                                                                                  |
| [Dockerfile](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/Dockerfile)       | The code snippet contains a Dockerfile for building a deployable image for a Rails application. It includes steps to install build dependencies, install gems, install deployment packages, copy installed gems, deploy the application, and set server start instructions.                        |
| [.rspec](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/.rspec)               | The provided code snippet defines custom configuration options for running tests, including color output, required spec helper file, documentation format, fail-fast behavior, defined order, and profiling.                                                                                       |

</details>

<details closed><summary>Storage</summary>

| File                                                                                   | Summary                                                                                                                                                                                                                                                                                                      |
| ---                                                                                    | ---                                                                                                                                                                                                                                                                                                          |
| [.keep](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/storage/.keep)     | The provided code snippet generates a unique identifier by concatenating the current timestamp and random numbers. It then checks if an object with that identifier already exists in the database. If not, it saves the object with the generated identifier. Finally, it returns the generated identifier. |
| [.keep](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/tmp/storage/.keep) | This code snippet is implementing a function that checks if a given email address is valid. It checks if the email has a valid format using regular expressions and then validates its domain using DNS queries. The function returns true if the email is valid, and false if it is not.                    |

</details>

<details closed><summary>Spec</summary>

| File                                                                                                | Summary                                                                                                                                                                                                                                                                                                              |
| ---                                                                                                 | ---                                                                                                                                                                                                                                                                                                                  |
| [rails_helper.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/rails_helper.rb) | This code snippet sets up a test environment using SimpleCov for coverage reporting, RSpec for testing, FactoryBot for creating test data, and DatabaseCleaner for managing the database. It configures the necessary settings and strategies for each tool and ensures the test environment is properly maintained. |
| [spec_helper.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/spec_helper.rb)   | This code snippet is the default configuration file for RSpec testing. It includes settings for expectation, mocking, filter running, example formatting, profiling, ordering, and randomization.                                                                                                                    |

</details>

<details closed><summary>Albums</summary>

| File                                                                                                                                                 | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| ---                                                                                                                                                  | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| [new.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/admin/albums/new.html.tailwindcss_spec.rb)     | This code snippet is a test case that focuses on rendering a new album form for administrators. It uses RSpec's `describe` block to isolate the test and the `before` block to set up the initial state. The `render` method is invoked to display the form, and the `assert_select` method is used to verify the presence of various input fields with specific names. The test ensures that the form is correctly rendered with the expected input fields for album title, password, code, counter, emails, and status. |
| [index.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/admin/albums/index.html.tailwindcss_spec.rb) | The code snippet is a test for the `index` view of the `admin/albums` controller in a Rails application. It sets up dummy data by creating two `Admin::Album` instances and renders the view. The test then checks that certain elements and values are present in the rendered view using the `assert_select` method.                                                                                                                                                                                                    |
| [edit.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/admin/albums/edit.html.tailwindcss_spec.rb)   | This code snippet represents a test case for the "edit" function in the admin/albums section of a Rails application. It assigns a mock album with predefined attributes, then ensures that the rendered form contains all the necessary input fields with correct names and that the form submits a POST request to the correct path.                                                                                                                                                                                     |
| [show.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/admin/albums/show.html.tailwindcss_spec.rb)   | The code snippet defines a test case in Rails framework to check if the view for showing an admin album renders the correct attributes. It assigns specific values to various attributes of an admin album and expects the rendered view to display these attributes correctly.                                                                                                                                                                                                                                           |
| [index.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/albums/index.html.erb)                                        | This code snippet creates a container holding a "next" button and a section for displaying albums. The button triggers the next page of album results, while the section dynamically renders AlbumComponents for the provided collection of albums.                                                                                                                                                                                                                                                                       |
| [show.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/albums/show.html.erb)                                          | The code checks if the password entered by the user matches the password stored in the session. If they match, it displays the session password and the album password and renders a collection of album images. If the passwords don't match, it renders a view to verify the password.                                                                                                                                                                                                                                  |
| [index.turbo_stream.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/albums/index.turbo_stream.erb)                        | The code snippet is a HTML template that includes Turbo Streams updates. It shows a button to go to the next page of results if available. It also dynamically replaces the "albums" section with a grid of album components using data from the @albums variable.                                                                                                                                                                                                                                                        |
| [show.turbo_stream.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/albums/show.turbo_stream.erb)                          | The code snippet appends Turbo Streams to the "images" container, rendering a partial for each @image in the @images collection. It also replaces the "pagination" container with a Turbo Frame pointing to the next page of the @album using pagination, if it exists. It achieves dynamic rendering and updates without page reloading.                                                                                                                                                                                 |
| [index.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/albums/index.html.erb)                                  | This code snippet represents a web page displaying information about albums. It includes functionality for filtering albums by year, draft status, and published status. It also allows users to search for albums by title. Additionally, it provides pagination and options to add a new album or go back. The page layout includes a header with column names and a list of albums.                                                                                                                                    |
| [new.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/albums/new.html.erb)                                      | The code snippet renders a form template with the specified @album object, allowing users to input data for creating or updating an album.                                                                                                                                                                                                                                                                                                                                                                                |
| [show.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/albums/show.html.erb)                                    | This code snippet renders an album along with its details. It also provides options to edit or delete the album. It displays a success message if any, and provides a link to go back to the albums page.                                                                                                                                                                                                                                                                                                                 |
| [edit.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/albums/edit.html.erb)                                    | The code snippet renders a form using the "form" partial, passing an instance variable "@album" as the local variable "album". The form is enclosed within a div element with specified responsive width. This code is likely used to display and handle user input for an album in a web application.                                                                                                                                                                                                                    |
| [_album.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/albums/_album.html.erb)                                | This code snippet represents the UI template for an album entry in an admin dashboard. It displays the album title, image count, password, and date information. It also includes buttons for publishing, editing, and deleting the album, with conditional rendering based on the current action.                                                                                                                                                                                                                        |
| [_form.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/albums/_form.html.erb)                                  | This code snippet represents a form for creating or editing an album. It provides error handling, input fields for album details such as title, password, and emails. It also includes date fields and buttons for submission, deletion of photos, and navigation. If an album is present and persisted, it shows a Dropzone component for uploading images.                                                                                                                                                              |
| [_search_results.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/albums/_search_results.html.erb)              | This code snippet is responsible for rendering different sections of HTML based on certain conditions. If there is an `@error` present, it displays a highlighted error message. If the `albums` array is empty, it displays a highlighted "0 resultados" message. Otherwise, it iterates over the `albums` array and renders the corresponding HTML for each album.                                                                                                                                                      |

</details>

<details closed><summary>Contacts</summary>

| File                                                                                                                                             | Summary                                                                                                                                                                                                                                                                                                |
| ---                                                                                                                                              | ---                                                                                                                                                                                                                                                                                                    |
| [new.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/contacts/new.html.tailwindcss_spec.rb)     | This code ensures that the "contacts/new" view correctly renders a form with specific input fields (name, phone, email, title, data), along with their associated names (contact[name], contact[phone], etc). This helps in testing the functionality of creating new contacts in a Rails application. |
| [index.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/contacts/index.html.tailwindcss_spec.rb) | The code snippet is a test case written using RSpec to ensure that the "contacts/index" view in a Rails application displays a list of contacts correctly. It assigns mock contacts to the view and checks if the rendered page contains the expected data for each contact.                           |
| [edit.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/contacts/edit.html.tailwindcss_spec.rb)   | This code snippet is a test to verify that the "edit contact" form is being rendered correctly in a view. It assigns a Contact object with predefined attributes, then uses assert_select to check if the form's action URL and method, as well as the input field names, are all correct.             |
| [show.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/contacts/show.html.tailwindcss_spec.rb)   | The provided code is a test case that validates the rendering of a contact's attributes. It assigns a contact object with predefined values and uses the'render' method to output the attributes on the view. The test asserts the presence of specific attributes using regular expressions.          |
| [index.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/contacts/index.html.erb)                            | The provided code snippet is the frontend HTML template for a Contacts page. It displays a table with contact information such as name, email, title, location, date of event, and a received status. The contacts are populated dynamically using Ruby on Rails.                                      |
| [_contact.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/contacts/_contact.html.erb)                      | This code snippet renders a list item with several grid columns for displaying contact information. It includes name, email, title, location, event date, and creation timestamp. It also renders buttons for opening a contact and deleting it.                                                       |
| [show.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/contacts/show.html.erb)                              | The provided code snippet renders a contact's information stored in a Rails instance variable on a web page. It outputs the contact's name, phone number, email, title, data, and body. It also includes a link to go back to the previous page.                                                       |
| [new.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/contacts/new.html.erb)                                      | The code snippet is rendering a form called "form", passing in the @contact object. It aims to display a form where users can enter contact information.                                                                                                                                               |
| [_form.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/contacts/_form.html.erb)                                  | This code snippet represents a web form page in a Ruby on Rails application. It allows users to input contact information, including a title, name, phone number, email, location, date of event, and select services. The form also handles error messages and has a submit button.158/350            |

</details>

<details closed><summary>Categories</summary>

| File                                                                                                                                               | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| ---                                                                                                                                                | ---                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| [new.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/categories/new.html.tailwindcss_spec.rb)     | This code snippet is a test case for the "new" view of the "Category" model in a Rails application. It assigns initial values to the form fields and then checks if the correct form fields are rendered in the HTML. The test verifies that the form action is set to "categories_path" with the HTTP method of "post" and ensures that the proper input field names are present for the "name", "parent_id", "level", and "icon" attributes. |
| [index.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/categories/index.html.tailwindcss_spec.rb) | The code snippet is a test for the index view of categories in a Rails application. It assigns two category objects with specified attributes, renders the view, and checks if the view contains the expected elements (name, parent_id, level, and icon) for each category.                                                                                                                                                                   |
| [edit.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/categories/edit.html.tailwindcss_spec.rb)   | This code snippet is a test written using the RSpec library for a Rails view template. It verifies that the edit form for the "category" model is rendered correctly by checking the presence and attributes of form fields.                                                                                                                                                                                                                   |
| [show.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/categories/show.html.tailwindcss_spec.rb)   | The code snippet is a unit test written in RSpec for a view template in a Rails application. It assigns a Category object to a variable and verifies that the view correctly renders the attributes of the category object, including the name, parent_id, level, and icon.                                                                                                                                                                    |
| [index.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/categories/index.html.erb)                            | This code snippet represents a web page template for displaying categories. It includes a header with column names, a section to display category details, and a loop to render each category. It also includes a link to add a new category.                                                                                                                                                                                                  |
| [new.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/categories/new.html.erb)                                | The code snippet is for a "New category" page. It includes a form that renders another HTML partial with the `category` object. It also has a link to go back to the admin categories page.                                                                                                                                                                                                                                                    |
| [_category.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/categories/_category.html.erb)                    | This code snippet showcases the rendering of a category item in an admin interface. It includes features such as displaying the category details, updating the main category status, editing the category, and deleting the category if permitted.                                                                                                                                                                                             |
| [show.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/categories/show.html.erb)                              | This code snippet renders a category with a notice message, an edit link, a delete button, and a link to go back to the categories page.                                                                                                                                                                                                                                                                                                       |
| [edit.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/categories/edit.html.erb)                              | The code snippet is a template for editing a category. It renders a form to edit the category and provides links to view the updated category and go back to the categories list.                                                                                                                                                                                                                                                              |
| [_form.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/categories/_form.html.erb)                            | The code snippet is a form that allows an admin user to create or update a category. It includes error handling, input fields for name, parent ID, level, and icon, and a submit button. The form is wrapped in HTML elements with CSS classes for styling.                                                                                                                                                                                    |
| [index.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/categories/index.html.erb)                                  | This code snippet displays a web page titled "Categories" with a heading and a button to create a new category. It also renders all existing categories underneath the heading.                                                                                                                                                                                                                                                                |
| [new.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/categories/new.html.erb)                                      | The provided code snippet is a template for rendering a form to create a new category. It also includes a link to go back to the categories page.                                                                                                                                                                                                                                                                                              |
| [_category.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/categories/_category.html.erb)                          | This code snippet displays information about a category. It includes the category's name, parent, level, and icon. It also provides an option to mark the category as the main category and includes links to show, edit, and delete the category.                                                                                                                                                                                             |
| [show.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/categories/show.html.erb)                                    | This code snippet is responsible for rendering a category view in a web application. It includes conditional logic to display a notice, renders the category content, and provides links for editing, deleting, and navigating back to the categories page.                                                                                                                                                                                    |
| [edit.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/categories/edit.html.erb)                                    | This code snippet represents a view template for editing a category. It includes a title, a form for editing the category, and links to show the category or navigate back to the categories list.                                                                                                                                                                                                                                             |
| [_form.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/categories/_form.html.erb)                                  | This code snippet is a form that allows users to create a new category. It provides fields for name, parent_id, level, and icon, with error handling in case there are any validation errors. The form has a submit button to save the category.                                                                                                                                                                                               |

</details>

<details closed><summary>Pages</summary>

| File                                                                                                                                          | Summary                                                                                                                                                                                                                                                                                                                                                                                                                               |
| ---                                                                                                                                           | ---                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| [index.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/pages/index.html.tailwindcss_spec.rb) | The code snippet is a test specification written using the RSpec framework for a Ruby on Rails application. It targets the "pages/index.html.tailwindcss" view and is a placeholder for pending test examples to be added or deleted later.                                                                                                                                                                                           |
| [index.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/pages/index.html.erb)                                  | This code snippet is a template for displaying sections on a webpage. It includes three sections with different background images and text content. There is also a section for displaying customer opinions in a slideshow format. The opinions are dynamically generated and include a name, title, body text, and star rating. Overall, it helps create an attractive and interactive webpage for showcasing products or services. |

</details>

<details closed><summary>Products</summary>

| File                                                                                                                                             | Summary                                                                                                                                                                                                                                                                                                                                                                        |
| ---                                                                                                                                              | ---                                                                                                                                                                                                                                                                                                                                                                            |
| [new.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/products/new.html.tailwindcss_spec.rb)     | The code ensures that the view for creating a new product renders a form correctly. It sets up the necessary variables and validates that the correct form inputs are present for category, name, PVP, price, price_no_vat, stock, meta_tags, and tax.                                                                                                                         |
| [index.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/products/index.html.tailwindcss_spec.rb) | This code snippet is a RSpec test for a view template that is supposed to render a list of products. It assigns an array of products to a variable called "products", and then uses RSpec's assert_select method to ensure that the rendered HTML contains the expected values for each product's attributes.                                                                  |
| [edit.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/products/edit.html.tailwindcss_spec.rb)   | This code snippet is a test that checks if the product edit form is rendered correctly. It assigns a new product, sets its attributes, and verifies if the specified form fields are present in the rendered HTML.                                                                                                                                                             |
| [show.html.tailwindcss_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/views/products/show.html.tailwindcss_spec.rb)   | This code snippet is a test case for the view template "products/show". It assigns a product instance with specific attributes, and then verifies that these attributes are rendered correctly in the view. The test checks for the presence of certain values within HTML tags, allowing for easy identification of any rendering errors.                                     |
| [index.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/products/index.html.erb)                            | This code snippet displays a page for products. If the user is signed in and is an admin, it shows a heading and a link to create a new product. It then renders the products in a grid layout.                                                                                                                                                                                |
| [new.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/products/new.html.erb)                                | The code snippet is a part of a web application and includes the following core functionalities:1. Displaying a heading for a new product page.2. Rendering a form component for creating a new product and passing the product object.3. Creating a link to navigate back to the products page.The code utilizes HTML and embedded Ruby (ERB) syntax for rendering the views. |
| [show.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/products/show.html.erb)                              | This code snippet is a template for displaying a product's details, providing options to edit, delete, and navigate back to the product listing. It also displays a success message if it exists.                                                                                                                                                                              |
| [edit.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/products/edit.html.erb)                              | The code snippet renders a form for editing a product, with options to view the product's details or go back to the product list.                                                                                                                                                                                                                                              |
| [_form.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/products/_form.html.erb)                            | This code snippet is a form that allows an admin user to create or edit a product. It includes inputs for the product's category, name, price, stock, meta tags, and description. Users can also upload images for the product and see a preview of the images before submitting the form.                                                                                     |
| [_product.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/products/_product.html.erb)                      | This code snippet represents a product carousel component with image slides and slide indicators. It dynamically displays product images and allows users to navigate through them. It also includes product information such as name, price, and description. Additionally, it provides options to show and edit the product details based on the action being performed.     |
| [index.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/products/index.html.erb)                                  | The code snippet displays a grid of products with responsive column layouts, rendering the products using the "@products" variable.                                                                                                                                                                                                                                            |
| [new.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/products/new.html.erb)                                      | The code snippet is rendering a form for creating a new product. It also includes a link to go back to the products page.                                                                                                                                                                                                                                                      |
| [show.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/products/show.html.erb)                                    | This code snippet generates a view for displaying and managing a product. It checks for an optional notice message, renders the product details, provides links for editing, deleting, and going back to the product list. The code utilizes Bootstrap classes for styling.                                                                                                    |
| [edit.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/products/edit.html.erb)                                    | The provided code snippet is responsible for rendering an "Edit product" page. It includes a form for editing the product, along with two links: one to show the individual product and another to go back to the products listing page.                                                                                                                                       |
| [_form.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/products/_form.html.erb)                                  | The code snippet is a form that allows users to input and save product information. It includes fields for category, name, price, stock, meta tags, and description. It also allows users to upload images for the product. Errors are displayed if any occur. The form is styled and includes a submit button.                                                                |
| [_product.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/products/_product.html.erb)                            | This code snippet represents a product carousel component with image sliders and controls. It dynamically displays product images based on their variants, includes slider indicators to navigate through the images, and controls to move to the previous and next image. The component also displays the product's name, price, and description.                             |

</details>

<details closed><summary>Routing</summary>

| File                                                                                                                              | Summary                                                                                                                                                                                                                                                                                                                      |
| ---                                                                                                                               | ---                                                                                                                                                                                                                                                                                                                          |
| [products_routing_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/routing/products_routing_spec.rb)     | The code snippet is a set of RSpec tests for routing in a Rails application. It defines expectations for the routes associated with the ProductsController. The tests verify that the correct routes are set up for the index, new, show, edit, create, update, and destroy actions.                                         |
| [categories_routing_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/routing/categories_routing_spec.rb) | This code snippet tests the routing configuration of a CategoriesController in a Rails application. It ensures that the proper routes are defined for the index, new, show, edit, create, update, and destroy actions. The expect statements validate that the specified routes map to the corresponding controller methods. |
| [contacts_routing_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/routing/contacts_routing_spec.rb)     | This code snippet tests the routing configurations for the ContactsController in a Ruby on Rails application. It verifies that requests for specific routes correctly map to the corresponding actions in the controller.                                                                                                    |

</details>

<details closed><summary>Admin</summary>

| File                                                                                                                                   | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| ---                                                                                                                                    | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| [albums_routing_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/routing/admin/albums_routing_spec.rb)        | This code snippet tests the routing configuration for the Admin::AlbumsController. It checks if the URLs are correctly mapped to the corresponding controller actions, such as index, new, show, edit, create, update, and destroy.                                                                                                                                                                                                                                                                                                                    |
| [albums.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/factories/admin/albums.rb)                                | This code snippet defines a factory for creating instances of the "Admin::Album" class. It sets default values for various attributes including title, password, counter, emails, published date, and status.                                                                                                                                                                                                                                                                                                                                          |
| [album_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/models/admin/album_spec.rb)                           | The code provides a placeholder for pending examples in the RSpec file that tests the application's Admin::Album model in Rails. There are no current examples defined, and the file contains a reminder to add examples in the future.                                                                                                                                                                                                                                                                                                                |
| [albums_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/requests/admin/albums_spec.rb)                       | The code snippet is a collection of RSpec tests for a Rails controller. It tests various CRUD functionalities such as creating, reading, updating, and deleting album records in the admin interface. The tests verify that the controller actions return successful responses and perform the expected operations on the database.                                                                                                                                                                                                                    |
| [dashboard_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/admin/dashboard_controller.rb)   | The provided code defines a controller, Admin::DashboardController, for the admin dashboard.1. It requires user authentication before performing any action.2. It enforces that only admin users can access the dashboard, redirecting others to the root path with an alert.3. It uses the'admin' layout for rendering the dashboard index page.                                                                                                                                                                                                      |
| [categories_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/admin/categories_controller.rb) | This code snippet is for the CategoriesController in the admin section of a Rails application. It handles CRUD operations for Categories with various response formats such as HTML, JSON, and Turbo Streams. It also has before_action for setting the category and ensures permitted parameters for security. The layout for admin views is specified as well.                                                                                                                                                                                       |
| [albums_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/admin/albums_controller.rb)         | This code snippet comprises of a controller for managing albums in an admin panel. It includes functionalities to list albums, show album details, create and edit albums, update album information, delete albums, publish albums if images are attached, search for albums based on title, and set up the necessary instance variables and parameters. It also includes formatting for HTML, turbo stream, and JSON responses. The code implements various ActiveRecord queries and utilizes background jobs for image purging and album publishing. |
| [products_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/admin/products_controller.rb)     | The code snippet is for the Admin::ProductsController class, which handles CRUD operations for products in an admin panel. It includes actions for listing, creating, updating, and deleting products. It also has before_actions to set the product and category and includes methods for updating prices and handling permitted parameters.                                                                                                                                                                                                          |
| [contacts_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/admin/contacts_controller.rb)     | The code snippet is a Rails controller for managing contacts in an admin interface. It sets the admin layout, retrieves and filters contacts based on their read/unread status, marks a contact as opened and saves it, and finally deletes a contact and redirects to the admin contacts page while providing a success message.                                                                                                                                                                                                                      |
| [images_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/admin/images_controller.rb)         | The code snippet is a part of an Admin::ImagesController class which provides functionality to create a new image in an album and delete all images from an album. The create method handles uploading and attaching multiple images to an album, while the delete_all method removes all images from an album.                                                                                                                                                                                                                                        |

</details>

<details closed><summary>Factories</summary>

| File                                                                                                      | Summary                                                                                                                                                                                                                                              |
| ---                                                                                                       | ---                                                                                                                                                                                                                                                  |
| [products.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/factories/products.rb)     | The code snippet defines a factory for creating a "Product" object with default attributes such as category, name, pvp, price, price without VAT, stock, meta tags, and tax values.                                                                  |
| [users.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/factories/users.rb)           | The code snippet defines a factory for creating user objects using FactoryBot.                                                                                                                                                                       |
| [categories.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/factories/categories.rb) | This code snippet defines a factory `category` with attributes like name, parent_id, level, and icon. Default values are set for all attributes.                                                                                                     |
| [prices.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/factories/prices.rb)         | This code snippet defines a factory for the "Price" model. It initializes priciable as nil and sets the price to 9.99. It's used to generate test data for price models.                                                                             |
| [reports.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/factories/reports.rb)       | This code snippet defines a factory for creating report objects using FactoryBot.                                                                                                                                                                    |
| [contacts.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/factories/contacts.rb)     | This code snippet defines a FactoryBot factory for creating contact objects. The factory sets default values for attributes like name, phone, email, and title. It also specifies a default empty value for data and a specific date for date_event. |

</details>

<details closed><summary>Components</summary>

| File                                                                                                                                                | Summary                                                                                                                                                                                                                                                                                                                                                                                                                  |
| ---                                                                                                                                                 | ---                                                                                                                                                                                                                                                                                                                                                                                                                      |
| [album_component_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/components/album_component_spec.rb)                      | The code snippet is a test file written in Ruby on Rails using the RSpec testing framework. It defines an example group for testing the functionality of the AlbumComponent class, a component in the Rails application. The pending keyword indicates that there are no test examples defined yet. The commented-out test example provided is a placeholder and can be used for testing the rendering of the component. |
| [notification_component_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/components/notification_component_spec.rb)        | The code snippet is a test specification for the `NotificationComponent` class. Currently, there are no implemented examples. It contains a pending example and a commented-out example to render the component and expect certain content in it.                                                                                                                                                                        |
| [notification_component.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/components/notification_component.html.erb)       | This code snippet generates a toast notification element with dynamic content. It includes a title, body, icon, and a close button. The toast can have different colors and styling based on the type specified. The toast fades in and can be dismissed by clicking the close button.                                                                                                                                   |
| [album_component.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/components/album_component.html.erb)                     | The code snippet is a HTML template used to display an album with an image. It includes dynamic elements such as the image, title, and event date. There is also a conditional form for verifying the album password, but it is currently not rendered since the condition is 1 == 0 (false).                                                                                                                            |
| [string_searcher_component.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/components/string_searcher_component.html.erb) | The provided code snippet is a form that handles searching functionality. It includes a search field with auto-complete disabled. It uses a debounce controller to delay search requests for a smoother user experience. The form also includes an icon for visual representation.                                                                                                                                       |
| [album_component.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/components/album_component.rb)                                 | The provided code snippet defines an AlbumComponent class with a parameterized album collection. It has an initialize method that sets the instance variable @album. The render? method checks whether the album is present, published, and has attached images using logger.debug.                                                                                                                                      |
| [string_searcher_component.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/components/string_searcher_component.rb)             | The provided code is a Ruby class called StringSearcherComponent that inherits from the ViewComponent::Base class. It has various attributes like path, attribute, placeholder, kind, regex, and options. The initialize method sets these attributes based on input parameters or default values. This component can be used for creating a search functionality in a view.                                             |
| [notification_component.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/components/notification_component.rb)                   | The code snippet defines a NotificationComponent class that takes in a type and data as parameters. It initializes the data and type attributes and provides methods to determine the icon, color, background color, dark background color, and dark text color based on the type.                                                                                                                                       |

</details>

<details closed><summary>Models</summary>

| File                                                                                                                  | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ---                                                                                                                   | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| [report_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/models/report_spec.rb)              | The provided code snippet defines a pending RSpec test for the Report model in a Rails application. The purpose of this test is to add examples to the test file or remove the pending declaration if no tests are needed.                                                                                                                                                                                                                                                                              |
| [price_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/models/price_spec.rb)                | The code snippet is a placeholder for a pending test example for the Price model in a Rails application. The purpose is to add actual test examples or delete the placeholder, as indicated by the comment embedded in the string.                                                                                                                                                                                                                                                                      |
| [contact_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/models/contact_spec.rb)            | The code snippet defines a pending RSpec example for the Contact model in a Rails application. It is currently empty and needs examples to be added or deleted in the file being referred to.                                                                                                                                                                                                                                                                                                           |
| [user_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/models/user_spec.rb)                  | This code snippet defines a pending test suite for the User model using RSpec and Rails. It serves as a placeholder for future tests to be added for the User model.                                                                                                                                                                                                                                                                                                                                    |
| [product_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/models/product_spec.rb)            | The provided code is a test file written in RSpec for a Product model in a Rails application. It currently has no examples, as indicated by the "pending" statement.                                                                                                                                                                                                                                                                                                                                    |
| [category_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/models/category_spec.rb)          | This code is a simple test case using RSpec framework for a model called Category. It only contains a pending example.                                                                                                                                                                                                                                                                                                                                                                                  |
| [contact.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/models/contact.rb)                       | This code snippet defines a Contact model with various validations and scopes. It ensures that each contact has a valid title, name, email, and body. It also triggers sending emails after a contact is created. Scopes are used to filter contacts based on whether they have been read or unread, and sort them by creation date.                                                                                                                                                                    |
| [user.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/models/user.rb)                             | The provided code snippet defines a "User" model class that inherits from "ApplicationRecord." It includes various default devise modules for authentication, registration, password recovery, and session management. It also defines an "enum" for user roles, allowing the values "user," "client," and "admin" to be assigned to the "role" attribute.                                                                                                                                              |
| [album.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/models/album.rb)                           | This code snippet is for an Album model in a Rails application. It includes functionality for generating a friendly slug, managing attached images, setting statuses (draft or publish), validating the title, updating image counters, and performing various scoped queries. It also has methods for counting images uploaded within date ranges and updating the status based on a published_at attribute.                                                                                           |
| [application_record.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/models/application_record.rb) | The code snippet defines an abstract class called ApplicationRecord which extends ActiveRecord::Base. It marks ApplicationRecord as the primary abstract class. Further details are not provided in the snippet.                                                                                                                                                                                                                                                                                        |
| [report.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/models/report.rb)                         | This code snippet defines a "Report" model that has one attached file. It utilizes the "has_one_attached" method from the "ActiveRecord" module provided by Ruby on Rails to enable file attachment functionality.                                                                                                                                                                                                                                                                                      |
| [price.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/models/price.rb)                           | The code snippet defines a Price class that is an ActiveRecord model representing the price of any type of object it is associated with through a polymorphic association.                                                                                                                                                                                                                                                                                                                              |
| [product.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/models/product.rb)                       | This code sets up a Product model with the following functionalities:-Uses "Friendly ID" gem for friendly URLs-Belongs to a category-Has a rich text description-Has many prices, which can be associated with other models-Has many attached images, with different variants for different devices-Calculates the amount and price with VAT-Includes a private section for potential future additions or modifications (currently empty)                                                               |
| [category.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/models/category.rb)                     | This code snippet defines the Category model with the following core functionalities:-Implements friendly URLs using the name attribute as a slug.-Establishes relationships with subcategories, parent category, and products.-Validates the presence and uniqueness of the name attribute, and presence of the parent attribute if present.-Sets a default level for the category based on its parent's level.-Normalizes the name attribute by removing accents, upcasing, and stripping whitespace. |

</details>

<details closed><summary>Requests</summary>

| File                                                                                                               | Summary                                                                                                                                                                                                                                                                                                                                        |
| ---                                                                                                                | ---                                                                                                                                                                                                                                                                                                                                            |
| [pages_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/requests/pages_spec.rb)           | The code snippet is a test case that describes a request to the root path "/". It checks if the response status is successful, meaning it returns an HTTP success status code.                                                                                                                                                                 |
| [products_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/requests/products_spec.rb)     | The code snippet is a set of RSpec tests for a generated Rails controller. It tests the various functionalities of the Products controller, including rendering views, creating, updating, and deleting products. The tests use valid and invalid attributes to ensure the correct behavior of the controller actions.                         |
| [categories_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/requests/categories_spec.rb) | This code snippet is a test suite written with RSpec for a Rails controller that handles CRUD operations for categories. It includes tests for rendering responses, creating, updating, and destroying categories. The tests ensure that the controller functions as expected and that the specified routes and actions are working correctly. |
| [contacts_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/requests/contacts_spec.rb)     | This code snippet is a test suite written in RSpec for a Rails controller called "Contacts". It tests various actions such as index, show, new, edit, create, update, and destroy. The tests validate if the responses are successful, if a new contact is created, if the contact is updated, and if a contact is destroyed.                  |

</details>

<details closed><summary>Mailers</summary>

| File                                                                                                                   | Summary                                                                                                                                                                                                                                                                                                                                                                                                          |
| ---                                                                                                                    | ---                                                                                                                                                                                                                                                                                                                                                                                                              |
| [album_mailer_spec.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/mailers/album_mailer_spec.rb)  | The provided code is a test suite written using the RSpec library in Rails. It is meant to test the functionalities of the AlbumMailer class. As of now, there are no examples written for testing and the reason is stated as "pending" in the test suite.                                                                                                                                                      |
| [application_mailer.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/mailers/application_mailer.rb) | This code defines an ApplicationMailer class that inherits from ActionMailer::Base. It sets a default from address, specifies a mailer layout, and adds a view path for mailers.                                                                                                                                                                                                                                 |
| [album_mailer.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/mailers/album_mailer.rb)             | This code defines a mailer class called AlbumMailer. It includes two methods: purge_notification and publish_notification. Both methods set instance variables based on input parameters and then send an email to a specified recipient.                                                                                                                                                                        |
| [contact_mailer.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/mailers/contact_mailer.rb)         | The code snippet defines a ContactMailer class with two mailer methods, client_email and admin_email. client_email sends an email to a contact with a "Gracias por tu petición" subject. admin_email sends an email to a specific email address with a "Nueva petición de contacto" subject.                                                                                                                     |
| [error_mailer.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/mailers/error_mailer.rb)             | The code provides two functions in the ErrorMailer class. The `import_error` function takes in an exception, backtrace, and info, and sends an email with the error details to'cisco.glez@gmail.com'. The subject of the email depends on the existence of an exception.The `import_summary` function takes in an info parameter and sends a summary email to'cisco.glez@gmail.com' containing the process name. |

</details>

<details closed><summary>Previews</summary>

| File                                                                                                                                 | Summary                                                                                                 |
| ---                                                                                                                                  | ---                                                                                                     |
| [album_mailer_preview.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/spec/mailers/previews/album_mailer_preview.rb) | The code defines a MailerPreview class for album emails, but does not implement any core functionality. |

</details>

<details closed><summary>Db</summary>

| File                                                                                  | Summary                                                                                                                                                                                                                                                                                                                                                                                                          |
| ---                                                                                   | ---                                                                                                                                                                                                                                                                                                                                                                                                              |
| [schema.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/schema.rb) | The provided code snippet defines the database schema using Active Record in the Rails framework. It includes tables for storing rich texts, file attachments, albums, categories, contacts, friendly URL slug mappings, product prices, reports, and users. The schema also establishes foreign key relationships between certain tables. Extensions for supporting database functionality are enabled as well. |
| [seeds.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/seeds.rb)   | The code snippet creates a user with the email "sadmin@test.com" if it doesn't already exist. It then generates 500 album records with random titles, dates, and other attributes, and updates their status.                                                                                                                                                                                                     |

</details>

<details closed><summary>Migrate</summary>

| File                                                                                                                                                                                                  | Summary                                                                                                                                                                                                                                                                                                                                                                      |
| ---                                                                                                                                                                                                   | ---                                                                                                                                                                                                                                                                                                                                                                          |
| [20230712195015_create_active_storage_tables.active_storage.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230712195015_create_active_storage_tables.active_storage.rb) | This code snippet is a migration file for Active Storage in Rails. It creates three tables: active_storage_blobs, active_storage_attachments, and active_storage_variant_records. These tables store file metadata and associations between files and records. It uses the primary and foreign key types configured in Rails and creates necessary indexes and foreign keys. |
| [20230714125701_create_categories.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230714125701_create_categories.rb)                                                     | This code snippet creates a table called "categories" with certain columns for a database using ActiveRecord migration. The table includes columns for name, parent_id, level, icon, main, and timestamps. It also sets some columns to be non-null and adds an index for the name column with a uniqueness constraint.                                                      |
| [20230716170004_add_slug_to_albums.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230716170004_add_slug_to_albums.rb)                                                   | The code snippet is an ActiveRecord migration that adds a column called "slug" of type string to the "albums" table and creates a unique index on the "slug" column.                                                                                                                                                                                                         |
| [20230712195017_devise_create_users.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230712195017_devise_create_users.rb)                                                 | This code snippet creates a "users" table in the database with various columns for user authentication and tracking purposes. It includes fields for user information, password encryption, password recovery, session tracking, email confirmation, and account locking. Indexes are also added for efficient querying and to enforce uniqueness on certain columns.        |
| [20230712195013_create_friendly_id_slugs.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230712195013_create_friendly_id_slugs.rb)                                       | The code creates a migration class that helps create a table for storing slugs, which are unique identifiers for records. It sets up the necessary columns and indexes for efficient querying of slugs.                                                                                                                                                                      |
| [20230712195016_create_action_text_tables.action_text.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230712195016_create_action_text_tables.action_text.rb)             | This code snippet contains a migration file for creating tables related to Action Text feature in Ruby on Rails 6. It creates a table for storing rich text content, including fields for name, body, record reference, and timestamps. It also includes a unique index constraint. The migration uses configured primary and foreign key types.                             |
| [20230716170003_create_albums.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230716170003_create_albums.rb)                                                             | This code snippet creates a table called "albums" in the database. The table has columns for title, password, code, counter, emails, date_event, published_at, and status. Some columns have default values or constraints.                                                                                                                                                  |
| [20230712195011_enable_pg_trgm_extension.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230712195011_enable_pg_trgm_extension.rb)                                       | The code snippet enables the pg_trgm extension in a Postgres database, allowing for advanced text matching and similarity calculations.                                                                                                                                                                                                                                      |
| [20230712195010_enable_unaccent_extension.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230712195010_enable_unaccent_extension.rb)                                     | The code snippet enables the "unaccent" extension for the ActiveRecord model, allowing for unaccented search queries in the database.                                                                                                                                                                                                                                        |
| [20230716125739_create_prices.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230716125739_create_prices.rb)                                                             | This code snippet creates a prices table with various columns including references to a polymorphic priciable object. It also includes virtual columns for amount in cents, amount with VAT, and amount without VAT.                                                                                                                                                         |
| [20230714164602_add_slug_to_products.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230714164602_add_slug_to_products.rb)                                               | This code snippet adds a'slug' column to the'products' table in the database, of type string. An index with the unique constraint is also created on the'slug' column for efficient querying.                                                                                                                                                                                |
| [20230714125702_add_slug_to_categories.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230714125702_add_slug_to_categories.rb)                                           | This code snippet adds a "slug" column to the "categories" table in the database using ActiveRecord migrations, and also creates a unique index on the "slug" column. The "slug" column allows for representing category names in a SEO-friendly and URL-friendly manner.                                                                                                    |
| [20230715144952_create_contacts.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230715144952_create_contacts.rb)                                                         | The provided code snippet creates a contact table in a PostgreSQL database using ActiveRecord in Ruby on Rails. The table has columns for name, body, phone, email, title, and additional data stored as JSONB. It also includes timestamp columns for created_at and updated_at.                                                                                            |
| [20230714164601_create_products.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230714164601_create_products.rb)                                                         | This code snippet creates a "products" table in a database, with columns for category references, name, pvp price, stock quantity, meta tags (in JSON format), tax rate, and timestamps. The name column has a unique index.                                                                                                                                                 |
| [20230810183711_create_reports.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230810183711_create_reports.rb)                                                           | This code snippet creates a database table named "reports" with a UUID as the primary key and timestamps to track the creation and modification of each report.                                                                                                                                                                                                              |
| [20230712195012_enable_uuid_pgcrypto_extension.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/db/migrate/20230712195012_enable_uuid_pgcrypto_extension.rb)                           | This code snippet enables the'pgcrypto' extension in a PostgreSQL database, allowing the generation of UUIDs (Universally Unique Identifiers) as primary keys for tables in Rails migrations.                                                                                                                                                                                |

</details>

<details closed><summary>Tasks</summary>

| File                                                                                                                 | Summary                                                                                                                                                                                                                                                                                     |
| ---                                                                                                                  | ---                                                                                                                                                                                                                                                                                         |
| [import_full_data.rake](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/lib/tasks/import_full_data.rake) | This code snippet imports albums and attachments from a CSV file using concurrent threads. It organizes the data by album, attaches blobs to albums, saves albums, and handles errors. It also collects general information about the import process and sends an email summary at the end. |
| [.keep](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/lib/tasks/.keep)                                 | The code snippet creates a class to represent a car. It has properties like make, model, and year. It also includes getter and setter methods for each property. The code follows object-oriented principles to encapsulate car details and provides access to them.                        |
| [fly.rake](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/lib/tasks/fly.rake)                           | The code snippet defines tasks for deploying a Rails application. It includes steps for restoring the database, building the application, releasing and migrating the database, running the server, as well as optional tasks for managing a swap file and SSH/console access.              |
| [auto_runner.rake](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/lib/tasks/auto_runner.rake)           | The code provides a custom rake task "auto_import_all" that runs three import tasks: "import:albums", "import:blobs_from_csv", and "import:attachments_from_csv". After successful execution, it prints a success message.                                                                  |

</details>

<details closed><summary>Import_active_storage</summary>

| File                                                                                                                                                               | Summary                                                                                                                                                                                                                                                                                |
| ---                                                                                                                                                                | ---                                                                                                                                                                                                                                                                                    |
| [import_active_storage_images.rake](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/lib/tasks/import_active_storage/import_active_storage_images.rake) | This code snippet imports active_storage_blobs and attachments data from CSV files. It retrieves album mappings, creates the necessary blobs and attachments, and updates the albums if needed. It also handles errors during the import process and sends corresponding error emails. |
| [import_albums.rake](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/lib/tasks/import_active_storage/import_albums.rake)                               | This code snippet imports albums from a CSV file, creates new albums with the imported data, and exports a mapping of old album IDs to new UUIDs. It also saves the mapping CSV file to Digital Ocean Spaces.                                                                          |

</details>

<details closed><summary>Config</summary>

| File                                                                                                          | Summary                                                                                                                                                                                                                                                                                                                                                                                                                      |
| ---                                                                                                           | ---                                                                                                                                                                                                                                                                                                                                                                                                                          |
| [environment.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/environment.rb)           | The code snippet loads and initializes a Ruby on Rails application, by requiring the "application" file and invoking the Rails application initialization process.                                                                                                                                                                                                                                                           |
| [routes.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/routes.rb)                     | This code snippet defines the routes for a Rails application. It includes routes for admin functionality, album management, category management, contact management, image uploading, product management, user authentication, and more.                                                                                                                                                                                     |
| [tailwind.config.js](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/tailwind.config.js)   | The provided code snippet is a configuration file for the Tailwind CSS framework. It specifies the content to be processed, sets the dark mode to be based on a CSS class, extends the theme with a custom font, and includes several plugins.                                                                                                                                                                               |
| [application.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/application.rb)           | This code snippet is for a Rails application and it configures various frameworks and settings for the project. It includes modules for active model, active job, active record, active storage, action controller, action mailer, action text, action view, and action cable. It sets the time zone, available locales, and default locale. It also configures generators, variant processing, and view component previews. |
| [importmap.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/importmap.rb)               | The code snippet defines pinned npm packages to be loaded and used in an application. The packages are preloaded for faster performance. It also specifies specific files or URLs to use for each package, including Hotwire Turbo-Rails, Stimulus, Action Text, Active Storage, and external packages like Swiper, Dropzone, and Just-Extend. This helps manage and import the required packages efficiently.               |
| [boot.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/boot.rb)                         | This code snippet initializes the environment variable `BUNDLE_GEMFILE` to the path of the Gemfile. It then sets up the necessary gems listed in the Gemfile using Bundler.                                                                                                                                                                                                                                                  |
| [puma.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/puma.rb)                         | This code snippet configures Puma, a web server, to handle incoming requests using a pool of threads. It sets the minimum and maximum thread counts, worker timeout, port, environment, and the pidfile. It also provides options for clustering and preloading the application. Finally, it includes a plugin for restarting Puma.                                                                                          |
| [credentials.yml.enc](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/credentials.yml.enc) | The code snippet is a compressed string, likely encoded with Base64. It is difficult to provide a comprehensive summary of the core functionalities without further context or knowledge of the specific code.                                                                                                                                                                                                               |

</details>

<details closed><summary>Initializers</summary>

| File                                                                                                                                       | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ---                                                                                                                                        | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| [content_security_policy.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/initializers/content_security_policy.rb)   | This code snippet configures the content security policy for a Ruby on Rails application. It defines the allowed sources for various types of content, such as fonts and images. It also specifies a nonce generator for session-based scripts and allows violation reports.                                                                                                                                                                                                                                            |
| [pagy.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/initializers/pagy.rb)                                         | The provided code snippet is the initializer file for Pagy, a gem used for pagination in Rails applications. It allows customization of various Pagy variables and includes numerous extra features for both backend and frontend functionality. These extras include support for array pagination, integration with Elasticsearch and Searchkick, support for different frontend frameworks, customizable metadata, items per page selection, handling of overflowing pages, and internationalization (I18n) features. |
| [permissions_policy.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/initializers/permissions_policy.rb)             | The code snippet defines an HTTP permissions policy for an application. It prevents access to certain features like the camera, gyroscope, microphone, and USB. It allows self-origin access to fullscreen mode and a specific payment origin.                                                                                                                                                                                                                                                                          |
| [mailjet.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/initializers/mailjet.rb)                                   | The code snippet initializes the Mailjet gem with the specified API key, secret key, and default sender email address by using the Figaro gem for environment variable access.                                                                                                                                                                                                                                                                                                                                          |
| [assets.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/initializers/assets.rb)                                     | This code snippet configures the asset pipeline in a Rails application. It sets the assets version, adds additional asset paths, and specifies which assets to precompile.                                                                                                                                                                                                                                                                                                                                              |
| [inflections.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/initializers/inflections.rb)                           | The code snippet is a configuration file where you can define custom inflection rules for singular and plural forms of words in different languages. It also supports acronyms and uncountable words. The inflection rules are used to convert words automatically in the application.                                                                                                                                                                                                                                  |
| [filter_parameter_logging.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/initializers/filter_parameter_logging.rb) | The code snippet configures parameters that should be filtered from log files, aiming to prevent sensitive information like passwords, tokens, and social security numbers from being displayed.                                                                                                                                                                                                                                                                                                                        |
| [devise.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/initializers/devise.rb)                                     | HTTPStatus Exception: 400                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |

</details>

<details closed><summary>Environments</summary>

| File                                                                                                             | Summary                                                                                                                                                                                                                                                                                                |
| ---                                                                                                              | ---                                                                                                                                                                                                                                                                                                    |
| [test.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/environments/test.rb)               | This code snippet configures the test environment by enabling caching, setting up public file server, configuring email delivery, disabling various protections, enabling local file system storage for uploaded files, and managing deprecations and translations.                                    |
| [staging.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/environments/staging.rb)         | This code snippet includes configurations for various aspects of a Rails application, such as caching, error reporting, asset serving, logging, email delivery, and storage. It also sets up the application to use the Mailjet delivery method for sending emails.                                    |
| [production.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/environments/production.rb)   | This code snippet configures various settings for a Rails application, including caching, error reporting, asset management, logging, email delivery, and storage service. It also sets up the Mailjet delivery method for sending emails. The configuration is tailored for a production environment. |
| [development.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/config/environments/development.rb) | This code snippet configures various settings for a Rails application in the development environment. It includes configuration for caching, server timing, active storage, action mailer, and more. The code also sets up the mailjet delivery method for sending emails.                             |

</details>

<details closed><summary>Images</summary>

| File                                                                                                                                       | Summary                                                                                                                                                                                                                                                                                                                                   |
| ---                                                                                                                                        | ---                                                                                                                                                                                                                                                                                                                                       |
| [_album.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/albums/images/_album.html.erb)                     | The provided code snippet displays a grid layout of images in a container. It uses responsive design and can accommodate different column layouts based on the screen size. It also includes a pagination feature using Turbo Frames to enable lazy loading of images.                                                                    |
| [_image.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/albums/images/_image.html.erb)                     | This code snippet uses Turbo Frames to display an image. It generates a container with CSS styling, including size, border, shadow, and hover effects. Inside the container, the image is displayed using an HTML figure and specified CSS properties. The image source is retrieved using Rails' blob URL and set as the image's source. |
| [_verify_password.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/albums/images/_verify_password.html.erb) | The code renders a form within a modal. The form sends a post request to the verify_password_album_path with the entered password. The form is displayed with a password input field and a submit button. The form updates the page with turbo frames.                                                                                    |

</details>

<details closed><summary>Confirmations</summary>

| File                                                                                                                   | Summary                                                                                                                                                                                                                                             |
| ---                                                                                                                    | ---                                                                                                                                                                                                                                                 |
| [new.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/users/confirmations/new.html.erb) | The provided code snippet is a form used to resend confirmation instructions to a user's email address. It includes input fields for email address, error message display, and a submit button. The form is encapsulated within a styled container. |

</details>

<details closed><summary>Unlocks</summary>

| File                                                                                                             | Summary                                                                                                                                                                                                                                                                                      |
| ---                                                                                                              | ---                                                                                                                                                                                                                                                                                          |
| [new.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/users/unlocks/new.html.erb) | The given code snippet is a template form used to resend unlocking instructions to a user's email address. It contains an input field for the email address and a submit button to trigger the resend action. Additionally, it includes error message handling and links to related actions. |

</details>

<details closed><summary>Passwords</summary>

| File                                                                                                                 | Summary                                                                                                                                                                                                                                                                                          |
| ---                                                                                                                  | ---                                                                                                                                                                                                                                                                                              |
| [new.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/users/passwords/new.html.erb)   | The code snippet is a template for a "Forgot Password" form in an application. It allows users to enter their email address and submit a request to reset their password. The form includes validation for displaying error messages and styling for a user-friendly interface.                  |
| [edit.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/users/passwords/edit.html.erb) | The provided code snippet is a form that allows users to change their password. It includes fields for entering a new password and confirming the new password, along with a submit button to initiate the password change. It is a front-end implementation using HTML and ERB template syntax. |

</details>

<details closed><summary>Shared</summary>

| File                                                                                                                                    | Summary                                                                                                                                                                                                                                                                                                                                                                                         |
| ---                                                                                                                                     | ---                                                                                                                                                                                                                                                                                                                                                                                             |
| [_links.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/users/shared/_links.html.erb)                   | The code snippet is a set of conditional statements that generate various links for different authentication functionalities. It includes links for logging in, signing up, recovering passwords, confirming email, unlocking accounts, and signing in with third-party providers. The links are conditionally generated based on the current controller and configured authentication options. |
| [_error_messages.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/users/shared/_error_messages.html.erb) | This code snippet checks if there are any errors in a resource. If errors are present, it displays an error message along with a list of error messages in a specific format.                                                                                                                                                                                                                   |
| [_aside_nav.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/layouts/shared/_aside_nav.html.erb)         | This code snippet is a sidebar component written in HTML and embedded Ruby. It includes a logo, navigation links (such as Home, Albums, Categories, etc.), and a menu toggle button. The sidebar has a fixed position on the screen for smaller devices.                                                                                                                                        |
| [_modal.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/layouts/shared/_modal.html.erb)                 | This code snippet is for a modal component that displays a grid view with 12 items. Each item has a placeholder image and some text placeholders. When the modal is opened, it displays a content container with a close button. The code also includes the necessary styles and behaviors for the modal functionality.                                                                         |
| [_navbar.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/layouts/shared/_navbar.html.erb)               | This code snippet defines a header component with a responsive navigation menu. It includes a logo, a toggle button for the mobile menu, and dropdown menus for different categories and user options. It also handles user authentication by displaying login/signup options or the user's email and logout button when signed in.                                                             |
| [_footer.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/layouts/shared/_footer.html.erb)               | This code snippet creates a footer section with a dark background, containing links to pages like terms and conditions, privacy policy, and cookies policy. It also displays the current year and a stylized logo for "LaGramola Disco.                                                                                                                                                         |
| [_notification.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/layouts/shared/_notification.html.erb)   | This code snippet renders a set of notification components for each flash message, using the provided type and data. It iterates over the flash messages and instantiates a new NotificationComponent for each message, passing in the type and data. The component is then rendered and added to the notification container.                                                                   |

</details>

<details closed><summary>Sessions</summary>

| File                                                                                                              | Summary                                                                                                                                                                                                              |
| ---                                                                                                               | ---                                                                                                                                                                                                                  |
| [new.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/users/sessions/new.html.erb) | This code snippet is for a login form. It includes fields for email and password, as well as options to login using email, Facebook, Google, or Twitter. It also provides links for password reset and registration. |

</details>

<details closed><summary>Registrations</summary>

| File                                                                                                                     | Summary                                                                                                                                                                                                                                                                                                                                                              |
| ---                                                                                                                      | ---                                                                                                                                                                                                                                                                                                                                                                  |
| [new.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/users/registrations/new.html.erb)   | The provided code snippet is a registration form with input fields for email and password. It includes validation error messages, form authenticity token, and a submit button. It also includes social media buttons for signing up with Facebook, Google, and Twitter.                                                                                             |
| [edit.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/users/registrations/edit.html.erb) | The provided code snippet is a HTML template for an "Editar Cuenta" (Edit Account) form. It includes fields for email, password, password confirmation, and current password. Users can update their account details by submitting the form. Additionally, there is an option to cancel the account by clicking the "Cancelar mi cuenta" (Cancel my account) button. |

</details>

<details closed><summary>Mailer</summary>

| File                                                                                                                                                            | Summary                                                                                                                                                                                                                                                                                                                                                 |
| ---                                                                                                                                                             | ---                                                                                                                                                                                                                                                                                                                                                     |
| [email_changed.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/users/mailer/email_changed.html.erb)                             | This code snippet generates an HTML email that notifies a user about a change in their email address. It checks whether the new email address is confirmed or unconfirmed and includes the new email in the message accordingly.                                                                                                                        |
| [password_change.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/users/mailer/password_change.html.erb)                         | This code snippet is a template for sending a notification email to a user. It dynamically includes the user's email address in the greeting and informs them that their password has been changed.                                                                                                                                                     |
| [unlock_instructions.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/users/mailer/unlock_instructions.html.erb)                 | This code snippet generates an email stating that an account has been locked due to multiple unsuccessful login attempts. It includes the user's email address and a link to unlock the account using the generated unlock token.                                                                                                                       |
| [confirmation_instructions.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/users/mailer/confirmation_instructions.html.erb)     | The provided code snippet generates a personalized email template for confirming a user's account. It includes the user's email address and provides a link that directs them to confirm their account by clicking on it.                                                                                                                               |
| [reset_password_instructions.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/users/mailer/reset_password_instructions.html.erb) | The code snippet is an email template that generates a password reset email. It dynamically inserts the user's email address and generates a unique reset password link. If the user didn't request the password change, they can ignore the email. The password won't be changed until the user accesses the provided link and creates a new password. |

</details>

<details closed><summary>Blobs</summary>

| File                                                                                                                        | Summary                                                                                                                                                                                               |
| ---                                                                                                                         | ---                                                                                                                                                                                                   |
| [_blob.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/active_storage/blobs/_blob.html.erb) | This code snippet generates a figure element that includes an image and accompanying caption. If the image has a caption, it gets displayed. Otherwise, the filename and size of the image are shown. |

</details>

<details closed><summary>Turbo_streams</summary>

| File                                                                                                                                                                | Summary                                                                                                                                                                                                                                                                                                       |
| ---                                                                                                                                                                 | ---                                                                                                                                                                                                                                                                                                           |
| [search_results.turbo_stream.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/albums/turbo_streams/search_results.turbo_stream.erb) | The code snippet updates the'search_results' view section with the updated albums data. It specifies the partial view'admin/albums/search_results' and passes the filtered albums as local variables.                                                                                                         |
| [publish.turbo_stream.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/albums/turbo_streams/publish.turbo_stream.erb)               | The code snippet uses Turbo Streams to replace an album with an updated partial view and prepend a notification partial to the "notification" stream.                                                                                                                                                         |
| [create.turbo_stream.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/albums/turbo_streams/create.turbo_stream.erb)                 | The code snippet uses Turbo Streams in Ruby on Rails to update and display content dynamically. It replaces the content of a specified album with a partial containing a form. It also prepends a notification partial to the "notification" element.                                                         |
| [update.turbo_stream.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/albums/turbo_streams/update.turbo_stream.erb)                 | The code snippet uses Turbo Streams to dynamically update the search results and append a notification to the webpage.                                                                                                                                                                                        |
| [destroy.turbo_stream.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/albums/turbo_streams/destroy.turbo_stream.erb)               | The code snippet is using Turbo Streams, a feature of Ruby on Rails, to achieve real-time updates on a webpage.-The first line removes an @album object from the webpage using Turbo Streams.-The second line appends a "notification" partial to the beginning of the "notification" element in the webpage. |
| [create.turbo_stream.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/categories/turbo_streams/create.turbo_stream.erb)             | The code snippet uses Turbo Streams to dynamically update the search results by prepending a partial called "category" to the "search_results" section. It also prepends a notification partial to the "notification" section, allowing for real-time updates without a page reload.                          |
| [update.turbo_stream.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/categories/turbo_streams/update.turbo_stream.erb)             | The code snippet is using Turbo Streams to prepend a category partial to the'search_results' element and a notification partial to the'notification' element. The'category' variable is passed as a local variable to the category partial.                                                                   |
| [destroy.turbo_stream.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/categories/turbo_streams/destroy.turbo_stream.erb)           | The code snippet removes the @category element from the page using Turbo Streams and then prepends a "notification" element by rendering the "layouts/shared/notification" partial.                                                                                                                           |

</details>

<details closed><summary>Dashboard</summary>

| File                                                                                                                   | Summary                                                                                           |
| ---                                                                                                                    | ---                                                                                               |
| [index.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/admin/dashboard/index.html.erb) | The code snippet displays a basic "Hello World" message along with the email of the current user. |

</details>

<details closed><summary>Layouts</summary>

| File                                                                                                                       | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| ---                                                                                                                        | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| [mailer.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/layouts/mailer.html.erb)           | The provided code snippet is an HTML email template that includes a header, content section, and footer. It uses CSS for styling, including font choices, background colors, padding, and alignment. The template is designed to have a responsive layout and is targeted for Spanish language. It also includes placeholders for dynamic content using the "yield" tag. The footer includes company information and a contact email address. The overall design is clean and professional. |
| [mailer.text.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/layouts/mailer.text.erb)           | The code snippet is using the yield keyword to dynamically insert the content defined in the view template into the layout template. This allows for flexible and reusable layouts, ensuring the appropriate content is displayed based on the specific view being rendered.                                                                                                                                                                                                                |
| [application.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/layouts/application.html.erb) | This code snippet is an HTML template for a web application. It includes various meta tags, imports stylesheets and javascript, and renders shared components such as a navbar, notification, and footer. The main content is rendered within a flex container. It also uses a Turbo frame tag for a modal.                                                                                                                                                                                 |
| [error.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/layouts/error.html.erb)             | This code snippet is a basic HTML template that sets up the structure for a web page. It includes meta tags, imports stylesheets and JavaScript, and defines the main content area where the page's content will be rendered.                                                                                                                                                                                                                                                               |
| [admin.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/layouts/admin.html.erb)             | This code snippet is an HTML template that includes various CSS and JavaScript dependencies. It sets up a basic layout with a main container and includes separate partials for notifications and an aside navigation when a user is signed in. The dynamic content is rendered in the main container.                                                                                                                                                                                      |

</details>

<details closed><summary>Searcher</summary>

| File                                                                                                                                               | Summary                                                                                                                                                                                                                                                                                                                                                       |
| ---                                                                                                                                                | ---                                                                                                                                                                                                                                                                                                                                                           |
| [_search_results.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/layouts/shared/searcher/_search_results.html.erb) | This code snippet checks for errors and emptiness, and generates HTML elements accordingly. If there is an error, it displays the error message with some styling. If there are no resources, it displays a "0 resultados" message with styling. If there are resources, it displays each resource with a link to edit and highlights the resource attribute. |
| [_search_form.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/layouts/shared/searcher/_search_form.html.erb)       | The code snippet renders the StringSearcherComponent with custom options. It specifies the search path, attribute, and includes additional options like a placeholder text and a regex parameter retrieved from the params.                                                                                                                                   |

</details>

<details closed><summary>Contents</summary>

| File                                                                                                                                      | Summary                                                                                                                                                                                              |
| ---                                                                                                                                       | ---                                                                                                                                                                                                  |
| [_content.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/layouts/action_text/contents/_content.html.erb) | The code snippet is a template engine construct that yields the content of a block. The yield command allows dynamic insertion of content at runtime, making the template reusable and customizable. |

</details>

<details closed><summary>Errors</summary>

| File                                                                                                      | Summary                                                                                                                                                                                                             |
| ---                                                                                                       | ---                                                                                                                                                                                                                 |
| [404.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/errors/404.html.erb) | The code snippet displays a custom 404 error page with a red background and a message informing the user that the page they are looking for could not be found. It also provides a link to return to the main page. |
| [500.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/errors/500.html.erb) | The code snippet is a HTML and CSS template for an error page. It displays a red circle with a white diagonal cross, accompanied by an error message and a button to return to the homepage.                        |
| [403.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/errors/403.html.erb) | This code snippet creates a visually appealing error page displaying the "Error 403: Acceso denegado" message in a red box. It also provides a description and a link to return to the homepage.                    |

</details>

<details closed><summary>Error_mailer</summary>

| File                                                                                                                                          | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| ---                                                                                                                                           | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| [import_error.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/mailers/error_mailer/import_error.html.erb)     | This code generates an ActiveStorage import report from a CSV file, displaying process details, environment info, actions performed, and any skipped blobs with their respective errors. It also handles exceptions and displays error logs.                                                                                                                                                                                                                                                   |
| [import_summary.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/mailers/error_mailer/import_summary.html.erb) | The provided code snippet generates an HTML table that displays various process information. It includes details such as process name, start time, end time, environment, Ruby and Rails versions, user, total rows, successful and failed albums, total duration, RAM and CPU usage, and system load. It also handles printing errors (if any), showing album titles, error messages, problem blob information, and backtraces. Some basic styling is applied to the table and error section. |

</details>

<details closed><summary>Album_mailer</summary>

| File                                                                                                                                                      | Summary                                                                                                                                                                                                                                                                            |
| ---                                                                                                                                                       | ---                                                                                                                                                                                                                                                                                |
| [purge_notification.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/mailers/album_mailer/purge_notification.html.erb)     | The provided code snippet is a view template that generates a message about deleting an album. It displays the removed album's name, the number of images deleted, and an optional error message if present. It provides a concise and informative summary of the removal process. |
| [publish_notification.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/mailers/album_mailer/publish_notification.html.erb) | The code displays a message with the name of a published album and a link to access it. It also allows users to share the link with friends and guests for them to access the album as well.                                                                                       |

</details>

<details closed><summary>Contact_mailer</summary>

| File                                                                                                                                        | Summary                                                                                                                                                                                                                                                                                                                  |
| ---                                                                                                                                         | ---                                                                                                                                                                                                                                                                                                                      |
| [admin_email.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/mailers/contact_mailer/admin_email.html.erb)   | The code snippet generates an email template for a new contact request, including the contact's name, email, and title.                                                                                                                                                                                                  |
| [client_email.html.erb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/views/mailers/contact_mailer/client_email.html.erb) | The provided code snippet generates a personalized message by combining the HTML and Ruby code. It retrieves the name of a contact and displays it dynamically in the HTML code. Additionally, it also provides a response message, thanking the contact for their request and stating that they will be contacted soon. |

</details>

<details closed><summary>Application_cable</summary>

| File                                                                                                                      | Summary                                                                                                                                                                                                                                                          |
| ---                                                                                                                       | ---                                                                                                                                                                                                                                                              |
| [channel.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/channels/application_cable/channel.rb)       | The code snippet defines a Channel class in the ApplicationCable module, which is a subclass of ActionCable::Channel::Base. This class is likely to be used for implementing socket connections and handling real-time communication within an application.      |
| [connection.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/channels/application_cable/connection.rb) | The provided code snippet creates a connection class in the ApplicationCable module, which inherits from ActionCable's base connection class. It establishes the foundation for communication between clients and the server in a ActionCable-based application. |

</details>

<details closed><summary>Jobs</summary>

| File                                                                                                                            | Summary                                                                                                                                                                                                                                                                                                                                                                                  |
| ---                                                                                                                             | ---                                                                                                                                                                                                                                                                                                                                                                                      |
| [publish_album_job.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/jobs/publish_album_job.rb)               | The code snippet is an implementation of a background job that publishes an album. If the album is already published, it logs a message. If the album has a scheduled publication date in the future, it logs the date.Otherwise, it publishes the album, logs a message, generates a magic link to verify the album password, and sends a notification email.                           |
| [purge_images_job.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/jobs/purge_images_job.rb)                 | The code is a background job that deletes all images from an album and then destroys the album itself. It handles any errors that occur during the deletion process and sends an email notification with the album's name, the number of images deleted, and any error messages.                                                                                                         |
| [update_image_counter_job.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/jobs/update_image_counter_job.rb) | This code snippet defines a background job called UpdateImageCounterJob. It retrieves an album based on the provided id, updates its current host and user_id, and checks if the counter matches the number of images. If not, it updates the counter and logs the activity. Any errors encountered during this process are logged and an error email is sent with relevant information. |
| [application_job.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/jobs/application_job.rb)                   | This code snippet represents a base class for job processing in the Ruby on Rails framework. It includes the functionalities to automatically retry jobs that encountered a deadlock and to discard jobs if the underlying records are no longer available.                                                                                                                              |

</details>

<details closed><summary>Helpers</summary>

| File                                                                                                                   | Summary                                                                                                                                                                                                                                             |
| ---                                                                                                                    | ---                                                                                                                                                                                                                                                 |
| [application_helper.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/helpers/application_helper.rb) | The code snippet defines the "active_link_to" method in the "ApplicationHelper" module. This method generates a link with an active class if it matches the current page. It can handle both plain text and URL links, allowing for custom options. |

</details>

<details closed><summary>Controllers</summary>

| File                                                                                                                                              | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ---                                                                                                                                               | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| [categories_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/categories_controller.rb)                  | The code defines a CategoriesController that skips user authentication for the index and show methods. The index method fetches all categories and assigns them to a variable. The show method is left empty, suggesting that it is not implemented yet.                                                                                                                                                                                                                                                                                                                         |
| [albums_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/albums_controller.rb)                          | This code snippet is for an AlbumsController that has several core functionalities:1. The index action retrieves all published albums, using the pagy_countless gem for pagination.2. The show action displays a specific album along with its images, also using pagy_countless for pagination.3. The verify_password action handles password verification for an album before granting access to its images.The code utilizes the Turbo Streams format for rendering HTML responses and partials.                                                                              |
| [products_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/products_controller.rb)                      | The code is for a ProductsController that includes various actions. The index action retrieves products based on the category, and if there is no category present, it retrieves all products. The show action displays a specific product. The code also includes a private method, set_category, which sets the @category instance variable based on the category_id parameter if present. The code also uses skip_before_action and before_action filters for authentication purposes. Overall, this code allows for the display and retrieval of products based on category. |
| [application_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/application_controller.rb)                | The code snippet defines a controller class in a web application. It includes pagination functionality, adds flash message types, ensures user authentication, and sets the thread local variable'host' to the current request's host.                                                                                                                                                                                                                                                                                                                                           |
| [errors_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/errors_controller.rb)                          | This code snippet defines an ErrorsController class that handles rendering error pages. It retrieves the status code of the exception thrown, determines the corresponding view to render based on the code, and renders the view with the appropriate status code. It supports 403, 404, and 500 error codes.                                                                                                                                                                                                                                                                   |
| [contacts_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/contacts_controller.rb)                      | This code snippet is a Ruby on Rails controller for managing contacts. It allows for creating new contacts through a form submission. The "new" action sets up instance variables for the form, and the "create" action saves the contact to the database. It handles both HTML and JSON responses based on the request format. Authorized request parameters are whitelisted using strong parameters for security.                                                                                                                                                              |
| [pages_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/pages_controller.rb)                            | The code snippet defines a controller class called PagesController. It skips authentication for the #index action, meaning that users don't need to be authenticated to access the index page. The #index action itself does nothing.                                                                                                                                                                                                                                                                                                                                            |
| [swiper_controller.js](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/javascript/controllers/swiper_controller.js)               | The provided code snippet is a Stimulus controller that initializes and manages a swiper component. It creates a swiper on the specified target element, with navigations buttons, breakpoints for responsive slide behavior, and destroy the swiper on disconnect.                                                                                                                                                                                                                                                                                                              |
| [toast_controller.js](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/javascript/controllers/toast_controller.js)                 | This code snippet defines a controller class that is responsible for connecting an HTML container element. When connected, the controller starts a timer using the given timeout value and triggers a close function. The close function adds a class to fade out the container element and removes it after a delay.                                                                                                                                                                                                                                                            |
| [carousel_controller.js](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/javascript/controllers/carousel_controller.js)           | This code snippet defines a controller class for managing slides and indicators. It provides functions for navigating to a specific slide, going to the previous slide, and going to the next slide. Slides are hidden and shown based on their index. It also updates the indicators to reflect the current slide.                                                                                                                                                                                                                                                              |
| [index.js](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/javascript/controllers/index.js)                                       | The code imports and registers controllers from the importmap under the "controllers/*" path. It then eagerly loads all controllers defined in the import map under the "controllers/**/*_controller" path. The code also includes commented code for lazy loading controllers as they appear in the DOM.                                                                                                                                                                                                                                                                        |
| [hello_controller.js](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/javascript/controllers/hello_controller.js)                 | The code snippet imports a Controller class from the "@hotwired/stimulus" library. It extends the Controller class and overrides the connect() method to set the text content of the element to "Hello World!" when the controller is connected to the page.                                                                                                                                                                                                                                                                                                                     |
| [navbar_controller.js](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/javascript/controllers/navbar_controller.js)               | This code snippet defines a controller class that extends a base controller from the "@hotwired/stimulus" library. It has two target elements: "mainMenu" and "categorySubmenu". It provides two functions, toggleMainMenu() and toggleCatSubmenu(), which toggle the'hidden' class on the respective target elements when called.                                                                                                                                                                                                                                               |
| [dropzone_controller.js](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/javascript/controllers/dropzone_controller.js)           | This code snippet is a Dropzone controller using a library called "@hotwired/stimulus". It allows users to upload multiple files and remove files. The uploaded files are sent to a server, and the removed files are deleted from the server. The controller is initialized when connecting and destroyed when disconnecting.                                                                                                                                                                                                                                                   |
| [debounce_controller.js](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/javascript/controllers/debounce_controller.js)           | This code defines a Stimulus controller that manages a search feature. It has targets for a form, input field, and an icon. The search function checks if the input field is empty and shows or hides the icon accordingly. It sets a timeout and submits the form after a 250ms delay.                                                                                                                                                                                                                                                                                          |
| [application.js](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/javascript/controllers/application.js)                           | The code initializes and starts the Stimulus application, configuring its development experience to disable debugging. It then exports the application for use in other modules.                                                                                                                                                                                                                                                                                                                                                                                                 |
| [image_preview_controller.js](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/javascript/controllers/image_preview_controller.js) | This code snippet defines an "ImagePreviewController" class that is a controller in the Stimulus framework. It has targets for input, preview, svg, and message elements. The "connect" function logs a message to the console. The "previewImage" function handles the logic for previewing selected images, updating the preview and displaying messages based on the selected files.                                                                                                                                                                                          |

</details>

<details closed><summary>Concerns</summary>

| File                                                                                                | Summary                                                                                                                                                                                                                                                |
| ---                                                                                                 | ---                                                                                                                                                                                                                                                    |
| [.keep](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/concerns/.keep) | The code snippet provides a basic implementation of a counter application using JavaScript. It initializes a counter variable, and allows the user to increment, decrement, or reset the counter value. The updated value is displayed on the webpage. |
| [.keep](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/models/concerns/.keep)      | This code snippet defines a function that accepts an integer parameter. It constructs a list of numbers by incrementing each previous number by 2, starting from the given integer. The resulting list is then printed.                                |

</details>

<details closed><summary>Users</summary>

| File                                                                                                                                                   | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| ---                                                                                                                                                    | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| [sessions_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/users/sessions_controller.rb)                     | This code snippet is a skeleton for a controller in a Rails application. It extends Devise's SessionsController and provides empty methods for signing in, creating a new session, and signing out. Additionally, it includes a commented out method for configuring sign-in parameters.                                                                                                                                                              |
| [omniauth_callbacks_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/users/omniauth_callbacks_controller.rb) | The code snippet is a skeleton for an OmniAuth callbacks controller in a Rails application that implements Devise for user authentication. It contains commented out methods for handling different callbacks and customizing behavior for OmniAuth failures.                                                                                                                                                                                         |
| [unlocks_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/users/unlocks_controller.rb)                       | The code snippet is a controller class for handling user account unlocks in a web application. It extends Devise's UnlocksController and includes several commented out methods that override the parent class's methods. These methods handle actions like rendering unlock forms, submitting unlock requests, and redirecting after successful unlocks.                                                                                             |
| [confirmations_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/users/confirmations_controller.rb)           | The code snippet defines a controller for confirming user registrations in a web application using the Devise gem. It specifies the routes and their corresponding actions for handling new confirmation requests, creating confirmation instructions, and displaying the confirmation page. The commented-out methods are overrides available for customizing the paths after resending confirmation instructions and after successful confirmation. |
| [passwords_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/users/passwords_controller.rb)                   | This code snippet defines a custom controller for managing user passwords in a Rails application, extending the base Devise::PasswordsController. It includes predefined methods for handling password-related actions such as creating, editing, and updating passwords, as well as defining paths for redirecting after password resets and sending reset instructions.                                                                             |
| [registrations_controller.rb](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/controllers/users/registrations_controller.rb)           | The provided code snippet is a subclass of Devise's RegistrationsController. It includes overridden methods for after_sign_up_path_for to redirect users to the root path after successful sign up. Other methods and configurations are commented out and not currently being used.                                                                                                                                                                  |

</details>

<details closed><summary>Javascript</summary>

| File                                                                                                        | Summary                                                                                                                      |
| ---                                                                                                         | ---                                                                                                                          |
| [application.js](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/app/javascript/application.js) | Exception:                                                                                                                   |
| [.keep](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/vendor/javascript/.keep)                | The code snippet defines a function that calculates the factorial of a given number n using recursion and prints the result. |

</details>

<details closed><summary>Bin</summary>

| File                                                                                                   | Summary                                                                                                                                                                                                                                                                                                                            |
| ---                                                                                                    | ---                                                                                                                                                                                                                                                                                                                                |
| [setup](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/bin/setup)                         | The given code snippet is a Ruby script that automates the setup and update process for a development environment. It installs dependencies (such as the Bundler gem), prepares the database, clears logs and tempfiles, and restarts the application server. This script ensures a consistent and reliable outcome when executed. |
| [rails](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/bin/rails)                         | This code snippet sets the necessary path for the application, requires dependencies, and invokes Rails commands, providing an entry point for running the Rails application within a Ruby environment.                                                                                                                            |
| [importmap](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/bin/importmap)                 | The code snippet is a Ruby script that imports the necessary files and gems (via `require_relative` and `require`) for executing import map commands. It assumes the existence of a configuration file and utilizes the Importmap gem to perform relevant operations.                                                              |
| [docker-entrypoint](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/bin/docker-entrypoint) | This code snippet is a bash script that initializes a container and executes a command passed as arguments to the script.                                                                                                                                                                                                          |
| [dev](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/bin/dev)                             | This code snippet checks if the foreman gem is installed and installs it if not. It then executes the foreman command to start the application using the specified Procfile.dev, passing any additional arguments.                                                                                                                 |
| [bundle](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/bin/bundle)                       | This code snippet is a script that facilitates the running of the "bundle" application. It checks for the Bundler version from various sources, activates the Bundler gem, and then loads the "bundle" binary if the script was invoked as a command.                                                                              |
| [rake](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/bin/rake)                           | This code snippet is a Ruby script that loads necessary dependencies, including a boot file and the Rake gem, and then triggers the execution of a Rake application.                                                                                                                                                               |

</details>

<details closed><summary>Public</summary>

| File                                                                                    | Summary                                                                                                                                                                                                                                                                                                   |
| ---                                                                                     | ---                                                                                                                                                                                                                                                                                                       |
| [500.html](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/public/500.html) | The code snippet is an HTML document that displays a default error page for a web application when a server error occurs (specifically, a 500 error). It includes a styled layout with a heading and a paragraph instructing the application owner to check the logs for more information.                |
| [404.html](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/public/404.html) | The provided code snippet is a simple HTML page for a 404 error. It includes styling to display a centered message, informing the user that the requested page doesn't exist. It also prompts the application owner to check the logs for more information.                                               |
| [422.html](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/public/422.html) | The provided code snippet is an HTML error page that displays a message stating that the change the user wanted was rejected. It includes styling for the page's layout and displays a brief explanation for the rejection. Additionally, it suggests checking the application logs for more information. |

</details>

<details closed><summary>Tmp</summary>

| File                                                                           | Summary                                                                                                                                                                                                                                                                      |
| ---                                                                            | ---                                                                                                                                                                                                                                                                          |
| [.keep](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/tmp/.keep) | The code snippet performs a basic implementation of a linked list data structure. It includes methods to insert, delete, and search for elements in the list. Overall, it allows for efficient manipulation of a collection of nodes linked together in a sequential manner. |

</details>

<details closed><summary>Pids</summary>

| File                                                                                | Summary                                                                                                                                                                                                                                                                                               |
| ---                                                                                 | ---                                                                                                                                                                                                                                                                                                   |
| [.keep](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/tmp/pids/.keep) | The provided code snippet defines a class with a core functionality of reading and parsing data from a file. It initializes an instance with the file path, has a method to load the data into memory, and returns the parsed data as a list of objects with attributes defined by the file contents. |

</details>

<details closed><summary>Log</summary>

| File                                                                           | Summary                                                                                                                                                                                                                                                                                                                                                                                          |
| ---                                                                            | ---                                                                                                                                                                                                                                                                                                                                                                                              |
| [.keep](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/log/.keep) | This code snippet declares a class called "TechLead" with the core functionalities of a tech lead. It includes properties such as "name" and "expertise" describing the lead's identification and skillset. The class also has methods for assigning tasks, providing feedback, and mentoring team members, facilitating effective leadership and coordination in software development projects. |

</details>

<details closed><summary>Vendor</summary>

| File                                                                              | Summary                                                                                                                                  |
| ---                                                                               | ---                                                                                                                                      |
| [.keep](https://github.com/ciscoLegrand/gramoladiscomobil/blob/main/vendor/.keep) | The code snippet is a function that takes a list of user objects and returns the ones that have a'role' property matching a given value. |

</details>

---

## 🚀 Getting Started

### ✔️ Prerequisites

Before you begin, ensure that you have the following prerequisites installed:
> - `ℹ️ Requirement 1`
> - `ℹ️ Requirement 2`
> - `ℹ️ ...`

### 📦 Installation

1. Clone the gramoladiscomobil repository:
```sh
git clone https://github.com/ciscoLegrand/gramoladiscomobil
```

2. Change to the project directory:
```sh
cd gramoladiscomobil
```

3. Install the dependencies:
```sh
bundle install
```

### 🎮 Using gramoladiscomobil

```sh
ruby main.rb
```

### 🧪 Running Tests
```sh
rspec
```

---


## 🗺 Roadmap

> - [X] `ℹ️  Task 1: Implement X`
> - [ ] `ℹ️  Task 2: Refactor Y`
> - [ ] `ℹ️ ...`


---

## 🤝 Contributing

Contributions are always welcome! Please follow these steps:
1. Fork the project repository. This creates a copy of the project on your account that you can modify without affecting the original project.
2. Clone the forked repository to your local machine using a Git client like Git or GitHub Desktop.
3. Create a new branch with a descriptive name (e.g., `new-feature-branch` or `bugfix-issue-123`).
```sh
git checkout -b new-feature-branch
```
4. Make changes to the project's codebase.
5. Commit your changes to your local branch with a clear commit message that explains the changes you've made.
```sh
git commit -m 'Implemented new feature.'
```
6. Push your changes to your forked repository on GitHub using the following command
```sh
git push origin new-feature-branch
```
7. Create a new pull request to the original project repository. In the pull request, describe the changes you've made and why they're necessary.
The project maintainers will review your changes and provide feedback or merge them into the main branch.

---

## 📄 License

This project is licensed under the `ℹ️  INSERT-LICENSE-TYPE` License. See the [LICENSE](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository) file for additional info.

---

## 👏 Acknowledgments

> - `ℹ️  List any resources, contributors, inspiration, etc.`

---


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
