.class public final Laey;
.super Ljava/lang/Object;
.source "MailConfShortcutHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static a()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 42
    return-object v0
.end method

.method public static b()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 55
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/app/Application;
    sget v7, Laxo$i;->dingtalk_mail:I

    invoke-virtual {v0, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "name":Ljava/lang/String;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_0

    .line 58
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;

    invoke-direct {v2, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    new-instance v7, Landroid/content/pm/ShortcutInfo$Builder;

    sget v8, Laxo$i;->dingtalk_mail:I

    .line 61
    invoke-virtual {v0, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v7, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v7

    .line 63
    invoke-virtual {v7, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v7

    sget v8, Laxo$e;->cmail_mail_dingtalk_icon:I

    .line 64
    invoke-static {v0, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v7

    .line 65
    invoke-virtual {v7, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v7

    .line 66
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    .line 68
    .local v5, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    const-class v7, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v7}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutManager;

    .line 69
    .local v6, "shortcutManager":Landroid/content/pm/ShortcutManager;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v3, "list":Ljava/util/List;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :try_start_0
    invoke-virtual {v6, v3}, Landroid/content/pm/ShortcutManager;->enableShortcuts(Ljava/util/List;)V

    .line 73
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/content/pm/ShortcutInfo;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v3    # "list":Ljava/util/List;
    .end local v5    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v6    # "shortcutManager":Landroid/content/pm/ShortcutManager;
    :goto_0
    return-void

    .line 74
    .restart local v3    # "list":Ljava/util/List;
    .restart local v5    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .restart local v6    # "shortcutManager":Landroid/content/pm/ShortcutManager;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "MailConfShortcutHelper"

    const-string/jumbo v8, " shortcutManager "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "list":Ljava/util/List;
    .end local v5    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v6    # "shortcutManager":Landroid/content/pm/ShortcutManager;
    :cond_0
    invoke-static {}, Laey;->a()Landroid/content/Intent;

    move-result-object v2

    .line 80
    .restart local v2    # "intent":Landroid/content/Intent;
    sget v7, Laxo$e;->cmail_mail_dingtalk_icon:I

    .line 81
    invoke-static {v0, v7}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v7

    .line 80
    invoke-static {v0, v2, v4, v9, v7}, Lcpp;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/Intent$ShortcutIconResource;)Z

    goto :goto_0
.end method
