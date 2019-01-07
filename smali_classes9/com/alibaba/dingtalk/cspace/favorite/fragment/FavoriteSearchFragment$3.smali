.class final Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$3;
.super Lgcv;
.source "FavoriteSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-direct {p0}, Lgcv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lgct;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "favoriteLoadMore"    # Lgct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgct;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 273
    .local p2, "existMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Lgcv;->a(Lgct;Ljava/util/HashMap;)V

    .line 274
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->d(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->b:Ljava/util/List;

    if-nez v1, :cond_1

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->b:Ljava/util/List;

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 279
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 280
    if-eqz p1, :cond_3

    .line 281
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    .line 1041
    iget v2, p1, Lgct;->c:I

    .line 281
    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;I)I

    .line 2033
    iget-object v1, p1, Lgct;->b:Ljava/util/List;

    .line 282
    if-eqz v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->b:Ljava/util/List;

    .line 3033
    iget-object v2, p1, Lgct;->b:Ljava/util/List;

    .line 283
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4025
    :cond_2
    iget-boolean v1, p1, Lgct;->a:Z

    .line 285
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->handleMessage(Landroid/os/Message;)V

    .line 291
    return-void

    .line 287
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method
