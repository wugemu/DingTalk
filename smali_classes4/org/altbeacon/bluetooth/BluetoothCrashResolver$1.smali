.class Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothCrashResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/bluetooth/BluetoothCrashResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;


# direct methods
.method constructor <init>(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V
    .locals 0
    .param p1, "this$0"    # Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    .prologue
    .line 314
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 317
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-static {v2}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$000(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 321
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "Bluetooth discovery finished"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-static {v2}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$100(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    .line 328
    :cond_0
    :goto_0
    const-string/jumbo v2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-static {v2}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$000(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-static {v2, v5}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$202(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;Z)Z

    .line 331
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "Bluetooth discovery started"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    :cond_1
    :goto_1
    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    const-string/jumbo v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 341
    .local v1, "state":I
    sparse-switch v1, :sswitch_data_0

    .line 364
    .end local v1    # "state":I
    :cond_2
    :goto_2
    :sswitch_0
    return-void

    .line 325
    :cond_3
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "Bluetooth discovery finished (external)"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 334
    :cond_4
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "Bluetooth discovery started (external)"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 343
    .restart local v1    # "state":I
    :sswitch_1
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "Bluetooth state is ERROR"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 346
    :sswitch_2
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "Bluetooth state is OFF"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$302(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;J)J

    goto :goto_2

    .line 352
    :sswitch_3
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "Bluetooth state is ON"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "Bluetooth was turned off for %s milliseconds"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-static {v5}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$400(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J

    move-result-wide v6

    iget-object v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-static {v5}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$300(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-static {v2}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$400(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-static {v4}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$300(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 355
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-virtual {v2}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->crashDetected()V

    goto/16 :goto_2

    .line 359
    :sswitch_4
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$402(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;J)J

    .line 360
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "Bluetooth state is TURNING_ON"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 341
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_0
    .end sparse-switch
.end method
