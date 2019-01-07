.class final Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4$1;
.super Ljava/lang/Object;
.source "DingSearchResultConvergeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4$1;->b:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4$1;->b:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->h(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)V

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4$1;->b:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;Z)Z

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4$1;->b:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->i(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)V

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4$1;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4$1;->b:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4$1;->b:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4$1;->b:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->j(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)Lemx;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4$1;->b:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;

    iget-object v1, v1, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lemx;->a(Ljava/util/List;)V

    .line 197
    :cond_0
    return-void
.end method
