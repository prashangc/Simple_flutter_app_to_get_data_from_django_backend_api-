# Generated by Django 4.0 on 2022-01-03 14:55

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('studentName', models.CharField(max_length=100)),
                ('email', models.CharField(max_length=100)),
            ],
        ),
    ]
