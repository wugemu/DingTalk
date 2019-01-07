.class final Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$6;
.super Ljava/lang/Object;
.source "BeaconDetectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$6;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 425
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$6;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->k(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$6;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->k(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$6;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->l(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$6;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->l(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$6;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->m(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$6;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->m(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 433
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$6;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->n(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    :cond_2
    return-void
.end method
