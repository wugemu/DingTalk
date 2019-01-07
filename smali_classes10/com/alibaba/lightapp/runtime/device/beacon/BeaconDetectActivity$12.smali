.class final Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$12;
.super Ljava/lang/Object;
.source "BeaconDetectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;
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
    .line 273
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$12;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 276
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$12;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->h(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$12;->a:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->h(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;

    move-result-object v1

    .line 1092
    iget-boolean v2, v1, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->f:Z

    if-nez v2, :cond_2

    .line 1093
    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->c:[Ljava/lang/Runnable;

    array-length v2, v2

    .line 1094
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1095
    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->c:[Ljava/lang/Runnable;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 1096
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    iget-object v4, v1, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->c:[Ljava/lang/Runnable;

    aget-object v4, v4, v0

    mul-int/lit16 v5, v0, 0x190

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1094
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1100
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->f:Z

    .line 279
    :cond_2
    return-void
.end method
