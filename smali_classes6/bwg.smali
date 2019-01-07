.class public Lbwg;
.super Ljava/lang/Object;
.source "LiveEventPoster.java"


# static fields
.field private static volatile a:Lbwg;


# instance fields
.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lbwf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbwg;->b:Ljava/util/HashSet;

    .line 25
    return-void
.end method

.method public static a()Lbwg;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lbwg;->a:Lbwg;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lbwg;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lbwg;->a:Lbwg;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lbwg;

    invoke-direct {v0}, Lbwg;-><init>()V

    sput-object v0, Lbwg;->a:Lbwg;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lbwg;->a:Lbwg;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lbwg;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lbwg;

    .prologue
    .line 17
    iget-object v0, p0, Lbwg;->b:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public final a(Lbwf;)V
    .locals 2
    .param p1, "listener"    # Lbwf;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lbwg;->b:Ljava/util/HashSet;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lbwg;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lbwf;)V
    .locals 2
    .param p1, "listener"    # Lbwf;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 48
    iget-object v1, p0, Lbwg;->b:Ljava/util/HashSet;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lbwg;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 50
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
