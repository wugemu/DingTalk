.class final Lxs$b;
.super Ljava/lang/Object;
.source "InternalEventCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lxs$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs declared-synchronized a([Ljava/lang/String;)V
    .locals 4
    .param p1, "messageType"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 38
    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    array-length v1, p1

    if-lez v1, :cond_2

    .line 39
    iget-object v1, p0, Lxs$b;->a:Ljava/util/List;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lxs$b;->a:Ljava/util/List;

    .line 42
    :cond_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p1, v1

    .line 43
    .local v0, "type":Ljava/lang/String;
    iget-object v3, p0, Lxs$b;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 44
    iget-object v3, p0, Lxs$b;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "type":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
