.class public Lgzo;
.super Ljava/lang/Object;
.source "PhotoFeatureManager.java"


# static fields
.field private static volatile a:Lgzo;


# instance fields
.field private b:Lgzl;

.field private c:Lgrl;

.field private d:Lgrm;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a()Lgzo;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lgzo;->a:Lgzo;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lgzo;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lgzo;->a:Lgzo;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lgzo;

    invoke-direct {v0}, Lgzo;-><init>()V

    sput-object v0, Lgzo;->a:Lgzo;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lgzo;->a:Lgzo;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lgrl;)V
    .locals 1
    .param p1, "proxy"    # Lgrl;

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lgzo;->c:Lgrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lgrm;)V
    .locals 1
    .param p1, "featureSwitch"    # Lgrm;

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lgzo;->d:Lgrm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lgzl;)V
    .locals 1
    .param p1, "photoFeature"    # Lgzl;

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lgzo;->b:Lgzl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lgrl;
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgzo;->c:Lgrl;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lgzo$1;

    invoke-direct {v0, p0}, Lgzo$1;-><init>(Lgzo;)V

    iput-object v0, p0, Lgzo;->c:Lgrl;

    .line 76
    :cond_0
    iget-object v0, p0, Lgzo;->c:Lgrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Lgzl;
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgzo;->b:Lgzl;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lgzo$2;

    invoke-direct {v0, p0}, Lgzo$2;-><init>(Lgzo;)V

    iput-object v0, p0, Lgzo;->b:Lgzl;

    .line 113
    :cond_0
    iget-object v0, p0, Lgzo;->b:Lgzl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Lgrm;
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgzo;->d:Lgrm;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lgzo$3;

    invoke-direct {v0, p0}, Lgzo$3;-><init>(Lgzo;)V

    iput-object v0, p0, Lgzo;->d:Lgrm;

    .line 130
    :cond_0
    iget-object v0, p0, Lgzo;->d:Lgrm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
