.class public final Lika;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static a:Likh;

.field private static b:Lijw;

.field private static c:Lijz;

.field private static d:Likq;

.field private static e:Likl;

.field private static f:Likn;

.field private static g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    new-instance v0, Likf;

    invoke-direct {v0, v1}, Likf;-><init>(B)V

    sput-object v0, Lika;->a:Likh;

    .line 33
    new-instance v0, Likc;

    invoke-direct {v0, v1}, Likc;-><init>(B)V

    sput-object v0, Lika;->b:Lijw;

    .line 34
    new-instance v0, Likd;

    invoke-direct {v0, v1}, Likd;-><init>(B)V

    sput-object v0, Lika;->c:Lijz;

    .line 36
    sput-object v2, Lika;->d:Likq;

    .line 37
    sput-object v2, Lika;->e:Likl;

    .line 38
    sput-object v2, Lika;->f:Likn;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lika;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Likh;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lika;->a:Likh;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 150
    const-class v1, Lika;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v2, "com.alipay.mobile.common.logging.LoggerFactoryBinder"

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 152
    const-string/jumbo v2, "bind"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 153
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 154
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :goto_0
    monitor-exit v1

    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    :try_start_1
    const-string/jumbo v2, "LoggerFactory"

    const-string/jumbo v3, "init"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lijw;)V
    .locals 0

    .prologue
    .line 68
    sput-object p0, Lika;->b:Lijw;

    .line 70
    return-void
.end method

.method public static a(Lijz;)V
    .locals 0

    .prologue
    .line 85
    sput-object p0, Lika;->c:Lijz;

    .line 87
    return-void
.end method

.method public static a(Likh;)V
    .locals 0

    .prologue
    .line 55
    sput-object p0, Lika;->a:Likh;

    .line 57
    return-void
.end method

.method public static declared-synchronized a(Likq;Likl;Likn;)V
    .locals 4

    .prologue
    .line 128
    const-class v1, Lika;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lika;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    sget-object v0, Lika;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 131
    :cond_1
    :try_start_1
    sget-object v0, Lika;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 134
    sput-object p0, Lika;->d:Likq;

    .line 137
    sput-object p1, Lika;->e:Likl;

    .line 140
    sput-object p2, Lika;->f:Likn;

    .line 143
    sget-object v0, Lika;->d:Likq;

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lika;->d:Likq;

    const-string/jumbo v2, "LoggerFactory"

    const-string/jumbo v3, "LoggerFactory.bind invoked"

    invoke-interface {v0, v2, v3}, Likq;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Lijz;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lika;->c:Lijz;

    return-object v0
.end method

.method public static declared-synchronized c()Likl;
    .locals 3

    .prologue
    .line 94
    const-class v1, Lika;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lika;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    sget-object v0, Lika;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    new-instance v0, Likb;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Likb;-><init>(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lika;->e:Likl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d()Likq;
    .locals 3

    .prologue
    .line 105
    const-class v1, Lika;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lika;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    sget-object v0, Lika;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    new-instance v0, Likg;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Likg;-><init>(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lika;->d:Likq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e()Likn;
    .locals 3

    .prologue
    .line 116
    const-class v1, Lika;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lika;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    sget-object v0, Lika;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    new-instance v0, Like;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Like;-><init>(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lika;->f:Likn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic f()V
    .locals 4

    .prologue
    .line 1161
    const-string/jumbo v0, "LoggerFactory"

    const-string/jumbo v1, "reportNoInitialization"

    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    const-string/jumbo v3, "need invoke bind before use"

    invoke-direct {v2, v3}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    return-void
.end method
