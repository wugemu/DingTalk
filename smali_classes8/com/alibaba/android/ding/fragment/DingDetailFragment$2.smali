.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$2;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$2;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 704
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$2;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->h(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 705
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$2;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$2;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 706
    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$2;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 707
    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->i(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)I

    move-result v2

    .line 1716
    if-eqz v0, :cond_0

    .line 1719
    if-eqz v1, :cond_0

    .line 1722
    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v3, "https://qr.dingtalk.com/ding/receiver"

    new-instance v4, Lbjv$9;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v1, v5}, Lbjv$9;-><init>(ILcom/alibaba/android/ding/base/objects/ObjectDing;I)V

    invoke-interface {v0, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 709
    :cond_0
    return-void
.end method
