.class public Lcom/alibaba/android/user/model/OrgTrendDataObject;
.super Ljava/lang/Object;
.source "OrgTrendDataObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x441e3bbf7fb837ccL


# instance fields
.field public industryCode:I

.field public orgAuthLeve:I

.field public orgId:J

.field public orgRightLevel:I

.field public recentTrendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgTrendItemObject;",
            ">;"
        }
    .end annotation
.end field

.field public today:Lcom/alibaba/android/user/model/OrgTrendItemObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lfpt;)Lcom/alibaba/android/user/model/OrgTrendDataObject;
    .locals 7
    .param p1, "dataModel"    # Lfpt;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 44
    new-instance v0, Lcom/alibaba/android/user/model/OrgTrendDataObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgTrendDataObject;-><init>()V

    .line 45
    .local v0, "dataObject":Lcom/alibaba/android/user/model/OrgTrendDataObject;
    if-eqz p1, :cond_1

    .line 46
    iget-object v3, p1, Lfpt;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 46
    iput-wide v4, v0, Lcom/alibaba/android/user/model/OrgTrendDataObject;->orgId:J

    .line 47
    iget-object v3, p1, Lfpt;->b:Ljava/lang/Integer;

    .line 2033
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 47
    iput v3, v0, Lcom/alibaba/android/user/model/OrgTrendDataObject;->industryCode:I

    .line 48
    new-instance v3, Lcom/alibaba/android/user/model/OrgTrendItemObject;

    invoke-direct {v3}, Lcom/alibaba/android/user/model/OrgTrendItemObject;-><init>()V

    iget-object v4, p1, Lfpt;->c:Lfpu;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/model/OrgTrendItemObject;->fromIDLModel(Lfpu;)Lcom/alibaba/android/user/model/OrgTrendItemObject;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/user/model/OrgTrendDataObject;->today:Lcom/alibaba/android/user/model/OrgTrendItemObject;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/OrgTrendItemObject;>;"
    iget-object v3, p1, Lfpt;->d:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lfpt;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    iget-object v3, p1, Lfpt;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfpu;

    .line 52
    .local v2, "model":Lfpu;
    new-instance v4, Lcom/alibaba/android/user/model/OrgTrendItemObject;

    invoke-direct {v4}, Lcom/alibaba/android/user/model/OrgTrendItemObject;-><init>()V

    invoke-virtual {v4, v2}, Lcom/alibaba/android/user/model/OrgTrendItemObject;->fromIDLModel(Lfpu;)Lcom/alibaba/android/user/model/OrgTrendItemObject;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v2    # "model":Lfpu;
    :cond_0
    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgTrendDataObject;->recentTrendList:Ljava/util/List;

    .line 56
    iget-object v3, p1, Lfpt;->e:Ljava/lang/Integer;

    .line 3033
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 56
    iput v3, v0, Lcom/alibaba/android/user/model/OrgTrendDataObject;->orgRightLevel:I

    .line 57
    iget-object v3, p1, Lfpt;->f:Ljava/lang/Integer;

    .line 4033
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 57
    iput v3, v0, Lcom/alibaba/android/user/model/OrgTrendDataObject;->orgAuthLeve:I

    .line 59
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/OrgTrendItemObject;>;"
    :cond_1
    return-object v0
.end method
