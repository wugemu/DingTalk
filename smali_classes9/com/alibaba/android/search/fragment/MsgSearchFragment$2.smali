.class final Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;
.super Ljava/lang/Object;
.source "MsgSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/MsgSearchFragment;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 111
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->a(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->l()Z

    move-result v1

    .line 118
    .local v1, "showFooterNetworkSearchView":Z
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v0, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->l:Ljava/util/List;

    .line 121
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->g:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->g:Landroid/view/View;

    move-object v5, v2

    move v2, v3

    .line 132
    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->k:Lemz;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 137
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->k:Lemz;

    invoke-virtual {v2, v0}, Lemz;->a(Ljava/util/List;)V

    .line 138
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->k:Lemz;

    invoke-virtual {v2}, Lemz;->notifyDataSetChanged()V

    .line 141
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->h:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->h:Landroid/view/View;

    if-eqz v1, :cond_7

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 124
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x4

    if-ge v2, v5, :cond_5

    .line 125
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v0, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->l:Ljava/util/List;

    .line 126
    .restart local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->g:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->g:Landroid/view/View;

    move-object v5, v2

    move v2, v3

    goto :goto_1

    .line 130
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->l:Ljava/util/List;

    const/4 v5, 0x3

    invoke-interface {v2, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 131
    .restart local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->g:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->g:Landroid/view/View;

    if-eqz v1, :cond_6

    move-object v5, v2

    move v2, v3

    goto :goto_1

    :cond_6
    move-object v5, v2

    move v2, v4

    goto :goto_1

    :cond_7
    move v4, v3

    .line 142
    goto :goto_2
.end method
