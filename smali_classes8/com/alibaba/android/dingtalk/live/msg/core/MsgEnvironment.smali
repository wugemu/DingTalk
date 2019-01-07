.class public Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;
.super Ljava/lang/Object;
.source "MsgEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment$IInfo;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MsgEnvironment"

.field public static appKey:Ljava/lang/String;

.field public static application:Landroid/app/Application;

.field public static connectionSetting:I

.field private static debugKey:I

.field public static deviceID:Ljava/lang/String;

.field public static deviceNO:J

.field public static info:Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment$IInfo;

.field private static inited:I

.field public static serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 26
    sput v0, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->inited:I

    .line 27
    sput-boolean v0, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->DEBUG:Z

    .line 28
    sput v2, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->debugKey:I

    .line 32
    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->deviceNO:J

    .line 36
    sput v2, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->connectionSetting:I

    .line 126
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->info:Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment$IInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method public static bind(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment$IInfo;)V
    .locals 0
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "connectionSetting"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = -0x1L
            to = 0x1L
        .end annotation
    .end param
    .param p5, "info"    # Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment$IInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment$IInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p4, "serviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    sput-object p0, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->application:Landroid/app/Application;

    .line 49
    sput-object p1, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->deviceID:Ljava/lang/String;

    .line 50
    sput-object p2, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->appKey:Ljava/lang/String;

    .line 51
    sput p3, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->connectionSetting:I

    .line 52
    sput-object p4, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->serviceMap:Ljava/util/Map;

    .line 53
    if-eqz p5, :cond_0

    sput-object p5, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->info:Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment$IInfo;

    .line 54
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->init()V

    .line 55
    return-void
.end method

.method public static generateDataId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->deviceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x15f90

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MD5;->getMd5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    sget-object v1, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->info:Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment$IInfo;

    invoke-interface {v1}, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment$IInfo;->returnToken()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "token":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 123
    :cond_0
    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    sget-object v1, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->info:Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment$IInfo;

    invoke-interface {v1}, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment$IInfo;->returnUserId()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 117
    :cond_0
    return-object v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    sget-object v1, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->versionName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    :try_start_0
    sget-object v1, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->application:Landroid/app/Application;

    .line 101
    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 102
    sput-object v1, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 104
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    :cond_0
    const-string/jumbo v1, "5.0.0"

    goto :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->deviceID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->application:Landroid/app/Application;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->serviceMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "deviceID | appKey | application | serviceMap not bind"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->internalInit()V

    .line 62
    return-void
.end method

.method public static declared-synchronized internalInit()V
    .locals 4

    .prologue
    .line 66
    const-class v2, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;

    monitor-enter v2

    :try_start_0
    sget v1, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->inited:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->inited:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    monitor-exit v2

    return-void

    .line 67
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->getVersionName()Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->isDebug()Z

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.taobao.tao.messagkit.receive"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "key"

    const-string/jumbo v3, "init"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    sget-object v1, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->application:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isDebug()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 84
    sget v2, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->debugKey:I

    if-eqz v2, :cond_1

    .line 86
    :try_start_0
    sget-object v2, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->application:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 87
    .local v0, "e":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->DEBUG:Z

    .line 88
    const/4 v1, 0x0

    sput v1, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->debugKey:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "e":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->DEBUG:Z

    return v1

    .line 89
    .restart local v0    # "e":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isInit()Z
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->inited:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 79
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->init()V

    .line 80
    const/4 v0, 0x0

    goto :goto_0
.end method
