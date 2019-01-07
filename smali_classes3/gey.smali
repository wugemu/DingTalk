.class public final Lgey;
.super Ljava/lang/Object;
.source "SpaceLinkSharePresenter.java"

# interfaces
.implements Lgex$a;


# instance fields
.field a:Lgex$b;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Z

.field private f:J


# direct methods
.method public constructor <init>(JLgex$b;)V
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "view"    # Lgex$b;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgey;->b:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgey;->c:Ljava/util/Map;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lgey;->d:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgey;->e:Z

    .line 50
    iput-wide p1, p0, Lgey;->f:J

    .line 51
    iput-object p3, p0, Lgey;->a:Lgex$b;

    .line 53
    invoke-interface {p3, p0}, Lgex$b;->setPresenter(Lcjd;)V

    .line 54
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 111
    invoke-static {}, Lgez;->c()Lgez;

    move-result-object v4

    .line 4092
    iget-object v2, v4, Lfzr;->a:Ljava/util/List;

    .line 113
    .local v2, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4620
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v3, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    .line 120
    .local v1, "model":Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;
    if-eqz v1, :cond_2

    .line 124
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShortLink()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    .end local v1    # "model":Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;
    :cond_3
    new-instance v0, Lgey$2;

    invoke-direct {v0, p0}, Lgey$2;-><init>(Lgey;)V

    .line 160
    .local v0, "callback":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v4, p0, Lgey;->a:Lgex$b;

    invoke-interface {v4}, Lgex$b;->I_()V

    .line 161
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v4

    .line 4613
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4614
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lgon$44;

    invoke-direct {v6, v4, v0}, Lgon$44;-><init>(Lgon;Lcma;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4623
    :cond_4
    new-instance v5, Lgon$45;

    invoke-direct {v5, v4, v0, v3}, Lgon$45;-><init>(Lgon;Lcma;Ljava/util/List;)V

    .line 4649
    iget-object v4, v4, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-interface {v4, v3, v5}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->deleteShare(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method

.method public final a(IZ)V
    .locals 8
    .param p1, "sortType"    # I
    .param p2, "reload"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 58
    new-instance v0, Lgey$1;

    invoke-direct {v0, p0}, Lgey$1;-><init>(Lgey;)V

    .line 100
    .local v0, "callback":Lcma;, "Lcma<Lgod;>;"
    if-eqz p2, :cond_0

    .line 101
    iget-object v1, p0, Lgey;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 102
    iget-object v1, p0, Lgey;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 103
    const/4 v1, 0x0

    iput v1, p0, Lgey;->d:I

    .line 106
    :cond_0
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-wide v2, p0, Lgey;->f:J

    iget v4, p0, Lgey;->d:I

    .line 3560
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_1

    .line 3561
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lgon$41;

    invoke-direct {v3, v1, v0}, Lgon$41;-><init>(Lgon;Lcma;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 3567
    :goto_0
    return-void

    .line 3570
    :cond_1
    new-instance v5, Lgjx;

    invoke-direct {v5}, Lgjx;-><init>()V

    .line 3571
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lgjx;->a:Ljava/lang/Long;

    .line 3572
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v5, Lgjx;->c:Ljava/lang/Integer;

    .line 3573
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v5, Lgjx;->d:Ljava/lang/Integer;

    .line 3574
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v5, Lgjx;->e:Ljava/lang/Integer;

    .line 3576
    new-instance v2, Lgon$43;

    invoke-direct {v2, v1, v0}, Lgon$43;-><init>(Lgon;Lcma;)V

    .line 3605
    iget-object v1, v1, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-interface {v1, v5, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->listShare(Lgjx;Liyv;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lgey;->e:Z

    return v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lgey;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 177
    iget-object v0, p0, Lgey;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 178
    return-void
.end method
