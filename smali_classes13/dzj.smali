.class public final Ldzj;
.super Ljava/lang/Object;
.source "VoiceNotifyImpl.java"

# interfaces
.implements Ldzg;


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Ldzj;->a:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Ldzj;->a:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Ldzj;->c:Landroid/app/NotificationManager;

    .line 1109
    iget-object v0, p0, Ldzj;->b:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1113
    new-instance v0, Ldzj$1;

    invoke-direct {v0, p0}, Ldzj$1;-><init>(Ldzj;)V

    iput-object v0, p0, Ldzj;->b:Landroid/content/BroadcastReceiver;

    .line 1126
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "im_action_click_voice_record_notify"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1127
    iget-object v1, p0, Ldzj;->a:Landroid/content/Context;

    iget-object v2, p0, Ldzj;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    .line 2132
    :try_start_0
    iget-object v0, p0, Ldzj;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2133
    iget-object v0, p0, Ldzj;->a:Landroid/content/Context;

    iget-object v1, p0, Ldzj;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2134
    const/4 v0, 0x0

    iput-object v0, p0, Ldzj;->b:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2139
    :cond_0
    :goto_0
    return-void

    .line 2136
    :catch_0
    move-exception v0

    .line 2137
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2138
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "VoiceNotifyImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 5
    .param p1, "orderId"    # J

    .prologue
    .line 61
    long-to-int v0, p1

    .line 63
    .local v0, "id":I
    :try_start_0
    iget-object v2, p0, Ldzj;->c:Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "VoiceNotifyImpl"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;)Z
    .locals 11
    .param p1, "orderId"    # J
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x3e8

    const/4 v4, 0x0

    .line 46
    long-to-int v1, p1

    .line 47
    .local v1, "id":I
    iget-object v5, p0, Ldzj;->a:Landroid/content/Context;

    .line 2079
    if-eqz v5, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2080
    :cond_0
    const/4 v0, 0x0

    .line 48
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 50
    .local v2, "notification":Landroid/app/Notification;
    :try_start_0
    iget-object v5, p0, Ldzj;->c:Landroid/app/NotificationManager;

    invoke-virtual {v5, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 2083
    .end local v0    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v2    # "notification":Landroid/app/Notification;
    :cond_1
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 2084
    sget v6, Lctk$i;->dt_service_deployment_recording:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2085
    sget v7, Lctk$i;->dt_deploy_record_more:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2087
    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 2088
    invoke-virtual {v8, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 2089
    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 2090
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lctk$e;->notification_icon_big:I

    invoke-static {v7, v8}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    sget v7, Lctk$e;->notification_icon_small:I

    .line 2091
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 2092
    invoke-virtual {v6, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, -0xffff01

    .line 2093
    invoke-virtual {v6, v7, v9, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2095
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "im_action_click_voice_record_notify"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2096
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2097
    const-string/jumbo v7, "url"

    invoke-virtual {v6, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2099
    const/high16 v7, 0x8000000

    invoke-static {v5, v1, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 2102
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2103
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 51
    .restart local v0    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v2    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v3

    .line 52
    .local v3, "tr":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    const-string/jumbo v5, "im"

    const-string/jumbo v6, "VoiceNotifyImpl"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
