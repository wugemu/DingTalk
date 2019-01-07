.class public Lcom/laiwang/protocol/android/LWPService;
.super Landroid/app/Service;
.source "LWPService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/LWPService$KernelService;,
        Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0xa804


# instance fields
.field private remote:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/LWPService;->remote:Z

    .line 281
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/laiwang/protocol/android/LWPService;->enableForeground()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/laiwang/protocol/android/LWPService;->getServiceNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public static cancelAutoStartService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    :try_start_0
    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 171
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-static {p0}, Lcom/laiwang/protocol/android/LWPService;->getServiceStartOperation(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "alarm":Landroid/app/AlarmManager;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static enableForeground()Z
    .locals 2

    .prologue
    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "GOOGLE"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static enableKernel()Z
    .locals 2

    .prologue
    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    const-string/jumbo v0, "XIAOMI"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "MEIZU"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getServiceNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    sget v1, Lcom/laiwang/protocol/R$drawable;->notification_icon_small:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 144
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private static getServiceStartOperation(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/laiwang/protocol/android/LWPService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static startServiceAutomaticAfterClosed(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delayed"    # I

    .prologue
    .line 155
    :try_start_0
    const-string/jumbo v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 156
    .local v0, "alarm":Landroid/app/AlarmManager;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 157
    .local v1, "c":Ljava/util/Calendar;
    const/16 v2, 0xd

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 158
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {p0}, Lcom/laiwang/protocol/android/LWPService;->getServiceStartOperation(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0    # "alarm":Landroid/app/AlarmManager;
    .end local v1    # "c":Ljava/util/Calendar;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/LWPService;->remote:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/LWPService$AidlServiceImpl;-><init>(Lcom/laiwang/protocol/android/LWPService;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 55
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v4

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/LWPService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/LWPService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/laiwang/protocol/a;->a(Landroid/app/Application;Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    new-instance v0, Lcom/laiwang/protocol/android/b;

    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/laiwang/protocol/a;->e()Lcom/laiwang/protocol/android/w;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/laiwang/protocol/android/b;-><init>(Lcom/laiwang/protocol/android/w;)V

    .line 57
    .local v0, "agent":Lcom/laiwang/protocol/android/a;
    invoke-static {v0}, Lcom/laiwang/protocol/android/LWP;->setAgent(Lcom/laiwang/protocol/android/a;)V

    .line 58
    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/laiwang/protocol/a;->b()V

    .line 59
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/LWPService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/laiwang/protocol/android/LWPService;->cancelAutoStartService(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "agent":Lcom/laiwang/protocol/android/a;
    :goto_0
    invoke-static {}, Lcom/laiwang/protocol/android/LWPService;->enableKernel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-ge v4, v5, :cond_1

    .line 66
    const v4, 0xa804

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/LWPService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/laiwang/protocol/android/LWPService;->getServiceNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/laiwang/protocol/android/LWPService;->startForeground(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :cond_0
    :goto_1
    return-void

    .line 60
    :catch_0
    move-exception v2

    .line 61
    .local v2, "ignore":Ljava/lang/Throwable;
    const-string/jumbo v4, "Bootstrap create err"

    invoke-static {v4, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    .end local v2    # "ignore":Ljava/lang/Throwable;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/laiwang/protocol/android/LWPService;->enableForeground()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/laiwang/protocol/android/LWPService$KernelService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v3, "innerIntent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/laiwang/protocol/android/LWPService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    const v4, 0xa804

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/LWPService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/laiwang/protocol/android/LWPService;->getServiceNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/laiwang/protocol/android/LWPService;->startForeground(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 73
    .end local v3    # "innerIntent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "Start foreground err"

    invoke-static {v4, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    invoke-static {}, Lcom/laiwang/protocol/android/LWPService;->enableKernel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/laiwang/protocol/android/LWPService$KernelService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/laiwang/protocol/android/LWPService;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 89
    sget-boolean v1, Lcom/laiwang/protocol/Config;->b:Z

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/LWPService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/LWPService;->startServiceAutomaticAfterClosed(Landroid/content/Context;I)V

    .line 92
    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 97
    if-eqz p1, :cond_3

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 100
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 101
    const-string/jumbo v8, "lwp.remote.agent"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 102
    const-string/jumbo v8, "lwp.remote.agent"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/laiwang/protocol/android/LWPService;->remote:Z

    .line 103
    const-string/jumbo v8, "lwp.remote.agent"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/laiwang/protocol/android/LWP;->remote:Z

    .line 105
    :cond_0
    const-string/jumbo v8, "lwp.remote.binder"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 106
    const-string/jumbo v8, "lwp.remote.binder"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/laiwang/protocol/android/LWP;->binder:Z

    .line 108
    :cond_1
    const-string/jumbo v8, "lwp.remote.cacheheaders"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "cacheHeaders":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/laiwang/protocol/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 111
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    .local v3, "jObj":Lorg/json/JSONObject;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 114
    .local v5, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 115
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 116
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 117
    .local v7, "value":Ljava/lang/String;
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v3    # "jObj":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Iterator;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .end local v0    # "cacheHeaders":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    sget-object v8, Lcom/laiwang/protocol/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 128
    const-string/jumbo v8, "[heartbeat] app keep alive alarm received"

    invoke-static {v8}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 130
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_3
    const/4 v8, 0x1

    return v8

    .line 119
    .restart local v0    # "cacheHeaders":Ljava/lang/String;
    .restart local v2    # "extras":Landroid/os/Bundle;
    .restart local v3    # "jObj":Lorg/json/JSONObject;
    .restart local v5    # "keys":Ljava/util/Iterator;
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    sput-object v6, Lcom/laiwang/protocol/android/LWP;->stickyCacheHeaders:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
