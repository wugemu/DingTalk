.class public Lme/leolin/shortcutbadger/impl/OppoHomeBadger;
.super Lme/leolin/shortcutbadger/ShortcutBadger;
.source "OppoHomeBadger.java"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lme/leolin/shortcutbadger/ShortcutBadger;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lme/leolin/shortcutbadger/impl/OppoHomeBadger;->b:I

    .line 18
    return-void
.end method


# virtual methods
.method protected final executeBadge(I)V
    .locals 6
    .param p1, "badgeCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v3, 0x63

    .line 22
    iget v2, p0, Lme/leolin/shortcutbadger/impl/OppoHomeBadger;->b:I

    if-ne v2, p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iget v2, p0, Lme/leolin/shortcutbadger/impl/OppoHomeBadger;->b:I

    if-le v2, v3, :cond_2

    if-gt p1, v3, :cond_0

    .line 28
    :cond_2
    iput p1, p0, Lme/leolin/shortcutbadger/impl/OppoHomeBadger;->b:I

    .line 30
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "app_badge_count"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    iget-object v2, p0, Lme/leolin/shortcutbadger/impl/OppoHomeBadger;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "content://com.android.badge/badge"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "setAppBadgeCount"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    .end local v1    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isSupportLaunchers(Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentHomePackage"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string/jumbo v0, "com.oppo.launcher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
