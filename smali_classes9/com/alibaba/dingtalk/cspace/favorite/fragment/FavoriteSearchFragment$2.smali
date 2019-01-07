.class final Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;
.super Ljava/lang/Object;
.source "FavoriteSearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 121
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 124
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->b(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->b(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgcw;

    .line 1060
    .local v0, "typeItem":Lgcw;
    iget-boolean v1, v0, Lgcw;->e:Z

    .line 126
    if-nez v1, :cond_4

    .line 127
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Lgca;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Lgca;

    move-result-object v1

    invoke-interface {v1, v0}, Lgca;->a(Lgcw;)V

    .line 135
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->b(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgcw;

    .line 2060
    iget-boolean v2, v0, Lgcw;->e:Z

    .line 135
    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 3056
    :goto_1
    iput-boolean v2, v1, Lgcw;->e:Z

    .line 136
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    .line 4052
    iget-object v2, v0, Lgcw;->a:Ljava/lang/String;

    .line 136
    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->c(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->c(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;->notifyDataSetChanged()V

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Lgca;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Lgca;

    move-result-object v1

    invoke-interface {v1, v3}, Lgca;->a(Ljava/lang/String;)V

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p2}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 147
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Lgca;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Lgca;

    move-result-object v1

    invoke-interface {v1}, Lgca;->c()V

    .line 151
    .end local v0    # "typeItem":Lgcw;
    :cond_3
    return-void

    .line 131
    .restart local v0    # "typeItem":Lgcw;
    :cond_4
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Lgca;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;)Lgca;

    move-result-object v1

    invoke-interface {v1, v3}, Lgca;->a(Lgcw;)V

    goto :goto_0

    .line 135
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method
