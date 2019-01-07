.class public final Lcbs;
.super Ljava/lang/Object;
.source "RedPacketsRpc.java"


# static fields
.field private static a:Lcbs;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static declared-synchronized a()Lcbs;
    .locals 2

    .prologue
    .line 70
    const-class v1, Lcbs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcbs;->a:Lcbs;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcbs;

    invoke-direct {v0}, Lcbs;-><init>()V

    sput-object v0, Lcbs;->a:Lcbs;

    .line 73
    :cond_0
    sget-object v0, Lcbs;->a:Lcbs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 575
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 577
    const-string/jumbo v3, ""

    .line 579
    .local v3, "prestr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 580
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 581
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 583
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_0

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 579
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 590
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public final a(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 367
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lcbs$5;

    invoke-direct {v0, p0, p1}, Lcbs$5;-><init>(Lcbs;Lcma;)V

    .line 374
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;

    .line 375
    .local v1, "service":Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;
    if-eqz v1, :cond_0

    .line 376
    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;->unbindAlipay(Liyv;)V

    .line 378
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V
    .locals 3
    .param p1, "year"    # Ljava/lang/Integer;
    .param p2, "start"    # Ljava/lang/Integer;
    .param p3, "size"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 203
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;>;"
    new-instance v0, Lcbs$20;

    invoke-direct {v0, p0, p4}, Lcbs$20;-><init>(Lcbs;Lcma;)V

    .line 210
    .local v0, "handler":Lcmg;, "Lcmg<Lcba;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;

    .line 211
    .local v1, "service":Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;
    if-eqz v1, :cond_0

    .line 212
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;->querySentRedEnvelopClusters(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    .line 214
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "sender"    # Ljava/lang/Long;
    .param p2, "clusterId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 171
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;>;"
    new-instance v0, Lcbs$18;

    invoke-direct {v0, p0, p3}, Lcbs$18;-><init>(Lcbs;Lcma;)V

    .line 178
    .local v0, "handler":Lcmg;, "Lcmg<Lcaz;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopPickIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopPickIService;

    .line 179
    .local v1, "service":Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopPickIService;
    if-eqz v1, :cond_0

    .line 180
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopPickIService;->checkRedEnvelopClusterPickingStatus(Ljava/lang/Long;Ljava/lang/String;Liyv;)V

    .line 182
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLcbe;JLjava/lang/String;ILcma;)V
    .locals 24
    .param p1, "sender"    # Ljava/lang/Long;
    .param p2, "clusterId"    # Ljava/lang/String;
    .param p3, "amount"    # Ljava/lang/String;
    .param p4, "size"    # Ljava/lang/Integer;
    .param p6, "type"    # Ljava/lang/Integer;
    .param p7, "cid"    # Ljava/lang/String;
    .param p8, "congratulations"    # Ljava/lang/String;
    .param p9, "oid"    # J
    .param p11, "redEnvelopeSubscribeLifecycleModel"    # Lcbe;
    .param p12, "pickPlanTime"    # J
    .param p14, "ext"    # Ljava/lang/String;
    .param p15, "senderPayType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcbe;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p5, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p16, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;>;"
    new-instance v20, Lcbs$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p16

    invoke-direct {v0, v1, v2}, Lcbs$9;-><init>(Lcbs;Lcma;)V

    .line 143
    .local v20, "handler":Lcmg;, "Lcmg<Lcay;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v21, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "sender"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v5, "clusterId"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v5, "amount"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v5, "size"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v5, "type"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    if-eqz p5, :cond_0

    .line 150
    const-string/jumbo v5, "receivers"

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 154
    const-string/jumbo v5, "cid"

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_1
    const-string/jumbo v5, "pickPlanTime"

    invoke-static/range {p12 .. p13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v5, "oid"

    invoke-static/range {p9 .. p10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v5, "senderPayType"

    invoke-static/range {p15 .. p15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static/range {v21 .. v21}, Lcbs;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v22

    .line 162
    .local v22, "signSourceString":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcbq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 164
    .local v14, "sign":Ljava/lang/String;
    const-class v5, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopSendIService;

    invoke-static {v5}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopSendIService;

    .line 165
    .local v4, "service":Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopSendIService;
    if-eqz v4, :cond_2

    .line 166
    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v15, 0x0

    const-wide/16 v6, 0x0

    cmp-long v5, p12, v6

    if-lez v5, :cond_3

    .end local p12    # "pickPlanTime":J
    :goto_0
    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v16, p11

    move-object/from16 v18, p14

    invoke-interface/range {v4 .. v20}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopSendIService;->generateRedEnvelopClusterV4(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcbe;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    .line 168
    :cond_2
    return-void

    .line 166
    .restart local p12    # "pickPlanTime":J
    :cond_3
    const-wide/16 p12, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/String;ZLcma;)V
    .locals 6
    .param p1, "sender"    # Ljava/lang/Long;
    .param p2, "clusterId"    # Ljava/lang/String;
    .param p3, "safe"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Z",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 185
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;>;"
    new-instance v5, Lcbs$19;

    invoke-direct {v5, p0, p4}, Lcbs$19;-><init>(Lcbs;Lcma;)V

    .line 192
    .local v5, "handler":Lcmg;, "Lcmg<Lcaz;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;>;"
    const-class v1, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopPickIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopPickIService;

    .line 193
    .local v0, "service":Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopPickIService;
    if-eqz v0, :cond_0

    .line 194
    if-eqz p3, :cond_1

    .line 195
    invoke-static {}, Lcbt;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcbt;->a()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopPickIService;->pickRedEnvelopClusterV2(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-interface {v0, p1, p2, v5}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopPickIService;->pickRedEnvelopCluster(Ljava/lang/Long;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/redpackets/models/AcquireResultObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 424
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/redpackets/models/AcquireResultObject;>;"
    new-instance v0, Lcbs$8;

    invoke-direct {v0, p0, p2}, Lcbs$8;-><init>(Lcbs;Lcma;)V

    .line 431
    .local v0, "handler":Lcmg;, "Lcmg<Lcar;Lcom/alibaba/android/dingtalk/redpackets/models/AcquireResultObject;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;

    .line 432
    .local v1, "service":Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;
    if-eqz v1, :cond_0

    .line 433
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;->queryAcquireResult(Ljava/lang/String;Liyv;)V

    .line 435
    :cond_0
    return-void
.end method

.method public final b(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 381
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Lcbs$6;

    invoke-direct {v0, p0, p1}, Lcbs$6;-><init>(Lcbs;Lcma;)V

    .line 388
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;

    .line 389
    .local v1, "service":Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;
    if-eqz v1, :cond_0

    .line 390
    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;->getBindAlipay(Liyv;)V

    .line 392
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "balanceOrderString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 452
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lcbs$11;

    invoke-direct {v0, p0, p2}, Lcbs$11;-><init>(Lcbs;Lcma;)V

    .line 459
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalk/redpackets/idl/service/BalanceIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/idl/service/BalanceIService;

    .line 460
    .local v1, "service":Lcom/alibaba/android/dingtalk/redpackets/idl/service/BalanceIService;
    if-eqz v1, :cond_0

    .line 461
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/BalanceIService;->pay(Ljava/lang/String;Liyv;)V

    .line 463
    :cond_0
    return-void
.end method
