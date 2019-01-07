.class public Lcom/alibaba/android/teleconf/service/ConfNotificationService;
.super Landroid/app/Service;
.source "ConfNotificationService.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/alibaba/android/teleconf/service/ConfNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/service/ConfNotificationService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 28
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 32
    .line 1063
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/service/ConfNotificationService;->stopForeground(Z)V

    .line 33
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 34
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const v8, 0x28bf9

    const/16 v9, 0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    if-eqz p1, :cond_0

    .line 39
    const-string/jumbo v0, "conf_notification_id"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/service/ConfNotificationService;->b:I

    .line 40
    const-string/jumbo v0, "conf_header_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/service/ConfNotificationService;->c:Ljava/lang/String;

    .line 42
    :cond_0
    iget v0, p0, Lcom/alibaba/android/teleconf/service/ConfNotificationService;->b:I

    if-lez v0, :cond_3

    .line 2055
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/service/ConfNotificationService;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Start foreground "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/alibaba/android/teleconf/service/ConfNotificationService;->b:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    invoke-static {p0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v7

    iget v0, p0, Lcom/alibaba/android/teleconf/service/ConfNotificationService;->b:I

    iget-object v1, p0, Lcom/alibaba/android/teleconf/service/ConfNotificationService;->c:Ljava/lang/String;

    .line 2737
    const v4, 0x28bf8

    if-ne v0, v4, :cond_4

    .line 2739
    invoke-virtual {v7}, Levu;->h()Landroid/app/PendingIntent;

    move-result-object v0

    .line 2740
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2741
    iget-object v1, v7, Levu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Leuj$l;->dt_conf_ongoing:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move v0, v2

    .line 2762
    :goto_0
    sget v6, Leuj$h;->notification_icon_small:I

    .line 2763
    if-eqz v0, :cond_a

    .line 2764
    sget v0, Leuj$h;->notification_videoconf_icon_small:I

    .line 2766
    :goto_1
    if-eqz v1, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2767
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Leuj$l;->dt_conf_click_to_going:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2769
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v8, v7, Levu;->a:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 2770
    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 2771
    invoke-virtual {v8, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 2772
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v5, v7, Levu;->a:Landroid/content/Context;

    .line 2773
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Leuj$h;->notification_icon_big:I

    invoke-static {v5, v7}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 2774
    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 2775
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v3, -0xffff01

    .line 2776
    invoke-virtual {v0, v3, v9, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2777
    invoke-virtual {v6, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2778
    invoke-virtual {v6, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2779
    invoke-static {}, Lclp;->a()Lclp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Telephone:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-virtual {v0, v1}, Lclp;->a(Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Ljava/lang/String;

    move-result-object v0

    .line 2780
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2781
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2784
    :cond_1
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 2785
    iget v0, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v5, Landroid/app/Notification;->flags:I

    .line 2057
    :cond_2
    if-eqz v5, :cond_3

    .line 2058
    iget v0, p0, Lcom/alibaba/android/teleconf/service/ConfNotificationService;->b:I

    invoke-virtual {p0, v0, v5}, Lcom/alibaba/android/teleconf/service/ConfNotificationService;->startForeground(ILandroid/app/Notification;)V

    .line 45
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 2743
    :cond_4
    const v4, 0x28bf7

    if-ne v0, v4, :cond_6

    .line 2744
    invoke-virtual {v7, v3}, Levu;->a(Z)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2745
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2746
    invoke-static {}, Lewx;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Leuj$l;->dt_conf_call_ongoing_ext:I

    .line 2747
    :goto_2
    iget-object v1, v7, Levu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v0, v2

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    .line 2748
    goto/16 :goto_0

    .line 2746
    :cond_5
    sget v0, Leuj$l;->dt_conf_call_ongoing:I

    goto :goto_2

    .line 2749
    :cond_6
    if-eq v0, v8, :cond_7

    const v4, 0x28bfa

    if-ne v0, v4, :cond_b

    .line 2751
    :cond_7
    if-ne v0, v8, :cond_9

    .line 2752
    invoke-virtual {v7}, Levu;->f()Landroid/app/PendingIntent;

    move-result-object v0

    .line 2757
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2758
    iget-object v1, v7, Levu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Leuj$l;->dt_conf_ongoing:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_8
    move-object v4, v1

    move-object v1, v0

    move v0, v3

    .line 2760
    goto/16 :goto_0

    .line 2754
    :cond_9
    invoke-virtual {v7}, Levu;->g()Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_3

    :cond_a
    move v0, v6

    goto/16 :goto_1

    :cond_b
    move v0, v2

    move-object v4, v1

    move-object v1, v5

    goto/16 :goto_0

    :cond_c
    move v0, v2

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    goto/16 :goto_0

    :cond_d
    move-object v4, v1

    move-object v1, v0

    move v0, v2

    goto/16 :goto_0
.end method
