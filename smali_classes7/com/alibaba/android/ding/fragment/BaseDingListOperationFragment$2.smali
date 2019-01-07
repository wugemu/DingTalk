.class final Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$2;
.super Ljava/lang/Object;
.source "BaseDingListOperationFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$2;->b:Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;

    iput-object p2, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$2;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 68
    check-cast p1, Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$2;->b:Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$2;->b:Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$2;->a:Lcma;

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$2;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 68
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$2;->b:Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$2;->b:Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$2;->a:Lcma;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$2;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 83
    return-void
.end method
