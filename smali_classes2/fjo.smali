.class public final Lfjo;
.super Ljava/lang/Object;
.source "LocalContactHelper.java"


# static fields
.field private static volatile b:Lfjo;

.field private static final c:Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfjo;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfjo;->a:Ljava/util/Map;

    .line 22
    return-void
.end method

.method public static a()Lfjo;
    .locals 4

    .prologue
    .line 26
    sget-object v0, Lfjo;->b:Lfjo;

    .line 27
    .local v0, "res":Lfjo;
    sget-object v2, Lfjo;->b:Lfjo;

    if-nez v2, :cond_1

    .line 28
    sget-object v3, Lfjo;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 29
    :try_start_0
    sget-object v0, Lfjo;->b:Lfjo;

    .line 30
    if-nez v0, :cond_0

    .line 31
    new-instance v1, Lfjo;

    invoke-direct {v1}, Lfjo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "res":Lfjo;
    .local v1, "res":Lfjo;
    :try_start_1
    sput-object v1, Lfjo;->b:Lfjo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 33
    .end local v1    # "res":Lfjo;
    .restart local v0    # "res":Lfjo;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 36
    :cond_1
    return-object v0

    .line 33
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "res":Lfjo;
    .restart local v1    # "res":Lfjo;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "res":Lfjo;
    .restart local v0    # "res":Lfjo;
    goto :goto_0
.end method


# virtual methods
.method public final a(J)Z
    .locals 7
    .param p1, "uid"    # J

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v0

    .line 57
    .local v0, "currentUid":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 66
    :goto_0
    return v3

    .line 60
    :cond_0
    iget-object v4, p0, Lfjo;->a:Ljava/util/Map;

    monitor-enter v4

    .line 61
    :try_start_0
    iget-object v5, p0, Lfjo;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 62
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v2, :cond_1

    .line 63
    monitor-exit v4

    goto :goto_0

    .line 67
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 66
    .restart local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
