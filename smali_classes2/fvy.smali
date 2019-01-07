.class public Lfvy;
.super Ljava/lang/Object;
.source "PlayStoreService.java"


# static fields
.field private static volatile b:Lfvy;


# instance fields
.field public a:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lfvy;->b:Lfvy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic a(Lfvy;)Lcom/android/installreferrer/api/InstallReferrerClient;
    .locals 1
    .param p0, "x0"    # Lfvy;

    .prologue
    .line 35
    iget-object v0, p0, Lfvy;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    return-object v0
.end method

.method public static a()Lfvy;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lfvy;->b:Lfvy;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lfvy;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lfvy;->b:Lfvy;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lfvy;

    invoke-direct {v0}, Lfvy;-><init>()V

    sput-object v0, Lfvy;->b:Lfvy;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lfvy;->b:Lfvy;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lfvy;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lfvy;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    .line 1120
    new-instance v0, Lcom/alibaba/android/user/model/ChannelInfoObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/ChannelInfoObject;-><init>()V

    .line 1121
    iput-object p2, v0, Lcom/alibaba/android/user/model/ChannelInfoObject;->channel:Ljava/lang/String;

    .line 1122
    invoke-static {}, Lfaj;->a()Lfbi;

    move-result-object v1

    new-instance v2, Lfvy$2;

    invoke-direct {v2, p0, p1}, Lfvy$2;-><init>(Lfvy;Landroid/content/Context;)V

    invoke-interface {v1, v0, v2}, Lfbi;->a(Lcom/alibaba/android/user/model/ChannelInfoObject;Lcma;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lfvy;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lfvy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    .line 1143
    new-instance v0, Lcom/alibaba/android/user/model/ChannelInfoObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/ChannelInfoObject;-><init>()V

    .line 1144
    iput-object p1, v0, Lcom/alibaba/android/user/model/ChannelInfoObject;->channel:Ljava/lang/String;

    .line 1145
    invoke-static {}, Lfaj;->a()Lfbi;

    move-result-object v1

    new-instance v2, Lfvy$3;

    invoke-direct {v2, p0}, Lfvy$3;-><init>(Lfvy;)V

    invoke-interface {v1, v0, v2}, Lfbi;->b(Lcom/alibaba/android/user/model/ChannelInfoObject;Lcma;)V

    .line 35
    return-void
.end method
