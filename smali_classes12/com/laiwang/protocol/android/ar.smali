.class public Lcom/laiwang/protocol/android/ar;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# static fields
.field private static a:Lcom/laiwang/protocol/android/ar;


# instance fields
.field private b:Lcom/laiwang/protocol/android/bu;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/ConfigListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ar;->c:Ljava/util/List;

    .line 61
    new-instance v0, Lcom/laiwang/protocol/android/bs;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/bs;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ar;->b:Lcom/laiwang/protocol/android/bu;

    .line 62
    return-void
.end method

.method public static declared-synchronized a()Lcom/laiwang/protocol/android/ar;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/laiwang/protocol/android/ar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/laiwang/protocol/android/ar;->a:Lcom/laiwang/protocol/android/ar;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/laiwang/protocol/android/ar;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/ar;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/ar;->a:Lcom/laiwang/protocol/android/ar;

    .line 27
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/ar;->a:Lcom/laiwang/protocol/android/ar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/ar;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ar;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/laiwang/protocol/android/ar;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/android/ConfigListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/android/ConfigListener;

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/laiwang/protocol/android/ar;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    .local p1, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string/jumbo v0, "[Conf] notify conf change"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/laiwang/protocol/android/ar;->b:Lcom/laiwang/protocol/android/bu;

    new-instance v1, Lcom/laiwang/protocol/android/ar$1;

    const-string/jumbo v2, "conf"

    invoke-direct {v1, p0, v2, p1}, Lcom/laiwang/protocol/android/ar$1;-><init>(Lcom/laiwang/protocol/android/ar;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 58
    :cond_0
    return-void
.end method

.method public b(Lcom/laiwang/protocol/android/ConfigListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/android/ConfigListener;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/laiwang/protocol/android/ar;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    return-void
.end method
