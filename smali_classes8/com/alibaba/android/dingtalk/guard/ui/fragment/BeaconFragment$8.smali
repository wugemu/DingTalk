.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$8;
.super Ljava/lang/Object;
.source "BeaconFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$8;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 250
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$8;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;I)I

    .line 251
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$8;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v0, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Z)Z

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$8;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    move-result-object v0

    .line 1084
    :try_start_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 1085
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$8;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->c()V

    .line 254
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$8;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    .line 255
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$8;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    const/16 v1, 0x9c4

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;I)V

    .line 256
    return-void

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1089
    const-string/jumbo v1, "door"

    const-string/jumbo v2, "helper"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[Device Beacon] disable error,"

    aput-object v4, v3, v5

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
