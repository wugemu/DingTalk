.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$7;
.super Ljava/lang/Object;
.source "BleTestFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$7;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$7;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 411
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$7;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    move-result-object v5

    if-nez v5, :cond_0

    .line 433
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$7;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/android/dingbox/btinterface/BleInterface;->getWifiInfo()Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    move-result-object v4

    .line 415
    .local v4, "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;>;"
    if-eqz v4, :cond_2

    .line 417
    :try_start_0
    invoke-virtual {v4}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;

    .line 418
    .local v1, "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;
    if-eqz v1, :cond_1

    .line 419
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$7;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "wifilist:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\nmac:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v1    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 431
    .local v2, "end":J
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$7;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "useTime="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$7;->a:J

    sub-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    .end local v2    # "end":J
    .restart local v1    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$7;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    const-string/jumbo v6, "WifiListModel null"

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 423
    .end local v1    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 427
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$7;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    const-string/jumbo v6, "result null"

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V

    goto :goto_1
.end method
