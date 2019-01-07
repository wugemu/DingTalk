.class final Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$3;
.super Ljava/lang/Object;
.source "FavoriteSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->d(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->b(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;)Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$a;->a()V

    .line 96
    :cond_0
    return-void
.end method
