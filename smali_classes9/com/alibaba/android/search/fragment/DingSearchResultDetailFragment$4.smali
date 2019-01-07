.class final Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$4;
.super Ljava/lang/Object;
.source "DingSearchResultDetailFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .line 178
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->b(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .line 179
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->c(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->d(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .line 180
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->e(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->f(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)V

    .line 183
    :cond_0
    return-void
.end method
