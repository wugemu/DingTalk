.class public Lden;
.super Ljava/lang/Object;
.source "NearByGroupRPC.java"


# static fields
.field private static volatile b:Lden;


# instance fields
.field public a:Lcom/alibaba/android/dingtalkim/chat/facetoface/rpc/NearbyGroupIService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-class v0, Lcom/alibaba/android/dingtalkim/chat/facetoface/rpc/NearbyGroupIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chat/facetoface/rpc/NearbyGroupIService;

    iput-object v0, p0, Lden;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/rpc/NearbyGroupIService;

    .line 38
    return-void
.end method

.method public static a()Lden;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lden;->b:Lden;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lden;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lden;->b:Lden;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lden;

    invoke-direct {v0}, Lden;-><init>()V

    sput-object v0, Lden;->b:Lden;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lden;->b:Lden;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
