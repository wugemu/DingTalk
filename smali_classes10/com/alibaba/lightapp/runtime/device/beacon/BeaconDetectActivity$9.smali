.class final Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$9;
.super Ljava/lang/Object;
.source "BeaconDetectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->a()V
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
    .line 214
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$9;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$9;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->e(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$9;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->c(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Lhgd$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$9;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->f(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhgd$b;->a(Ljava/lang/String;)V

    .line 219
    return-void
.end method
