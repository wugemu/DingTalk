.class Lorg/altbeacon/beacon/client/NullBeaconDataFactory$1;
.super Ljava/lang/Object;
.source "NullBeaconDataFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/client/NullBeaconDataFactory;->requestBeaconData(Lorg/altbeacon/beacon/Beacon;Lorg/altbeacon/beacon/BeaconDataNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/client/NullBeaconDataFactory;

.field final synthetic val$notifier:Lorg/altbeacon/beacon/BeaconDataNotifier;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/client/NullBeaconDataFactory;Lorg/altbeacon/beacon/BeaconDataNotifier;)V
    .locals 0
    .param p1, "this$0"    # Lorg/altbeacon/beacon/client/NullBeaconDataFactory;

    .prologue
    .line 13
    iput-object p1, p0, Lorg/altbeacon/beacon/client/NullBeaconDataFactory$1;->this$0:Lorg/altbeacon/beacon/client/NullBeaconDataFactory;

    iput-object p2, p0, Lorg/altbeacon/beacon/client/NullBeaconDataFactory$1;->val$notifier:Lorg/altbeacon/beacon/BeaconDataNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 16
    iget-object v0, p0, Lorg/altbeacon/beacon/client/NullBeaconDataFactory$1;->val$notifier:Lorg/altbeacon/beacon/BeaconDataNotifier;

    new-instance v1, Lorg/altbeacon/beacon/client/DataProviderException;

    const-string/jumbo v2, "You need to configure a beacon data service to use this feature."

    invoke-direct {v1, v2}, Lorg/altbeacon/beacon/client/DataProviderException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v3, v1}, Lorg/altbeacon/beacon/BeaconDataNotifier;->beaconDataUpdate(Lorg/altbeacon/beacon/Beacon;Lorg/altbeacon/beacon/BeaconData;Lorg/altbeacon/beacon/client/DataProviderException;)V

    .line 17
    return-void
.end method
