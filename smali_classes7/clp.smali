.class public final Lclp;
.super Ljava/lang/Object;
.source "DtChannelManager.java"


# static fields
.field private static volatile a:Lclp;


# instance fields
.field private b:Landroid/app/Application;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/alibaba/android/dingtalkbase/notification/DtChannel;",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lclp;->b:Landroid/app/Application;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lclp;->c:Ljava/util/HashMap;

    .line 28
    return-void
.end method

.method public static declared-synchronized a()Lclp;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lclp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lclp;->a:Lclp;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lclp;

    invoke-direct {v0}, Lclp;-><init>()V

    sput-object v0, Lclp;->a:Lclp;

    .line 35
    :cond_0
    sget-object v0, Lclp;->a:Lclp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Landroid/app/NotificationChannel;
    .locals 7
    .param p1, "dtChannel"    # Lcom/alibaba/android/dingtalkbase/notification/DtChannel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v6, 0x1a

    const/4 v1, 0x0

    .line 53
    monitor-enter p0

    if-nez p1, :cond_1

    move-object v0, v1

    .line 69
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 56
    :cond_1
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_2

    move-object v0, v1

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    iget-object v2, p0, Lclp;->b:Landroid/app/Application;

    invoke-static {v2}, Lbzz;->a(Landroid/content/Context;)I

    move-result v2

    if-ge v2, v6, :cond_3

    move-object v0, v1

    .line 61
    goto :goto_0

    .line 64
    :cond_3
    iget-object v2, p0, Lclp;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    .line 65
    .local v0, "notificationChannel":Landroid/app/NotificationChannel;
    if-nez v0, :cond_0

    .line 1025
    if-nez p1, :cond_4

    move-object v0, v1

    .line 67
    :goto_1
    iget-object v1, p0, Lclp;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 53
    .end local v0    # "notificationChannel":Landroid/app/NotificationChannel;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1028
    .restart local v0    # "notificationChannel":Landroid/app/NotificationChannel;
    :cond_4
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_5

    move-object v0, v1

    .line 1029
    goto :goto_1

    .line 1031
    :cond_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    .line 1032
    iget v2, p1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->nameRes:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1033
    new-instance v0, Landroid/app/NotificationChannel;

    .end local v0    # "notificationChannel":Landroid/app/NotificationChannel;
    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->id:Ljava/lang/String;

    iget v5, p1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->importance:I

    invoke-direct {v0, v4, v2, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1034
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 1035
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 1036
    sget-object v2, Lclo$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 1061
    sget v2, Lcig$i;->general:I

    invoke-static {v2}, Lclo;->a(I)Landroid/net/Uri;

    move-result-object v2

    sget-object v4, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1064
    :goto_2
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->group:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    if-eqz v2, :cond_7

    .line 1066
    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->group:Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;

    .line 1080
    if-eqz v4, :cond_6

    if-nez v4, :cond_8

    .line 1067
    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 1068
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 1072
    :cond_7
    const-string/jumbo v1, "notification"

    .line 1073
    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1074
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_1

    .line 1038
    :pswitch_0
    sget v2, Lcig$i;->general:I

    invoke-static {v2}, Lclo;->a(I)Landroid/net/Uri;

    move-result-object v2

    sget-object v4, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1039
    sget v2, Lcig$j;->dt_audio_name_520:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    goto :goto_2

    .line 1042
    :pswitch_1
    sget v2, Lcig$i;->audio_509:I

    invoke-static {v2}, Lclo;->a(I)Landroid/net/Uri;

    move-result-object v2

    sget-object v4, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1043
    sget v2, Lcig$j;->dt_audio_name_509:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    goto :goto_2

    .line 1046
    :pswitch_2
    sget v2, Lcig$i;->audio_505:I

    invoke-static {v2}, Lclo;->a(I)Landroid/net/Uri;

    move-result-object v2

    sget-object v4, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1047
    sget v2, Lcig$j;->dt_audio_name_505:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    goto :goto_2

    .line 1050
    :pswitch_3
    sget v2, Lcig$i;->audio_522:I

    invoke-static {v2}, Lclo;->a(I)Landroid/net/Uri;

    move-result-object v2

    sget-object v4, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1051
    sget v2, Lcig$j;->dt_audio_name_522:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    goto :goto_2

    .line 1054
    :pswitch_4
    sget v2, Lcig$i;->ding:I

    invoke-static {v2}, Lclo;->a(I)Landroid/net/Uri;

    move-result-object v2

    sget-object v4, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1055
    sget v2, Lcig$j;->dt_audio_name_519:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1058
    :pswitch_5
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    goto/16 :goto_2

    .line 1083
    :cond_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_6

    .line 1087
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    .line 1088
    const-string/jumbo v1, "notification"

    .line 1089
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1090
    iget v5, v4, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->nameRes:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1091
    new-instance v2, Landroid/app/NotificationChannelGroup;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/notification/DtChannelGroup;->id:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1092
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 1093
    goto/16 :goto_3

    .line 1036
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Ljava/lang/String;
    .locals 4
    .param p1, "dtChannel"    # Lcom/alibaba/android/dingtalkbase/notification/DtChannel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-object v1

    .line 44
    :cond_1
    invoke-direct {p0, p1}, Lclp;->b(Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 45
    .local v0, "notificationChannel":Landroid/app/NotificationChannel;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
