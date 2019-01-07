.class public final Lalf;
.super Ljava/lang/Object;
.source "NetworkOperatorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lalf$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "Unknown"

    sput-object v0, Lalf;->a:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lalf;->b:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    const-class v0, Lalf;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lalf;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    const-class v2, Lalf;

    monitor-enter v2

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x16

    if-ge v1, v3, :cond_1

    .line 1155
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 39
    :cond_1
    :try_start_1
    sget-object v1, Lalf;->b:Landroid/telephony/SubscriptionManager;

    if-nez v1, :cond_0

    .line 40
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 41
    new-instance v0, Lalf$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lalf$a;-><init>(Landroid/os/Looper;)V

    .line 42
    .local v0, "handlerThread":Lalf$a;
    new-instance v1, Lalf$1;

    invoke-direct {v1, p0}, Lalf$1;-><init>(Landroid/content/Context;)V

    .line 1144
    invoke-static {}, Lamu;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1149
    :try_start_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1150
    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1151
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1152
    invoke-virtual {v0, v3}, Lalf$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 35
    .end local v0    # "handlerThread":Lalf$a;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lalf;->a:Ljava/lang/String;

    return-object v0
.end method

.method static declared-synchronized b(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-class v5, Lalf;

    monitor-enter v5

    :try_start_0
    const-string/jumbo v4, "NetworkOperatorUtil"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "updateNetworkOperatorName"

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 90
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v3, :cond_0

    .line 91
    const-string/jumbo v4, "Unknown"

    sput-object v4, Lalf;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    monitor-exit v5

    return-void

    .line 95
    .restart local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_1

    .line 96
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "operatorCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 98
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "operatorName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    const-string/jumbo v4, "Unknown"

    sput-object v4, Lalf;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 131
    .end local v1    # "operatorCode":Ljava/lang/String;
    .end local v2    # "operatorName":Ljava/lang/String;
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v4, "NetworkOperatorUtil"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v6}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v4, "Unknown"

    sput-object v4, Lalf;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 103
    .restart local v1    # "operatorCode":Ljava/lang/String;
    .restart local v2    # "operatorName":Ljava/lang/String;
    .restart local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    :try_start_4
    sput-object v2, Lalf;->a:Ljava/lang/String;

    goto :goto_0

    .line 108
    .end local v2    # "operatorName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "46000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "46002"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "46007"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "46008"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 110
    :cond_4
    const-string/jumbo v4, "\u4e2d\u56fd\u79fb\u52a8"

    sput-object v4, Lalf;->a:Ljava/lang/String;

    goto :goto_0

    .line 112
    :cond_5
    const-string/jumbo v4, "46001"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "46006"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "46009"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 114
    :cond_6
    const-string/jumbo v4, "\u4e2d\u56fd\u8054\u901a"

    sput-object v4, Lalf;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 116
    :cond_7
    const-string/jumbo v4, "46003"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string/jumbo v4, "46005"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string/jumbo v4, "46011"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 118
    :cond_8
    const-string/jumbo v4, "\u4e2d\u56fd\u7535\u4fe1"

    sput-object v4, Lalf;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 121
    :cond_9
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 122
    .restart local v2    # "operatorName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 123
    const-string/jumbo v4, "Unknown"

    sput-object v4, Lalf;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 126
    :cond_a
    sput-object v2, Lalf;->a:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic c(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-static {p0}, Lalf;->d(Landroid/content/Context;)V

    return-void
.end method

.method private static declared-synchronized d(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-class v3, Lalf;

    monitor-enter v3

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x16

    if-ge v2, v4, :cond_1

    .line 84
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 56
    :cond_1
    :try_start_1
    sget-object v2, Lalf;->b:Landroid/telephony/SubscriptionManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 59
    :try_start_2
    const-string/jumbo v2, "telephony_subscription_service"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 60
    sput-object v2, Lalf;->b:Landroid/telephony/SubscriptionManager;

    if-nez v2, :cond_2

    .line 61
    const-string/jumbo v2, "NetworkOperatorUtil"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "SubscriptionManager is null"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "throwable":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v2, "NetworkOperatorUtil"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 52
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 65
    :cond_2
    :try_start_4
    new-instance v0, Lalf$2;

    invoke-direct {v0, p0}, Lalf$2;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "subscriptionsChangedListener":Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    sget-object v2, Lalf;->b:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 79
    const-string/jumbo v2, "NetworkOperatorUtil"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "addOnSubscriptionsChangedListener"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
