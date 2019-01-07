.class final Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$3;
.super Ljava/lang/Object;
.source "DingSearchResultConvergeFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$3;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$3;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$3;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    .line 155
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$3;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->b(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$3;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    .line 156
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->c(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$3;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->d(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$3;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$3;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    .line 157
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->e(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$3;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->f(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)V

    .line 160
    :cond_0
    return-void
.end method
