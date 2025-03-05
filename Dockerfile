FROM squidfunk/mkdocs-material

RUN pip install mkdocs_puml
RUN pip install mkdocs-awesome-nav

CMD ["serve", "--dev-addr=0.0.0.0:8000"]