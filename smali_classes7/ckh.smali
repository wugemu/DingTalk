.class public Lckh;
.super Ljava/lang/Object;
.source "MemoryLeakManager.java"


# static fields
.field private static volatile b:Lckh;


# instance fields
.field public a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lckg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lckh;->a:Ljava/util/HashSet;

    .line 19
    iget-object v0, p0, Lckh;->a:Ljava/util/HashSet;

    new-instance v1, Lckf;

    invoke-direct {v1}, Lckf;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lckh;->a:Ljava/util/HashSet;

    new-instance v1, Lcki;

    invoke-direct {v1}, Lcki;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public static a()Lckh;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lckh;->b:Lckh;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lckh;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lckh;->b:Lckh;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lckh;

    invoke-direct {v0}, Lckh;-><init>()V

    sput-object v0, Lckh;->b:Lckh;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lckh;->b:Lckh;

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
