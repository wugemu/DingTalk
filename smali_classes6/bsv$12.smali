.class final Lbsv$12;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsv;->a(Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

.field final synthetic b:Landroid/bluetooth/BluetoothDevice;

.field final synthetic c:Z

.field final synthetic d:Lbsv;


# direct methods
.method constructor <init>(Lbsv;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .param p1, "this$0"    # Lbsv;

    .prologue
    .line 641
    iput-object p1, p0, Lbsv$12;->d:Lbsv;

    iput-object p2, p0, Lbsv$12;->a:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    iput-object p3, p0, Lbsv$12;->b:Landroid/bluetooth/BluetoothDevice;

    iput-boolean p4, p0, Lbsv$12;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 641
    check-cast p1, Ljava/lang/String;

    .line 3644
    iget-object v0, p0, Lbsv$12;->d:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3647
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3648
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3649
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3650
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lbsv$12;->d:Lbsv;

    invoke-virtual {v2}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 3654
    :goto_0
    iget-object v0, p0, Lbsv$12;->d:Lbsv;

    invoke-virtual {v0}, Lbsv;->m()V

    .line 641
    :cond_0
    return-void

    .line 3652
    :cond_1
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "getDeviceLiteAppUrl success, but url empty"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 662
    iget-object v2, p0, Lbsv$12;->d:Lbsv;

    invoke-virtual {v2}, Lbsv;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 703
    :goto_0
    return-void

    .line 666
    :cond_0
    const-string/jumbo v2, "BleBind"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "getDeviceLiteAppUrl fail, code="

    aput-object v4, v3, v8

    aput-object p1, v3, v7

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "; msg="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/laiwang/protocol/core/Constants$Status;->REQUEST_TIMEOUT:Lcom/laiwang/protocol/core/Constants$Status;

    iget v3, v3, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/laiwang/protocol/core/Constants$Status;->NETWORK_BROKEN:Lcom/laiwang/protocol/core/Constants$Status;

    iget v3, v3, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 669
    :cond_1
    iget-object v2, p0, Lbsv$12;->d:Lbsv;

    iget-object v3, p0, Lbsv$12;->d:Lbsv;

    sget v4, Lbrx$g;->and_conf_txt_no_network:I

    invoke-virtual {v3, v4}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbsv;->a(Ljava/lang/String;)V

    .line 670
    iget-object v2, p0, Lbsv$12;->d:Lbsv;

    invoke-static {v2, v8, p2}, Lbsv;->a(Lbsv;ZLjava/lang/String;)V

    goto :goto_0

    .line 672
    :cond_2
    const-string/jumbo v2, "device_not_exist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 673
    iget-object v2, p0, Lbsv$12;->d:Lbsv;

    iget-object v2, p0, Lbsv$12;->a:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    .line 1075
    invoke-static {v2}, Lbsv;->a(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Z

    move-result v2

    .line 673
    if-eqz v2, :cond_3

    .line 674
    iget-object v2, p0, Lbsv$12;->d:Lbsv;

    .line 2075
    iput-boolean v7, v2, Lbsv;->h:Z

    .line 675
    iget-object v2, p0, Lbsv$12;->d:Lbsv;

    invoke-static {v2, v7}, Lbsv;->a(Lbsv;Z)V

    .line 677
    iget-object v2, p0, Lbsv$12;->d:Lbsv;

    iget-object v3, p0, Lbsv$12;->b:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lbsv$12;->a:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    iget-boolean v5, p0, Lbsv$12;->c:Z

    invoke-static {v2, v3, v4, v5}, Lbsv;->a(Lbsv;Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Z)V

    goto/16 :goto_0

    .line 680
    :cond_3
    iget-object v2, p0, Lbsv$12;->d:Lbsv;

    invoke-virtual {v2}, Lbsv;->o()V

    goto/16 :goto_0

    .line 3068
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 683
    invoke-static {v2, p1}, Lbta;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "tips":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 685
    move-object v1, p2

    .line 687
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 688
    const-string/jumbo v1, "unknow error"

    .line 690
    :cond_6
    iget-object v2, p0, Lbsv$12;->d:Lbsv;

    invoke-virtual {v2, v1}, Lbsv;->a(Ljava/lang/String;)V

    .line 692
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 693
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lbsv$12;->d:Lbsv;

    iget-object v2, v2, Lbsv;->b:Lbsw$b;

    if-eqz v2, :cond_7

    .line 694
    const-string/jumbo v2, "device_type"

    iget-object v3, p0, Lbsv$12;->d:Lbsv;

    iget-object v3, v3, Lbsv;->b:Lbsw$b;

    invoke-interface {v3}, Lbsw$b;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string/jumbo v2, "device_server"

    iget-object v3, p0, Lbsv$12;->d:Lbsv;

    iget-object v3, v3, Lbsv;->b:Lbsw$b;

    invoke-interface {v3}, Lbsw$b;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    :cond_7
    const-string/jumbo v2, "_field_event_id"

    const-string/jumbo v3, "2101"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const-string/jumbo v2, "error"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-string/jumbo v2, "spm"

    const-string/jumbo v3, "a2q0r.11900333.1.unauth_set_network"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "Page_Smart_Device_Set_Bluetooth"

    const-string/jumbo v4, "Page_Smart_Device_Set_Bluetooth_Button-unauth_set_network"

    invoke-interface {v2, v3, v4, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 658
    return-void
.end method
