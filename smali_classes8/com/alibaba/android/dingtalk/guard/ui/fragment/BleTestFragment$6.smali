.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$6;
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
    .line 367
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$6;->a:J

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
    .line 370
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    move-result-object v5

    if-nez v5, :cond_0

    .line 394
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/android/dingbox/btinterface/BleInterface;->getActiveInfo()Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    move-result-object v4

    .line 374
    .local v4, "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;>;"
    if-eqz v4, :cond_2

    .line 376
    :try_start_0
    invoke-virtual {v4}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;

    .line 377
    .local v0, "deviceActiveModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;
    if-eqz v0, :cond_1

    .line 378
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "devServId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->d:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mac:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " sn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " compTag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->e:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v0    # "deviceActiveModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 393
    .local v2, "end":J
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "useTime="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$6;->a:J

    sub-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    .end local v2    # "end":J
    .restart local v0    # "deviceActiveModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    const-string/jumbo v6, "error model null"

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 385
    .end local v0    # "deviceActiveModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 389
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    const-string/jumbo v6, "result null"

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V

    goto :goto_1
.end method
