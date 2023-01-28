# Створити структуру даних для студентів з імен та прізвищ, можна випадкових.
# Придумати структуру даних, щоб вказувати, у якій групі навчається студент (Групи Python, FrontEnd, FullStack, Java).
# Студент може навчатися у кількох групах. Потім вивести:
# -- студентів, які навчаються у двох та більше групах.
# -- студентів, які не навчаються на фронтенді.
# -- студентів, які вивчають Python або Java.

python = {'batrak', 'mironchuk', 'deyneka'}
java = {'deyneka', 'melnik', 'procenko'}
frontend = {'hodus', 'bihus', 'kepich'}
fullstack = {'ivanina', 'kepich', 'kozhushko'}
groups = [python, java, frontend, fullstack]

def find_active_students(groups):
    active_students = set()
    for num, group in enumerate(groups):
        for other in groups[num+1:]:
            active_students.update(group & other)
    return active_students

print(find_active_students(groups))
back_students = python | java
front_students = fullstack | frontend
print(back_students - front_students)
print(back_students | front_students)

