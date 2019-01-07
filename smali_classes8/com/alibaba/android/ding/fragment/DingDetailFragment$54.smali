.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$54;
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
    .line 688
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$54;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 691
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$54;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    if-nez v0, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$54;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$54;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$54;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 1968
    if-eqz v0, :cond_0

    .line 1971
    if-eqz v1, :cond_0

    .line 1974
    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/ding/ding_meeting_recorder"

    new-instance v3, Lbjv$18;

    invoke-direct {v3, v1}, Lbjv$18;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
