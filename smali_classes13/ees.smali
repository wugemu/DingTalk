.class public Lees;
.super Ljava/lang/Object;
.source "TeamStatRepo.java"


# static fields
.field private static volatile d:Lees;


# instance fields
.field public a:J

.field public b:J

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lees;->d:Lees;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lees;->a:J

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lees;->c:I

    return-void
.end method

.method static synthetic a(Lees;)J
    .locals 2
    .param p0, "x0"    # Lees;

    .prologue
    .line 25
    iget-wide v0, p0, Lees;->a:J

    return-wide v0
.end method

.method static synthetic a(Lees;J)J
    .locals 1
    .param p0, "x0"    # Lees;
    .param p1, "x1"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lees;->a:J

    return-wide p1
.end method

.method public static a()Lees;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lees;->d:Lees;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lees;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lees;->d:Lees;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lees;

    invoke-direct {v0}, Lees;-><init>()V

    sput-object v0, Lees;->d:Lees;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lees;->d:Lees;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Left;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/oa/model/TeamStatModelObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Left;>;"
    const/4 v0, 0x0

    .line 114
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/oa/model/TeamStatModelObject;>;"
    if-eqz p0, :cond_0

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/oa/model/TeamStatModelObject;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/oa/model/TeamStatModelObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Left;

    .line 117
    .local v1, "model":Left;
    new-instance v3, Lcom/alibaba/android/oa/model/TeamStatModelObject;

    invoke-direct {v3, v1}, Lcom/alibaba/android/oa/model/TeamStatModelObject;-><init>(Left;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v1    # "model":Left;
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lees;)J
    .locals 2
    .param p0, "x0"    # Lees;

    .prologue
    .line 25
    iget-wide v0, p0, Lees;->b:J

    return-wide v0
.end method
