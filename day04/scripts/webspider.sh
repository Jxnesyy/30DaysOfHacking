#!/bin/bash

echo "🌐 Welcome to WebSpider"
echo "Enter the target domain (e.g., example.com):"
read domain

timestamp=$(date +%Y-%m-%d_%H-%M-%S)
output_dir="../reports/${domain}_${timestamp}"

mkdir -p "$output_dir"

echo "🕷️ Crawling $domain with wget..."

wget --mirror --convert-links --adjust-extension --page-requisites --no-parent \
     --directory-prefix="$output_dir" "http://$domain"

echo "✅ Crawl complete. Files saved to $output_dir"
