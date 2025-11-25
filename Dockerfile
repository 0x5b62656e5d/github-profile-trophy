FROM denoland/deno:alpine

WORKDIR /app

COPY . .

# Default PORT (Coolify will override with env)
ENV PORT=8080

EXPOSE 8080

# Permissions:
# --allow-net  : GitHub API + Redis
# --allow-env  : read PORT, tokens, Redis vars, etc.
# --allow-read : for any local file access
CMD ["run", "--allow-net", "--allow-env", "--allow-read", "main.ts"]
