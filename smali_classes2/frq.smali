.class public final Lfrq;
.super Ljava/lang/Object;
.source "ChannelOrgPageShortObject.java"


# instance fields
.field public a:J

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a(Lfoj;)Lfrq;
    .locals 4
    .param p0, "model"    # Lfoj;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lfrq;

    invoke-direct {v0}, Lfrq;-><init>()V

    .line 29
    .local v0, "obj":Lfrq;
    iget-object v1, p0, Lfoj;->a:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    iput-wide v2, v0, Lfrq;->a:J

    .line 30
    iget-object v1, p0, Lfoj;->b:Ljava/lang/Integer;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    iput v1, v0, Lfrq;->b:I

    .line 31
    iget-object v1, p0, Lfoj;->c:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    iput-boolean v1, v0, Lfrq;->c:Z

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfoj;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lfrq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lfoj;>;"
    if-nez p0, :cond_1

    .line 38
    const/4 v1, 0x0

    .line 46
    :cond_0
    return-object v1

    .line 41
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v1, "objects":Ljava/util/List;, "Ljava/util/List<Lfrq;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfoj;

    .line 43
    .local v0, "model":Lfoj;
    invoke-static {v0}, Lfrq;->a(Lfoj;)Lfrq;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
