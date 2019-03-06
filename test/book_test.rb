require_relative 'test_helper'

class TestBook < Minitest::Test
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  def go_home
    visit "http://localhost:4000"
  end

  def go_toc
    visit "http://localhost:4000/toc"
  end

  def click_next_link
    first(:link, "Next").click
  end

  def click_previous_link
    first(:link, "Previous").click
  end

  def test_home_about_link
    go_home
    click_link "About Joy of Elixir"
    assert page.has_content?("The book is currently very much a work-in-progress")
  end

  def test_home_read_it_online_link
    go_home
  end

  def test_toc_navigation_i
    go_toc
    click_link "But who is this book for really?"
    assert page.has_content?("I. But who is this book for, really?")
  end

  def test_toc_navigation_ii
    go_toc
    click_link "Elixir? Isn't that something you drink?"
    assert page.has_content?("II. Elixir? Isn't that something you drink?")
  end

  def test_toc_navigation_1
    go_toc
    click_link "Appeasing the masses with code"
    assert page.has_content?("1. Appeasing the masses with code")
  end

  def test_toc_navigation_2
    go_toc
    click_link "Now, where did I put that value?"
    assert page.has_content?("2. Now, where did I put that value?")
  end

  def test_toc_navigation_3
    go_toc
    click_link "Lovely lists"
    assert page.has_content?("3. Lovely lists")
  end

  def test_toc_navigation_4
    go_toc
    click_link "Marvellous maps"
    assert page.has_content?("4. Marvellous maps")
  end

  def test_toc_navigation_5
    go_toc
    click_link "Funky functions"
    assert page.has_content?("5. Funky functions")
  end

  def test_toc_navigation_6
    go_toc
    click_link "Pattern matching"
    assert page.has_content?("6. Pattern matching")
  end

  def test_toc_navigation_7
    go_toc
    click_link "Part 2: Recap"
    assert page.has_content?("7. Part 2: Recap")
  end

  def test_toc_navigation_8
    go_toc
    click_link "Working with strings, input and output"
    assert page.has_content?("8. Working with strings, input and output")
  end

  def test_toc_navigation_9
    go_toc
    click_link "Working with lists"
    assert page.has_content?("9. Working with lists")
  end

  def test_toc_navigation_10
    go_toc
    click_link "Working with maps"
    assert page.has_content?("10. Working with maps")
  end

  def test_toc_navigation_11
    go_toc
    click_link "Working with files"
    assert page.has_content?("11. Working with files")
  end

  def test_toc_navigation_12
    go_toc
    click_link "Conditional code"
    assert page.has_content?("12. Conditional code")
  end

  def test_toc_navigation_13
    go_toc
    click_link "Finding more functions"
    assert page.has_content?("13. Finding more functions")
  end

  def test_toc_navigation_14
    go_toc
    click_link "Modules and Structs"
    assert page.has_content?("14. Modules and Structs")
  end

  def test_toc_setup_and_install
    go_toc
    click_link "Setup and install"
    assert page.has_content?("Appendix A: Setup and Install")
  end

  def test_walkthrough_forwards
    visit "http://localhost:4000/i-but-who-is-this-book-for-really/"
    click_next_link
    assert page.has_content?("II. Elixir? Isn't that something you drink?")
    click_next_link
    assert page.has_content?("1. Appeasing the masses with code")
    click_next_link
    assert page.has_content?("2. Now, where did I put that value?")
    click_next_link
    assert page.has_content?("3. Lovely lists")
    click_next_link
    assert page.has_content?("4. Marvellous maps")
    click_next_link
    assert page.has_content?("5. Funky functions")
    click_next_link
    assert page.has_content?("6. Pattern matching")
    click_next_link
    assert page.has_content?("7. Part 2: Recap")
    click_next_link
    assert page.has_content?("8. Working with strings, input and output")
    click_next_link
    assert page.has_content?("9. Working with lists")
    click_next_link
    assert page.has_content?("10. Working with maps")
    click_next_link
    assert page.has_content?("11. Working with files")
    click_next_link
    assert page.has_content?("12. Conditional code")
    click_next_link
    assert page.has_content?("13. Finding more functions")
    click_next_link
    assert page.has_content?("14. Modules and Structs")
  end

  def test_walkthrough_backwards
    visit "http://localhost:4000/14-modules-and-structs"
    assert page.has_content?("14. Modules and Structs")
    click_previous_link
    assert page.has_content?("13. Finding more functions")
    click_previous_link
    assert page.has_content?("12. Conditional code")
    click_previous_link
    assert page.has_content?("11. Working with files")
    click_previous_link
    assert page.has_content?("10. Working with maps")
    click_previous_link
    assert page.has_content?("9. Working with lists")
    click_previous_link
    assert page.has_content?("8. Working with strings, input and output")
    click_previous_link
    assert page.has_content?("7. Part 2: Recap")
    click_previous_link
    assert page.has_content?("6. Pattern matching")
    click_previous_link
    assert page.has_content?("5. Funky functions")
    click_previous_link
    assert page.has_content?("4. Marvellous maps")
    click_previous_link
    assert page.has_content?("3. Lovely lists")
    click_previous_link
    assert page.has_content?("2. Now, where did I put that value?")
    click_previous_link
    assert page.has_content?("1. Appeasing the masses with code")
    click_previous_link
    assert page.has_content?("II. Elixir? Isn't that something you drink?")
    click_previous_link
    assert page.has_content?("I. But who is this book for, really?")
  end

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
