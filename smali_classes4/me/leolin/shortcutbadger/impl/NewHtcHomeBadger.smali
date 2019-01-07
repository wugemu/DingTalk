.class public Lme/leolin/shortcutbadger/impl/NewHtcHomeBadger;
.super Lme/leolin/shortcutbadger/ShortcutBadger;
.source "NewHtcHomeBadger.java"


# static fields
.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final EXTRA_COMPONENT:Ljava/lang/String; = "com.htc.launcher.extra.COMPONENT"

.field public static final EXTRA_COUNT:Ljava/lang/String; = "com.htc.launcher.extra.COUNT"

.field public static final INTENT_SET_NOTIFICATION:Ljava/lang/String; = "com.htc.launcher.action.SET_NOTIFICATION"

.field public static final INTENT_UPDATE_SHORTCUT:Ljava/lang/String; = "com.htc.launcher.action.UPDATE_SHORTCUT"

.field public static final PACKAGENAME:Ljava/lang/String; = "packagename"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lme/leolin/shortcutbadger/ShortcutBadger;-><init>(Landroid/content/Context;)V

    .line 26
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
    .line 31
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.htc.launcher.action.SET_NOTIFICATION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, "intent1":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lme/leolin/shortcutbadger/impl/NewHtcHomeBadger;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lme/leolin/shortcutbadger/impl/NewHtcHomeBadger;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .local v2, "localComponentName":Landroid/content/ComponentName;
    const-string/jumbo v3, "com.htc.launcher.extra.COMPONENT"

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string/jumbo v3, "com.htc.launcher.extra.COUNT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    iget-object v3, p0, Lme/leolin/shortcutbadger/impl/NewHtcHomeBadger;->a:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "packagename"

    invoke-virtual {p0}, Lme/leolin/shortcutbadger/impl/NewHtcHomeBadger;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string/jumbo v3, "count"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    iget-object v3, p0, Lme/leolin/shortcutbadger/impl/NewHtcHomeBadger;->a:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method public isSupportLaunchers(Ljava/lang/String;)Z
    .locals 3
    .param p1, "currentHomePackage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.htc.launcher"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
