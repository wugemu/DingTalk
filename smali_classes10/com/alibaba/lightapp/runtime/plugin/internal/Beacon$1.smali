.class Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$1;
.super Ljava/lang/Object;
.source "Beacon.java"

# interfaces
.implements Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didEnterRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 0
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    .prologue
    .line 79
    return-void
.end method

.method public didExitRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 0
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    .prologue
    .line 82
    return-void
.end method

.method public onBeaconRangeChange(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    .local p1, "beacons":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Beacon;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 87
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Beacon;

    .line 88
    .local v0, "beacon":Lorg/altbeacon/beacon/Beacon;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 91
    const-string/jumbo v6, "uuid"

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_0
    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 94
    const-string/jumbo v6, "major"

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :cond_1
    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 97
    const-string/jumbo v6, "minor"

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :cond_2
    const-string/jumbo v6, "accuracy"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v6, "rssi"

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v6, "proximity"

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v8

    invoke-virtual {v3, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 109
    .end local v0    # "beacon":Lorg/altbeacon/beacon/Beacon;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    .line 110
    .local v4, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 111
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 112
    return-void
.end method
