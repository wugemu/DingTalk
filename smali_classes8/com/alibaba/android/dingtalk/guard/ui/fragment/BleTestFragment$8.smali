.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$8;
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
    .line 447
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$8;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$8;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 450
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$8;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    move-result-object v6

    if-nez v6, :cond_0

    .line 475
    :goto_0
    return-void

    .line 453
    :cond_0
    new-instance v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;

    invoke-direct {v4}, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;-><init>()V

    .line 454
    .local v4, "reqModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;
    const-string/jumbo v6, "123"

    iput-object v6, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;->b:Ljava/lang/String;

    .line 455
    const/16 v6, 0xde

    iput v6, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;->a:I

    .line 456
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$8;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/alibaba/android/dingbox/btinterface/BleInterface;->active(Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    move-result-object v5

    .line 457
    .local v5, "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    if-eqz v5, :cond_2

    .line 459
    :try_start_0
    invoke-virtual {v5}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    .line 460
    .local v1, "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    if-eqz v1, :cond_1

    .line 461
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$8;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "code:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  reason:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v1    # "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 473
    .local v2, "end":J
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$8;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "useTime="

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-wide v10, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$8;->a:J

    sub-long v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    .end local v2    # "end":J
    .restart local v1    # "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$8;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    const-string/jumbo v7, "error model null"

    invoke-static {v6, v7}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 465
    .end local v1    # "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 469
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$8;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    const-string/jumbo v7, "result null"

    invoke-static {v6, v7}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V

    goto :goto_1
.end method
