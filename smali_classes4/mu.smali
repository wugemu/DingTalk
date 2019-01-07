.class public Lmu;
.super Ljava/lang/Object;
.source "StatisticReqTimes.java"


# static fields
.field private static b:Lmu;


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:J

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:J


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmu;->c:Z

    .line 1044
    iput-wide v2, p0, Lmu;->d:J

    .line 1045
    iput-wide v2, p0, Lmu;->f:J

    .line 1046
    iget-object v0, p0, Lmu;->e:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 1047
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmu;->e:Ljava/util/Set;

    .line 1051
    :goto_0
    iget-object v0, p0, Lmu;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1052
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmu;->a:Ljava/util/Set;

    .line 29
    :cond_0
    return-void

    .line 1049
    :cond_1
    iget-object v0, p0, Lmu;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method public static a()Lmu;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lmu;->b:Lmu;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lmu;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lmu;->b:Lmu;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lmu;

    invoke-direct {v0}, Lmu;-><init>()V

    sput-object v0, Lmu;->b:Lmu;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lmu;->b:Lmu;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
