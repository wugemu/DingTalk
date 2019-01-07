.class Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;
.super Landroid/os/Handler;
.source "H5BetterBlePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 691
    iput-object p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    .line 692
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 693
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 697
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 698
    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v5, v6}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$200(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;I)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "H5BetterBlePlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "TaskHandler, message what:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 767
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$500(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)V

    .line 768
    return-void

    .line 707
    :sswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 708
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Liny;

    .line 709
    .local v1, "h5BridgeContext":Liny;
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 710
    .local v4, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "error"

    sget-object v6, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_TIMEOUT:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string/jumbo v5, "errorMessage"

    sget-object v6, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_TIMEOUT:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    .line 713
    invoke-static {v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 714
    const-string/jumbo v5, "characteristic"

    iget-object v6, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v6}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 717
    :cond_1
    invoke-interface {v1, v4}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 719
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 720
    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 721
    .local v2, "h5BridgeContextList":Ljava/util/List;, "Ljava/util/List<Liny;>;"
    if-eqz v2, :cond_0

    .line 722
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 729
    .end local v1    # "h5BridgeContext":Liny;
    .end local v2    # "h5BridgeContextList":Ljava/util/List;, "Ljava/util/List<Liny;>;"
    .end local v4    # "result":Lcom/alibaba/fastjson/JSONObject;
    :sswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 730
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Liny;

    .line 731
    .restart local v1    # "h5BridgeContext":Liny;
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 732
    .restart local v4    # "result":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {v1, v4}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 734
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 735
    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 736
    .restart local v2    # "h5BridgeContextList":Ljava/util/List;, "Ljava/util/List<Liny;>;"
    if-eqz v2, :cond_0

    .line 737
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 748
    .end local v1    # "h5BridgeContext":Liny;
    .end local v2    # "h5BridgeContextList":Ljava/util/List;, "Ljava/util/List<Liny;>;"
    .end local v4    # "result":Lcom/alibaba/fastjson/JSONObject;
    :sswitch_2
    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 749
    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    iget v6, p1, Landroid/os/Message;->what:I

    add-int/lit8 v6, v6, -0x64

    invoke-static {v5, v6}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$200(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;I)Ljava/lang/String;

    move-result-object v3

    .line 750
    .local v3, "relativeAction":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 751
    .restart local v2    # "h5BridgeContextList":Ljava/util/List;, "Ljava/util/List<Liny;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 752
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 753
    .restart local v4    # "result":Lcom/alibaba/fastjson/JSONObject;
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x68

    if-ne v5, v6, :cond_2

    .line 754
    const-string/jumbo v5, "characteristic"

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v6}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 756
    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 759
    :cond_2
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liny;

    .line 760
    .restart local v1    # "h5BridgeContext":Liny;
    invoke-interface {v1, v4}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 761
    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 762
    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$100(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    add-int/lit8 v6, v6, -0x64

    invoke-virtual {v5, v6, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 702
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x68 -> :sswitch_2
        0x69 -> :sswitch_2
    .end sparse-switch
.end method
