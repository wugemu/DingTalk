.class Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;
.super Ljava/lang/Object;
.source "BleBluetoothScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->startFind(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Lorg/altbeacon/beacon/Region;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

.field final synthetic val$region:Lorg/altbeacon/beacon/Region;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;Lorg/altbeacon/beacon/Region;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 109
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->isBound(Lorg/altbeacon/beacon/BeaconConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)I

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/altbeacon/beacon/BleAdvertisementParser;

    const v2, 0xfe3c

    invoke-direct {v1, v2}, Lorg/altbeacon/beacon/BleAdvertisementParser;-><init>(I)V

    const-string/jumbo v2, "m:0-1=0001,p:2-2,i:3-4,i:5-8,i:9-12,i:13-14,i:15-16,i:17-17,i:18-18,i:19-21"

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/BleAdvertisementParser;->setBeaconLayout(Ljava/lang/String;)Lorg/altbeacon/beacon/BeaconParser;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/altbeacon/beacon/BeaconParser;

    invoke-direct {v1}, Lorg/altbeacon/beacon/BeaconParser;-><init>()V

    const-string/jumbo v2, "m:2-3=0215,i:4-19,i:20-21,i:22-23,p:24-24"

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/BeaconParser;->setBeaconLayout(Ljava/lang/String;)Lorg/altbeacon/beacon/BeaconParser;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 115
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_2
    :goto_0
    return-void

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 117
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->isBound(Lorg/altbeacon/beacon/BeaconConsumer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;Lorg/altbeacon/beacon/Region;)V

    goto :goto_0

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->unbind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->bind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0, v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$102(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;I)I

    goto :goto_0

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)I

    move-result v0

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->bind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0, v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$102(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;I)I

    goto :goto_0
.end method
