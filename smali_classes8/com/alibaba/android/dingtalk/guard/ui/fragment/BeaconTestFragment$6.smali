.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$6;
.super Ljava/lang/Object;
.source "BeaconTestFragment.java"

# interfaces
.implements Lbti;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/altbeacon/beacon/Beacon;)V
    .locals 18
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    .prologue
    .line 125
    move-object/from16 v0, p1

    instance-of v11, v0, Lorg/altbeacon/beacon/BleBeacon;

    if-nez v11, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v2, p1

    .line 128
    check-cast v2, Lorg/altbeacon/beacon/BleBeacon;

    .line 129
    .local v2, "bleBeacon":Lorg/altbeacon/beacon/BleBeacon;
    invoke-virtual/range {p1 .. p1}, Lorg/altbeacon/beacon/Beacon;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "mac":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->e(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;

    .line 132
    .local v4, "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;
    if-nez v4, :cond_2

    .line 133
    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;

    .end local v4    # "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;B)V

    .line 134
    .restart local v4    # "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->e(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    iput-object v8, v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;->a:Ljava/lang/String;

    .line 138
    iget v11, v2, Lorg/altbeacon/beacon/BleBeacon;->major:I

    iput v11, v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;->e:I

    .line 139
    iget v11, v2, Lorg/altbeacon/beacon/BleBeacon;->minor:I

    iput v11, v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;->f:I

    .line 140
    invoke-virtual {v2}, Lorg/altbeacon/beacon/BleBeacon;->getRssi()I

    move-result v11

    iput v11, v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;->b:I

    .line 141
    iget-byte v11, v2, Lorg/altbeacon/beacon/BleBeacon;->mState:B

    iput v11, v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;->d:I

    .line 142
    invoke-virtual {v2}, Lorg/altbeacon/beacon/BleBeacon;->getTxPower()I

    move-result v11

    iput v11, v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;->c:I

    .line 144
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;->notifyDataSetChanged()V

    .line 146
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 147
    invoke-virtual/range {p1 .. p1}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result v9

    .line 148
    .local v9, "rssi":I
    invoke-virtual/range {p1 .. p1}, Lorg/altbeacon/beacon/Beacon;->getTxPower()I

    move-result v10

    .line 149
    .local v10, "txPower":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v3, "builder":Ljava/lang/StringBuilder;
    iget v11, v2, Lorg/altbeacon/beacon/BleBeacon;->mDeviceServiceId:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v2, Lorg/altbeacon/beacon/BleBeacon;->mDeviceId:I

    .line 151
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " major:"

    .line 152
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v2, Lorg/altbeacon/beacon/BleBeacon;->major:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " minor:"

    .line 153
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v2, Lorg/altbeacon/beacon/BleBeacon;->minor:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " rssi:"

    .line 154
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " tx:"

    .line 155
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " s:"

    .line 156
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-byte v12, v2, Lorg/altbeacon/beacon/BleBeacon;->mState:B

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    :try_start_0
    invoke-static {}, Lorg/altbeacon/beacon/Beacon;->getDistanceCalculator()Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v11

    int-to-double v12, v9

    invoke-interface {v11, v10, v12, v13}, Lorg/altbeacon/beacon/distance/DistanceCalculator;->calculateDistance(ID)D

    move-result-wide v6

    .line 159
    .local v6, "distance":D
    const-string/jumbo v11, " dl:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "%.2f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string/jumbo v11, " da:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "%.2f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v2}, Lorg/altbeacon/beacon/BleBeacon;->getDistance()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v6    # "distance":D
    :goto_1
    const-string/jumbo v11, "\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 169
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "rssi":I
    .end local v10    # "txPower":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v11}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->h(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 170
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$6;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v11, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;Lorg/altbeacon/beacon/Beacon;)V

    goto/16 :goto_0

    .line 161
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v9    # "rssi":I
    .restart local v10    # "txPower":I
    :catch_0
    move-exception v5

    .line 162
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
