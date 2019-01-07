.class final Lide$1;
.super Lhzy;
.source "FollowRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lcom/alibaba/wukong/idl/relation/models/FollowPageModel;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/relation/FollowImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lide;


# direct methods
.method constructor <init>(Lide;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lide;

    .prologue
    .line 51
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/relation/FollowImpl;>;>;"
    iput-object p1, p0, Lide$1;->a:Lide;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 51
    check-cast p1, Lcom/alibaba/wukong/idl/relation/models/FollowPageModel;

    .line 1054
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/wukong/idl/relation/models/FollowPageModel;->models:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/wukong/idl/relation/models/FollowPageModel;->models:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1055
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1057
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    iget-object v0, p1, Lcom/alibaba/wukong/idl/relation/models/FollowPageModel;->models:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/relation/models/FollowModel;

    .line 1059
    invoke-static {v0}, Lcom/alibaba/wukong/im/relation/FollowImpl;->fromModel(Lcom/alibaba/wukong/idl/relation/models/FollowModel;)Lcom/alibaba/wukong/im/relation/FollowImpl;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 51
    goto :goto_0
.end method
