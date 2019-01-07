.class public Lme/leolin/shortcutbadger/impl/DefaultBadger;
.super Lme/leolin/shortcutbadger/ShortcutBadger;
.source "DefaultBadger.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lme/leolin/shortcutbadger/ShortcutBadger;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected final executeBadge(I)V
    .locals 3
    .param p1, "badgeCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "badge_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    const-string/jumbo v1, "badge_count_package_name"

    invoke-virtual {p0}, Lme/leolin/shortcutbadger/impl/DefaultBadger;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string/jumbo v1, "badge_count_class_name"

    invoke-virtual {p0}, Lme/leolin/shortcutbadger/impl/DefaultBadger;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    iget-object v1, p0, Lme/leolin/shortcutbadger/impl/DefaultBadger;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public isSupportLaunchers(Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentHomePackage"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method
