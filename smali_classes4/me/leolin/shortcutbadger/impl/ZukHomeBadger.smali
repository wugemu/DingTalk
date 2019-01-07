.class public Lme/leolin/shortcutbadger/impl/ZukHomeBadger;
.super Lme/leolin/shortcutbadger/ShortcutBadger;
.source "ZukHomeBadger.java"


# instance fields
.field private final b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lme/leolin/shortcutbadger/ShortcutBadger;-><init>(Landroid/content/Context;)V

    .line 16
    const-string/jumbo v0, "content://com.android.badge/badge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lme/leolin/shortcutbadger/impl/ZukHomeBadger;->b:Landroid/net/Uri;

    .line 20
    return-void
.end method


# virtual methods
.method protected final executeBadge(I)V
    .locals 5
    .param p1, "badgeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/leolin/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, "extra":Landroid/os/Bundle;
    const-string/jumbo v1, "app_badge_count"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    iget-object v1, p0, Lme/leolin/shortcutbadger/impl/ZukHomeBadger;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lme/leolin/shortcutbadger/impl/ZukHomeBadger;->b:Landroid/net/Uri;

    const-string/jumbo v3, "setAppBadgeCount"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 27
    return-void
.end method

.method public isSupportLaunchers(Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentHomePackage"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string/jumbo v0, "com.zui.launcher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
