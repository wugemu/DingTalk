.class final Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$4;
.super Ljava/lang/Object;
.source "FavoriteBaseListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
    .line 273
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$4;->b:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 276
    if-nez p2, :cond_1

    .line 278
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$4;->b:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->c(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$4;->b:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$4;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    goto :goto_0
.end method
