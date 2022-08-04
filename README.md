# rails_test_ar_relations

In your console:

```bash
docker build -t rails_test .
docker run -it --rm -v $(pwd):/opt/app rails_test
```

In the bash you've just logged in:

```
bash-5.1$ rails db:reset
bash-5.1$ rails db:migrate:reset
bash-5.1$ rails db:fixtures:load
bash-5.1$ rails c
```

Enjoy :)
