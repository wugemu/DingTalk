.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$5;
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
.field final synthetic a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$5;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$5;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;

    iput-wide p3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$5;->b:J

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
    .line 332
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$5;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    move-result-object v5

    if-nez v5, :cond_0

    .line 353
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$5;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$5;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;

    invoke-interface {v5, v6}, Lcom/alibaba/android/dingbox/btinterface/BleInterface;->connectWifi(Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    move-result-object v4

    .line 336
    .local v4, "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    if-eqz v4, :cond_2

    .line 338
    :try_start_0
    invoke-virtual {v4}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    .line 339
    .local v1, "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    if-eqz v1, :cond_1

    .line 340
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$5;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "code:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  reason:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v1    # "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 352
    .local v2, "end":J
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$5;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "useTime="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$5;->b:J

    sub-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    .end local v2    # "end":J
    .restart local v1    # "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$5;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    const-string/jumbo v6, "error model null"

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 344
    .end local v1    # "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 348
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$5;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    const-string/jumbo v6, "result null"

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V

    goto :goto_1
.end method
