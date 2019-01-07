.class public final Lbfw;
.super Ljava/lang/Object;
.source "ReceiverStatusObjectV3.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbff;",
            ">;"
        }
    .end annotation
.end field

.field public f:J


# direct methods
.method public constructor <init>(Lbcs;)V
    .locals 4
    .param p1, "model"    # Lbcs;

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p1, :cond_0

    .line 18
    iget-object v0, p1, Lbcs;->a:Ljava/lang/Integer;

    .line 1033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 18
    iput v0, p0, Lbfw;->a:I

    .line 19
    iget-object v0, p1, Lbcs;->b:Ljava/lang/Integer;

    .line 2033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 19
    iput v0, p0, Lbfw;->b:I

    .line 20
    iget-object v0, p1, Lbcs;->c:Ljava/lang/Integer;

    .line 3033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 20
    iput v0, p0, Lbfw;->c:I

    .line 21
    iget-object v0, p1, Lbcs;->d:Ljava/lang/Integer;

    .line 4033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 21
    iput v0, p0, Lbfw;->d:I

    .line 22
    iget-object v0, p1, Lbcs;->f:Ljava/lang/Long;

    .line 4044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lbfw;->f:J

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbfw;->e:Ljava/util/List;

    .line 24
    iget-object v0, p1, Lbcs;->e:Ljava/util/List;

    invoke-direct {p0, v0}, Lbfw;->a(Ljava/util/List;)V

    .line 26
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbct;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lbct;>;"
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbct;

    .line 43
    .local v0, "model":Lbct;
    new-instance v1, Lbff;

    invoke-direct {v1}, Lbff;-><init>()V

    .line 44
    .local v1, "userObject":Lbff;
    iget-object v3, v0, Lbct;->c:Ljava/lang/String;

    iput-object v3, v1, Lbff;->g:Ljava/lang/String;

    .line 45
    iget-object v3, v0, Lbct;->d:Ljava/lang/Integer;

    .line 5033
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 45
    iput v3, v1, Lbff;->h:I

    .line 46
    iget-object v3, v0, Lbct;->b:Ljava/lang/String;

    iput-object v3, v1, Lbff;->f:Ljava/lang/String;

    .line 47
    iget-object v3, v0, Lbct;->a:Ljava/lang/Long;

    .line 5044
    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 47
    iput-wide v4, v1, Lbff;->e:J

    .line 48
    iget-object v3, v0, Lbct;->f:Ljava/lang/Long;

    .line 6044
    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 48
    iput-wide v4, v1, Lbff;->j:J

    .line 49
    iget-object v3, v0, Lbct;->g:Ljava/lang/Integer;

    .line 7033
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 49
    iput v3, v1, Lbff;->a:I

    .line 50
    iget-object v3, v0, Lbct;->h:Ljava/lang/Integer;

    .line 8033
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 50
    iput v3, v1, Lbff;->l:I

    .line 51
    iget-object v3, v0, Lbct;->i:Ljava/lang/Long;

    .line 8044
    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 51
    iput-wide v4, v1, Lbff;->m:J

    .line 52
    iget-object v3, v0, Lbct;->e:Ljava/lang/Long;

    .line 9044
    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 52
    iput-wide v4, v1, Lbff;->i:J

    .line 53
    iget-object v3, v0, Lbct;->j:Ljava/lang/Integer;

    .line 10033
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 53
    iput v3, v1, Lbff;->b:I

    .line 54
    iget-object v3, v0, Lbct;->k:Ljava/util/Map;

    .line 10041
    iput-object v3, v1, Lbff;->c:Ljava/util/Map;

    .line 55
    iget-object v3, p0, Lbfw;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    .end local v0    # "model":Lbct;
    .end local v1    # "userObject":Lbff;
    :cond_0
    return-void
.end method
