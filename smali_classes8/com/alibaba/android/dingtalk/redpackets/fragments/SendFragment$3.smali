.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$3;
.super Ljava/lang/Object;
.source "SendFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;
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
        "Lcom/alibaba/android/dingtalk/redpackets/models/AcquireResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$3;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$3;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 598
    check-cast p1, Lcom/alibaba/android/dingtalk/redpackets/models/AcquireResultObject;

    .line 1601
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$3;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->c()V

    .line 1602
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/AcquireResultObject;->code:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/AcquireResultObject;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1603
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$3;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$3;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V

    :cond_0
    :goto_0
    return-void

    .line 1605
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$3;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$3;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$3;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    sget v1, Lcaj$f;->repackets_alipay_failed:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 619
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$3;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$3;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$3;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->c()V

    .line 621
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_0
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "queryAcquireResult fail"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 615
    return-void
.end method
