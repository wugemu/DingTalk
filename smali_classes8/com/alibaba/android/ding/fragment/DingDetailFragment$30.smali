.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$30;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingDetailActivity;

.field final synthetic b:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/ding/activity/DingDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 1518
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$30;->b:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    iput-object p2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$30;->a:Lcom/alibaba/android/ding/activity/DingDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1518
    .line 2521
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$30;->b:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2524
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$30;->a:Lcom/alibaba/android/ding/activity/DingDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingDetailActivity;->dismissLoadingDialog()V

    .line 2525
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$30;->b:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->T(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 1518
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$30;->b:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1539
    :goto_0
    return-void

    .line 1537
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$30;->a:Lcom/alibaba/android/ding/activity/DingDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingDetailActivity;->dismissLoadingDialog()V

    .line 1538
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1530
    return-void
.end method
