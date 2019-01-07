.class public Lme/leolin/shortcutbadger/impl/XiaomiHomeBadger;
.super Lme/leolin/shortcutbadger/ShortcutBadger;
.source "XiaomiHomeBadger.java"


# static fields
.field public static final EXTRA_UPDATE_APP_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.update_application_component_name"

.field public static final EXTRA_UPDATE_APP_MSG_TEXT:Ljava/lang/String; = "android.intent.extra.update_application_message_text"

.field public static final INTENT_ACTION:Ljava/lang/String; = "android.intent.action.APPLICATION_MESSAGE_UPDATE"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lme/leolin/shortcutbadger/ShortcutBadger;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected final executeBadge(I)V
    .locals 7
    .param p1, "badgeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/leolin/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 30
    :try_start_0
    const-string/jumbo v4, "android.app.MiuiNotification"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 31
    .local v3, "miuiNotificationClass":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 32
    .local v2, "miuiNotification":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "messageCount"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 33
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 34
    if-nez p1, :cond_0

    const-string/jumbo v4, ""

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "miuiNotification":Ljava/lang/Object;
    .end local v3    # "miuiNotificationClass":Ljava/lang/Class;
    :goto_1
    return-void

    .line 34
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "miuiNotification":Ljava/lang/Object;
    .restart local v3    # "miuiNotificationClass":Ljava/lang/Class;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 36
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "miuiNotification":Ljava/lang/Object;
    .end local v3    # "miuiNotificationClass":Ljava/lang/Class;
    :catch_0
    move-exception v4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "localIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.update_application_component_name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lme/leolin/shortcutbadger/impl/XiaomiHomeBadger;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lme/leolin/shortcutbadger/impl/XiaomiHomeBadger;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string/jumbo v5, "android.intent.extra.update_application_message_text"

    if-nez p1, :cond_1

    const-string/jumbo v4, ""

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v4, p0, Lme/leolin/shortcutbadger/impl/XiaomiHomeBadger;->a:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 39
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2
.end method

.method public isSupportLaunchers(Ljava/lang/String;)Z
    .locals 5
    .param p1, "currentHomePackage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "com.miui.miuilite"

    aput-object v3, v2, v0

    const-string/jumbo v3, "com.miui.home"

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-string/jumbo v4, "com.miui.miuihome"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "com.miui.miuihome2"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "com.miui.mihome"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "com.miui.mihome2"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 53
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v3, "Xiaomi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method
