.class public Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;
.super Lme/leolin/shortcutbadger/ShortcutBadger;
.source "SmartisanHomeBadger.java"


# static fields
.field public static final ACTION_CLEAR_MESSAGE:Ljava/lang/String; = "com.smartisanos.launcher.clear_message"

.field public static final ACTION_NEW_MESSAGE:Ljava/lang/String; = "com.smartisanos.launcher.new_message"

.field public static final EXTRA_COMPONENTNAME:Ljava/lang/String; = "extra_componentname"

.field public static final EXTRA_COMPONENT_LIST:Ljava/lang/String; = "extra_component_list"

.field public static final EXTRA_MESSAGE_COUNT:Ljava/lang/String; = "extra_message_count"

.field public static final EXTRA_PACKAGENAME:Ljava/lang/String; = "extra_packagename"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lme/leolin/shortcutbadger/ShortcutBadger;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method static synthetic a(Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;

    .prologue
    .line 18
    invoke-virtual {p0}, Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final executeBadge(I)V
    .locals 3
    .param p1, "badgeCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.smartisanos.launcher.new_message"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "extra_packagename"

    iget-object v2, p0, Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string/jumbo v1, "extra_componentname"

    invoke-virtual {p0}, Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string/jumbo v1, "extra_message_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method public initReceiver()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger$1;

    invoke-direct {v0, p0}, Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger$1;-><init>(Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;)V

    .line 57
    .local v0, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.smartisanos.launcher.clear_message"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lme/leolin/shortcutbadger/impl/SmartisanHomeBadger;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method public isSupportLaunchers(Ljava/lang/String;)Z
    .locals 4
    .param p1, "currentHomePackage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 41
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "com.smartisanos.launcher"

    aput-object v3, v2, v0

    const-string/jumbo v3, "com.smartisanos.home"

    aput-object v3, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "smartisan"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "com.android.launcher3"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method
