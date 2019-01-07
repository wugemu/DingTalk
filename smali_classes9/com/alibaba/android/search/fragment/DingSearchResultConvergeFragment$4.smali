.class final Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;
.super Ljava/lang/Object;
.source "DingSearchResultConvergeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->c()V
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
    .line 180
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 183
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-static {v4}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->g(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x14

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 184
    .local v0, "objectDings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;->a:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4$1;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment$4;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 200
    :cond_0
    return-void
.end method
