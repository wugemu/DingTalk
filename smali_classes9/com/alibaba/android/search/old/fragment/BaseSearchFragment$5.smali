.class final Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;
.super Ljava/lang/Object;
.source "BaseSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 250
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->j:Lenx;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->j:Lenx;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->g()Lcom/alibaba/android/search/consts/SubPager;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lenx;->a(Lcom/alibaba/android/search/consts/SubPager;Z)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 255
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->j:Lenx;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->j:Lenx;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->g()Lcom/alibaba/android/search/consts/SubPager;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lenx;->a(Lcom/alibaba/android/search/consts/SubPager;Z)V

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lemz;->a(Ljava/util/List;)V

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    invoke-virtual {v0}, Lemz;->notifyDataSetChanged()V

    goto :goto_0

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->j:Lenx;

    if-eqz v0, :cond_4

    .line 264
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->j:Lenx;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->g()Lcom/alibaba/android/search/consts/SubPager;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lenx;->a(Lcom/alibaba/android/search/consts/SubPager;Z)V

    .line 266
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    if-eqz v0, :cond_5

    .line 267
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->g:Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lemz;->a(Ljava/util/List;)V

    .line 268
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    invoke-virtual {v0}, Lemz;->notifyDataSetChanged()V

    .line 270
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->e(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)V

    goto :goto_0
.end method
