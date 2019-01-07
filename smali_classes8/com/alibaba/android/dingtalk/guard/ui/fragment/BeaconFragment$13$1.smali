.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13$1;
.super Ljava/lang/Object;
.source "BeaconFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->p()V

    goto :goto_0

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .line 1096
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v0

    .line 1097
    if-eqz v0, :cond_2

    .line 1098
    invoke-interface {v0}, Lbsw$a;->z()Z

    move-result v0

    .line 628
    :goto_1
    if-eqz v0, :cond_3

    .line 630
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->q(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    goto :goto_0

    .line 1100
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 632
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->r()V

    goto :goto_0
.end method
