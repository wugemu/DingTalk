.class final Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$5;
.super Ljava/lang/Object;
.source "BeaconDetectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->d()V
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
    .line 368
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$5;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

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
    .line 371
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$5;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->e()V

    .line 372
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$5;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->d(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$5;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .line 1272
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->a:Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;

    .line 2126
    iget-boolean v1, v1, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->f:Z

    .line 1272
    if-nez v1, :cond_0

    .line 1273
    new-instance v1, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$12;

    invoke-direct {v1, v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$12;-><init>(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 374
    :cond_0
    return-void
.end method
