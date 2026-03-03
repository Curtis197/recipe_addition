import { useTranslations } from "next-intl";
import { getTranslations } from "next-intl/server";
import type { Metadata } from "next";

export async function generateMetadata(): Promise<Metadata> {
  const t = await getTranslations("landing.hero");
  return {
    title: t("title"),
    description: t("subtitle"),
  };
}

export default function LandingPage() {
  const t = useTranslations("landing.hero");

  return (
    <main className="min-h-screen flex flex-col items-center justify-center bg-background px-4">
      <div className="max-w-2xl text-center space-y-6">
        <h1 className="text-5xl font-bold text-foreground tracking-tight">
          {t("title")}
        </h1>
        <p className="text-xl text-muted-foreground">{t("subtitle")}</p>
        <div className="flex flex-col sm:flex-row gap-4 justify-center pt-4">
          <a
            href="#"
            className="inline-flex items-center justify-center rounded-lg bg-primary px-8 py-3 text-sm font-semibold text-primary-foreground hover:bg-primary/90 transition-colors"
          >
            {t("ctaDownload")}
          </a>
          <a
            href="/auth/signup"
            className="inline-flex items-center justify-center rounded-lg border border-primary px-8 py-3 text-sm font-semibold text-primary hover:bg-primary/5 transition-colors"
          >
            {t("ctaCreator")}
          </a>
        </div>
      </div>
      <p className="mt-16 text-xs text-muted-foreground">
        🚧 Page en construction — Akeli V1
      </p>
    </main>
  );
}
