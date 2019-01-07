.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;
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
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;IILjava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    iput p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->a:I

    iput p3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->b:I

    iput-object p4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 511
    iget-object v10, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v10}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    move-result-object v10

    if-nez v10, :cond_0

    .line 545
    :goto_0
    return-void

    .line 515
    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 517
    .local v6, "json":Lorg/json/JSONObject;
    const-string/jumbo v10, "major"

    iget v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->a:I

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 518
    const-string/jumbo v10, "minor"

    iget v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->b:I

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 519
    const-string/jumbo v10, "secret"

    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->c:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/taobao/security/proc/tools/HexUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 522
    .local v7, "key":[B
    iget-object v10, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->c:Ljava/lang/String;

    invoke-static {v10}, Lcom/taobao/security/proc/tools/HexUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 524
    .local v5, "ivData":[B
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v7, v5}, Lbtg;->a([B[B[B)[B

    move-result-object v0

    .line 525
    .local v0, "ciphertext":[B
    new-instance v8, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;

    invoke-direct {v8}, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;-><init>()V

    .line 526
    .local v8, "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;
    const/4 v10, 0x1

    iput v10, v8, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;->a:I

    .line 527
    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;->b:Z

    .line 528
    const/4 v10, 0x0

    iput v10, v8, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;->c:I

    .line 529
    iput-object v0, v8, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;->d:[B

    .line 531
    iget-object v10, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v10}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    move-result-object v10

    invoke-interface {v10, v8}, Lcom/alibaba/android/dingbox/btinterface/BleInterface;->handshake(Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    move-result-object v9

    .line 532
    .local v9, "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    invoke-virtual {v9}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    .line 533
    .local v4, "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    if-eqz v4, :cond_1

    .line 534
    iget-object v10, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "code:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " msg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v0    # "ciphertext":[B
    .end local v4    # "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    .end local v5    # "ivData":[B
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v7    # "key":[B
    .end local v8    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;
    .end local v9    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 544
    .local v2, "end":J
    iget-object v10, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "useTime="

    aput-object v12, v11, v13

    iget-wide v12, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->d:J

    sub-long v12, v2, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-static {v11}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 536
    .end local v2    # "end":J
    .restart local v0    # "ciphertext":[B
    .restart local v4    # "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    .restart local v5    # "ivData":[B
    .restart local v6    # "json":Lorg/json/JSONObject;
    .restart local v7    # "key":[B
    .restart local v8    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;
    .restart local v9    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    const-string/jumbo v11, "errorModel null"

    invoke-static {v10, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 538
    .end local v0    # "ciphertext":[B
    .end local v4    # "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    .end local v5    # "ivData":[B
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v7    # "key":[B
    .end local v8    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;
    .end local v9    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :catch_0
    move-exception v1

    .line 539
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 540
    iget-object v10, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;->e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Exception:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V

    goto :goto_1
.end method
