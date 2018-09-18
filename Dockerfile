FROM searchathing/ubuntu

RUN echo "resolvconf resolvconf/linkify-resolvconf boolean false" | debconf-set-selections
