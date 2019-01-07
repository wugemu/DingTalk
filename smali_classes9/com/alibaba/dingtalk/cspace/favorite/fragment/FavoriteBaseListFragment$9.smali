.class final Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$9;
.super Lgcv;
.source "FavoriteBaseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$9;->b:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$9;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-direct {p0}, Lgcv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4
    .param p1, "success"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 375
    invoke-super {p0, p1}, Lgcv;->a(Z)V

    .line 376
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$9;->b:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 377
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 378
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$9;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 379
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$9;->b:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendMessage(Landroid/os/Message;)Z

    .line 380
    return-void
.end method
