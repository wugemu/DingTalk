.class public Lcom/dbappsecurity/utl/Singleton;
.super Ljava/lang/Object;
.source "Singleton.java"


# static fields
.field private static final perThreadInstance:Ljava/lang/ThreadLocal;

.field private static singleton:Lcom/dbappsecurity/utl/Singleton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/dbappsecurity/utl/Singleton;->perThreadInstance:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static final createInstance()V
    .locals 2

    .prologue
    .line 37
    const-class v1, Lcom/dbappsecurity/utl/Singleton;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/dbappsecurity/utl/Singleton;->singleton:Lcom/dbappsecurity/utl/Singleton;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/dbappsecurity/utl/Singleton;

    invoke-direct {v0}, Lcom/dbappsecurity/utl/Singleton;-><init>()V

    sput-object v0, Lcom/dbappsecurity/utl/Singleton;->singleton:Lcom/dbappsecurity/utl/Singleton;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    sget-object v0, Lcom/dbappsecurity/utl/Singleton;->perThreadInstance:Ljava/lang/ThreadLocal;

    sget-object v1, Lcom/dbappsecurity/utl/Singleton;->perThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 49
    return-void

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/dbappsecurity/utl/Singleton;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/dbappsecurity/utl/Singleton;->perThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Lcom/dbappsecurity/utl/Singleton;->createInstance()V

    .line 30
    :cond_0
    sget-object v0, Lcom/dbappsecurity/utl/Singleton;->singleton:Lcom/dbappsecurity/utl/Singleton;

    return-object v0
.end method
