.class public Lbme;
.super Ljava/lang/Object;
.source "ClientNpcManager.java"


# static fields
.field private static volatile b:Lbme;


# instance fields
.field public a:Lcom/alibaba/android/dingtalk/alpha/npc/ClientNpc;

.field private c:Lbmf;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lbmf;

    invoke-direct {v0}, Lbmf;-><init>()V

    iput-object v0, p0, Lbme;->c:Lbmf;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/alibaba/android/dingtalk/alpha/npc/ClientNpc;

    aput-object v3, v1, v2

    iget-object v2, p0, Lbme;->c:Lbmf;

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/alpha/npc/ClientNpc;

    iput-object v0, p0, Lbme;->a:Lcom/alibaba/android/dingtalk/alpha/npc/ClientNpc;

    .line 38
    return-void
.end method

.method public static final a()Lbme;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lbme;->b:Lbme;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lbme;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lbme;->b:Lbme;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lbme;

    invoke-direct {v0}, Lbme;-><init>()V

    sput-object v0, Lbme;->b:Lbme;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lbme;->b:Lbme;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
