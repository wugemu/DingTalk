.class public Lcom/alibaba/android/oa/impl/OAInterfaceImpl;
.super Lcom/alibaba/dingtalk/oabase/OAInterface;
.source "OAInterfaceImpl.java"


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/dingtalk/oabase/OAInterface;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .param p1, "convType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "originMicroApps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v1, "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 462
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 463
    .local v0, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imConvTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 469
    .end local v0    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_1
    return-object v1
.end method

.method private j()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 394
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v6, "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v8

    .line 396
    .local v8, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 397
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v1, "appIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v0, "agents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 400
    .local v7, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v7, :cond_0

    .line 401
    iget-object v9, v7, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 402
    .local v9, "originMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 403
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 404
    .local v5, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v5, :cond_1

    iget-boolean v12, v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imShow:Z

    if-eqz v12, :cond_1

    .line 405
    const/4 v4, 0x0

    .line 408
    .local v4, "isHit":Z
    iget-wide v2, v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    .line 410
    .local v2, "appId":J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-eqz v12, :cond_3

    .line 411
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 412
    const/4 v4, 0x1

    .line 419
    :cond_2
    :goto_1
    if-nez v4, :cond_1

    .line 420
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    iget-wide v12, v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    iget-wide v12, v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    :cond_3
    iget-wide v12, v5, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 416
    const/4 v4, 0x1

    goto :goto_1

    .line 432
    .end local v0    # "agents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "appIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2    # "appId":J
    .end local v4    # "isHit":Z
    .end local v5    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v7    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v9    # "originMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    :cond_4
    return-object v6
.end method


# virtual methods
.method public final a(Landroid/content/Context;)J
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 359
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0}, Leek;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJI)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "appId"    # J
    .param p5, "scene"    # I

    .prologue
    .line 183
    invoke-static {}, Leel;->f()Leek;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Leek;->a(JJI)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Lcom/alibaba/dingtalk/oabase/models/MicroAppType;
    .locals 1
    .param p1, "microAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    .line 103
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, p1}, Leek;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 124
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Leek;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "orgId"    # J
    .param p3, "appId"    # J
    .param p5, "ddCid"    # Ljava/lang/String;
    .param p6, "ddAction"    # Ljava/lang/String;
    .param p7, "from"    # Ljava/lang/String;
    .param p8, "clickFrom"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {}, Leel;->f()Leek;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v1 .. v9}, Leek;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "orgId"    # J
    .param p3, "appId"    # J
    .param p5, "ddCid"    # Ljava/lang/String;
    .param p6, "ddAction"    # Ljava/lang/String;
    .param p7, "from"    # Ljava/lang/String;
    .param p8, "clickFrom"    # Ljava/lang/String;
    .param p9, "conversatoinTitle"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {}, Leel;->f()Leek;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Leek;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # J

    .prologue
    .line 350
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Leek;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appId"    # J

    .prologue
    .line 573
    invoke-virtual {p0, p1}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v2

    .line 574
    .local v2, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v2, :cond_1

    .line 575
    iget-object v0, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 576
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 577
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 578
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_0

    .line 579
    iget-wide v4, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    cmp-long v4, p2, v4

    if-nez v4, :cond_0

    .line 580
    iget-object v3, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->icon:Ljava/lang/String;

    .line 586
    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "rawUrl"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;

    .prologue
    .line 563
    invoke-static {p1, p2}, Legf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/util/List;
    .locals 1
    .param p1, "scene"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, p1}, Leek;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(JI)Ljava/util/List;
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "scene"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, p3}, Leek;->a(I)Ljava/util/List;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Leek;->a(JI)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(JLjava/util/List;)Ljava/util/List;
    .locals 9
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    .local p3, "agents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 280
    .local v3, "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    invoke-static {}, Leel;->f()Leek;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Leek;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v4

    .line 281
    .local v4, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v4, :cond_3

    iget-object v5, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 282
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .restart local v3    # "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 284
    .local v2, "microAPPObjectHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    iget-object v5, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 285
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_0

    .line 286
    iget-wide v6, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 289
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 290
    .local v0, "agentId":Ljava/lang/Long;
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 291
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 295
    .end local v0    # "agentId":Ljava/lang/Long;
    .end local v2    # "microAPPObjectHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    :cond_3
    return-object v3
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/wukong/im/Conversation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 365
    if-eqz p2, :cond_4

    .line 1382
    if-eqz p2, :cond_5

    .line 1383
    const-string/jumbo v1, "id"

    invoke-interface {p2, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1384
    const-string/jumbo v1, "id"

    invoke-interface {p2, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 367
    .local v2, "orgId":J
    :goto_0
    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 1442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1444
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 1445
    if-eqz v1, :cond_2

    .line 1446
    iget-object v1, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 1447
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1448
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1449
    if-eqz v1, :cond_0

    iget-boolean v5, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imShow:Z

    if-eqz v5, :cond_0

    .line 1450
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1385
    .end local v2    # "orgId":J
    :cond_1
    const-string/jumbo v1, "orgId"

    invoke-interface {p2, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1386
    const-string/jumbo v1, "orgId"

    invoke-interface {p2, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 369
    .local v0, "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .restart local v2    # "orgId":J
    :cond_2
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 375
    .end local v0    # "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v2    # "orgId":J
    :goto_2
    return-object v1

    .line 371
    .restart local v2    # "orgId":J
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->j()Ljava/util/List;

    move-result-object v0

    .line 372
    .restart local v0    # "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 375
    .end local v0    # "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v2    # "orgId":J
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->j()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-wide v2, v4

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "scene"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 108
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, p1, v1}, Leek;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0}, Leek;->d()V

    .line 159
    return-void
.end method

.method public final a(JJLcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "appId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v1, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;

    .line 301
    .local v0, "orgMicroAPPIService":Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, -0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$4;

    invoke-direct {v3, p0, p5}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$4;-><init>(Lcom/alibaba/android/oa/impl/OAInterfaceImpl;Lcma;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/android/oa/idl/service/OrgMicroAPPIService;->queryUserAuthority(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    .line 316
    return-void
.end method

.method public final a(JLjava/util/List;Ljava/util/List;ZLcma;)V
    .locals 9
    .param p1, "agentId"    # J
    .param p5, "isHidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p3, "deptVisibleScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "userVisibleScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lege;->a()Legc;

    move-result-object v1

    const/4 v6, 0x0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Legc;->a(JLjava/util/List;Ljava/util/List;ZLcma;)V

    .line 525
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "fromActivity"    # Landroid/app/Activity;
    .param p2, "toUrl"    # Ljava/lang/String;
    .param p3, "reWriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "microAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .param p6, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 98
    move-object v0, p1

    move-object v1, p2

    move-object v3, v2

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Legf;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "fromActivity"    # Landroid/app/Activity;
    .param p2, "toUrl"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 93
    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Legf;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "intentFlag"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 212
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/oa/editor.html"

    new-instance v2, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$2;

    const/high16 v3, 0x10000000

    invoke-direct {v2, p0, p2, v3}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$2;-><init>(Lcom/alibaba/android/oa/impl/OAInterfaceImpl;Landroid/os/Bundle;I)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 220
    return-void
.end method

.method public final a(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 196
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;>;"
    const-string/jumbo v0, "OAInterface"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$1;-><init>(Lcom/alibaba/android/oa/impl/OAInterfaceImpl;Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;)V
    .locals 0
    .param p1, "shortcutObject"    # Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    .prologue
    .line 1206
    invoke-static {p1}, Legk;->a(Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;)V

    .line 1207
    return-void
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V
    .locals 1
    .param p1, "orgId"    # Ljava/lang/Long;
    .param p2, "curPage"    # Ljava/lang/Integer;
    .param p3, "pageSize"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p4, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;>;>;"
    new-instance v0, Lege;

    invoke-direct {v0}, Lege;-><init>()V

    .line 321
    .local v0, "microAppApi":Legc;
    invoke-interface {v0, p1, p2, p3, p4}, Legc;->a(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V

    .line 322
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;Lcma;)V
    .locals 1
    .param p1, "productCode"    # Ljava/lang/String;
    .param p2, "orgId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p3, "callback":Lcma;, "Lcma<Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;>;"
    new-instance v0, Lege;

    invoke-direct {v0}, Lege;-><init>()V

    .line 327
    .local v0, "microAppApi":Legc;
    invoke-interface {v0, p1, p2, p3}, Legc;->a(Ljava/lang/String;Ljava/lang/Long;Lcma;)V

    .line 328
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 254
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$3;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$3;-><init>(Lcom/alibaba/android/oa/impl/OAInterfaceImpl;Lcma;)V

    .line 274
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getCidTokenForOrg(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 275
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcma;)V
    .locals 1
    .param p1, "productCode"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "allowContact"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p4, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    new-instance v0, Lege;

    invoke-direct {v0}, Lege;-><init>()V

    .line 339
    .local v0, "microAppApi":Legc;
    invoke-interface {v0, p1, p2, p3, p4}, Legc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcma;)V

    .line 340
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcma;)V
    .locals 6
    .param p1, "productCode"    # Ljava/lang/String;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "corpId"    # Ljava/lang/String;
    .param p4, "allowContact"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 344
    .local p5, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    new-instance v0, Lege;

    invoke-direct {v0}, Lege;-><init>()V

    .local v0, "microAppApi":Legc;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 345
    invoke-interface/range {v0 .. v5}, Legc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcma;)V

    .line 346
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "display"    # Z

    .prologue
    .line 678
    iput-boolean p1, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->a:Z

    .line 679
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, p1}, Leek;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "agentId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1094
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v6, v7, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    sget v7, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v6, v7, :cond_0

    .line 1095
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "this code should run in work thread"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1097
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1123
    :cond_1
    :goto_0
    return v4

    .line 1100
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v3

    .line 1101
    .local v3, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1102
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 1103
    .local v2, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v2, :cond_3

    iget-object v7, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1104
    iget-object v0, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 1105
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1106
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1107
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_4

    .line 1109
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "0"

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1110
    :cond_5
    const-string/jumbo v7, "0"

    invoke-static {p3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-wide v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {p3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v4, v5

    .line 1111
    goto :goto_0

    .line 1113
    :cond_6
    iget-wide v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v4, v5

    .line 1114
    goto :goto_0
.end method

.method public final b(Ljava/lang/String;J)J
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "senderId"    # J

    .prologue
    .line 602
    const-wide v0, 0x7fffffffffffffffL

    .line 604
    .local v0, "appId":J
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v5

    .line 605
    .local v5, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 607
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 608
    .local v4, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v4, :cond_0

    iget-object v7, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgCid:Ljava/lang/String;

    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 609
    iget-object v3, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 610
    .local v3, "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 611
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 612
    .local v2, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v2, :cond_1

    iget-wide v8, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->senderUid:J

    cmp-long v8, v8, p2

    if-nez v8, :cond_1

    .line 613
    iget-wide v0, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    .line 622
    .end local v2    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v3    # "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v4    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_2
    return-wide v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 8
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1157
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v5, v6, :cond_0

    .line 1158
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "this code should run in work thread"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1160
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "0"

    invoke-static {p2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1161
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v3

    .line 1162
    .local v3, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1163
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 1164
    .local v2, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v2, :cond_1

    iget-object v6, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1165
    iget-object v0, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 1166
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1168
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_2

    .line 1169
    iget-wide v6, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1180
    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v2    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v3    # "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :goto_0
    return-object v1

    .restart local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .restart local v2    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .restart local v3    # "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_3
    move-object v1, v4

    .line 1175
    goto :goto_0

    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v2    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v3    # "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_4
    move-object v1, v4

    .line 1180
    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)Lcom/alibaba/dingtalk/oabase/models/OALoadModel;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1198
    invoke-static {p1}, Legk;->a(Landroid/content/Context;)Lcom/alibaba/dingtalk/oabase/models/OALoadModel;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, p1}, Leek;->a(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Ljava/lang/String;
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 207
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Leek;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    .line 153
    invoke-static {p1}, Legf;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 173
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "action_microapp_unread_change"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 174
    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 168
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Leek;->b(Ljava/lang/String;I)V

    .line 169
    return-void
.end method

.method public final c(Ljava/lang/String;J)J
    .locals 6
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "agentId"    # J

    .prologue
    .line 627
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 628
    invoke-virtual {p0, p1}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v2

    .line 629
    .local v2, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v2, :cond_1

    .line 630
    iget-object v0, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 631
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 632
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 633
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_0

    .line 634
    iget-wide v4, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    cmp-long v4, p2, v4

    if-nez v4, :cond_0

    .line 635
    iget-wide v4, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    .line 643
    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v2    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :goto_0
    return-wide v4

    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public final c(J)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 9
    .param p1, "senderId"    # J

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v3

    .line 530
    .local v3, "orgMicroAPPObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 531
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 532
    .local v2, "orgMicroAPPModel":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    iget-object v1, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 533
    .local v1, "microAPPs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v1, :cond_0

    .line 534
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 535
    .local v0, "microAPP":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    iget-wide v6, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->senderUid:J

    cmp-long v6, p1, v6

    if-nez v6, :cond_1

    .line 542
    .end local v0    # "microAPP":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v1    # "microAPPs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v2    # "orgMicroAPPModel":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0}, Leek;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/util/List;
    .locals 12
    .param p1, "originMicroAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v4

    .line 490
    .local v4, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v3, "orgMicroAPPObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 493
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 494
    .local v2, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v2, :cond_0

    .line 495
    iget-object v1, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 496
    .local v1, "microAPPObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 497
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 498
    .local v0, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_1

    .line 499
    iget-wide v8, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    .line 500
    iget-wide v8, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    iget-wide v10, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    iget-boolean v7, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imShow:Z

    if-eqz v7, :cond_1

    .line 501
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 505
    :cond_2
    iget-wide v8, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    iget-wide v10, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    iget-boolean v7, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imShow:Z

    if-eqz v7, :cond_1

    .line 506
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 519
    .end local v0    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v1    # "microAPPObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v2    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_3
    return-object v3
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, p1}, Leek;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final d(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;
    .locals 1
    .param p1, "microAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    .line 1057
    invoke-static {p1}, Legf;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 558
    invoke-static {}, Leeo;->a()Leeo;

    invoke-static {}, Leeo;->b()V

    .line 559
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-static {p1}, Leeo;->a(Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->a:Z

    return v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 1
    .param p1, "rawUrl"    # Ljava/lang/String;

    .prologue
    .line 568
    invoke-static {p1}, Legf;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final f(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 665
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, p1}, Leek;->d(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1066
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "config_key_shortcut_enable_v451"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final g(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 670
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, p1}, Leek;->e(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1071
    invoke-static {}, Leel;->f()Leek;

    move-result-object v6

    invoke-interface {v6}, Leek;->b()Z

    move-result v0

    .line 1072
    .local v0, "isEmployeeMultiOrg":Z
    if-eqz v0, :cond_0

    .line 1088
    :goto_0
    return v4

    .line 1076
    :cond_0
    invoke-static {}, Leel;->f()Leek;

    move-result-object v6

    invoke-interface {v6}, Leek;->a()Ljava/util/List;

    move-result-object v2

    .line 1077
    .local v2, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1078
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 1079
    .local v1, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v1, :cond_2

    iget-object v6, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->shortCutsList:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->shortCutsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1080
    iget-object v6, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->shortCutsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;

    .line 1081
    .local v3, "shortcut":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->isShortCutDisplay()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .end local v1    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v3    # "shortcut":Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;
    :cond_2
    move v4, v5

    .line 1088
    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "miniAppId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 694
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .local v2, "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v4

    .line 696
    .local v4, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 697
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 698
    .local v3, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v3, :cond_0

    .line 699
    iget-object v0, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 700
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 701
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 702
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_1

    iget-object v7, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppId:Ljava/lang/String;

    .line 703
    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 704
    iget-wide v6, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 713
    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v3    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_2
    return-object v2
.end method

.method public final h()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2101
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->N()Ljava/util/List;

    move-result-object v0

    .line 2102
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2104
    if-eqz v0, :cond_0

    .line 2105
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 2106
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    if-eqz v2, :cond_0

    .line 2108
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    .line 2109
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->newRetail:Z

    if-eqz v0, :cond_0

    .line 2110
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 2116
    :cond_1
    const/4 v0, 0x0

    .line 1189
    goto :goto_0
.end method

.method public final i(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 7
    .param p1, "miniAppId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v3

    .line 719
    .local v3, "orgMicroAPPObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 720
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 721
    .local v2, "orgMicroAPPModel":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v2, :cond_0

    .line 722
    iget-object v1, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 723
    .local v1, "microAPPs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v1, :cond_0

    .line 724
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 725
    .local v0, "microAPP":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_1

    iget-object v6, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppId:Ljava/lang/String;

    .line 726
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppIdV2:Ljava/lang/String;

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 734
    .end local v0    # "microAPP":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v1    # "microAPPs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v2    # "orgMicroAPPModel":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/app/Application;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/app/Application;

    .prologue
    .line 119
    new-instance v0, Lefu;

    invoke-direct {v0}, Lefu;-><init>()V

    invoke-static {v0}, Lcom/alibaba/wukong/WKManager;->registerListener(Lcom/alibaba/wukong/WKListener;)V

    .line 120
    return-void
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "agentId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 739
    const-string/jumbo v2, ""

    .line 740
    .local v2, "miniAppId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v4

    .line 741
    .local v4, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 742
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 743
    .local v3, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v3, :cond_0

    .line 744
    iget-object v0, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 745
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 746
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 747
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_1

    iget-wide v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 748
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppId:Ljava/lang/String;

    .line 757
    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v3    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_2
    return-object v2
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 762
    const-string/jumbo v2, ""

    .line 763
    .local v2, "miniAppId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v4

    .line 764
    .local v4, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 765
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 766
    .local v3, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v3, :cond_0

    .line 767
    iget-object v0, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 768
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 769
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 770
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_1

    iget-wide v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 771
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppId:Ljava/lang/String;

    .line 780
    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v3    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_2
    return-object v2
.end method

.method public final l(Ljava/lang/String;)I
    .locals 8
    .param p1, "miniAppIdV2"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 915
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v5, v6, :cond_0

    .line 916
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "this code should run in work thread"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 918
    :cond_0
    const/4 v4, 0x0

    .line 919
    .local v4, "status":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 920
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v3

    .line 921
    .local v3, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 922
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 923
    .local v2, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v2, :cond_1

    .line 924
    iget-object v0, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 925
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 926
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 927
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_2

    iget-object v7, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppIdV2:Ljava/lang/String;

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 928
    iget v4, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->migrationStatus:I

    .line 937
    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v2    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v3    # "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_3
    return v4
.end method

.method public final m(Ljava/lang/String;)I
    .locals 10
    .param p1, "microAppId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 943
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v5, v6, :cond_0

    .line 944
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "this code should run in work thread"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 946
    :cond_0
    const/4 v4, 0x0

    .line 947
    .local v4, "status":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 948
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v3

    .line 949
    .local v3, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 950
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 951
    .local v2, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v2, :cond_1

    .line 952
    iget-object v0, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 953
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 954
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 955
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_2

    iget-wide v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 956
    iget v4, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->migrationStatus:I

    .line 965
    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v2    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v3    # "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_3
    return v4
.end method

.method public final n(Ljava/lang/String;)I
    .locals 10
    .param p1, "agentId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 971
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v5, v6, :cond_0

    .line 972
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "this code should run in work thread"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 974
    :cond_0
    const/4 v4, 0x0

    .line 975
    .local v4, "status":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 976
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v3

    .line 977
    .local v3, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 978
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 979
    .local v2, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v2, :cond_1

    .line 980
    iget-object v0, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 981
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 982
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 983
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_2

    iget-wide v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 984
    iget v4, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->migrationStatus:I

    .line 993
    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v2    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v3    # "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_3
    return v4
.end method

.method public final o(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "agentId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 999
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v5, v6, :cond_0

    .line 1000
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "this code should run in work thread"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1003
    :cond_0
    const-string/jumbo v2, ""

    .line 1004
    .local v2, "miniAppIdV2":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1005
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v4

    .line 1006
    .local v4, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1007
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 1008
    .local v3, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v3, :cond_1

    .line 1009
    iget-object v0, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 1010
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1011
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1012
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_2

    iget-wide v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1013
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppIdV2:Ljava/lang/String;

    .line 1023
    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v3    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v4    # "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_3
    return-object v2
.end method

.method public final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1029
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v5, v6, :cond_0

    .line 1030
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "this code should run in work thread"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1032
    :cond_0
    const-string/jumbo v2, ""

    .line 1033
    .local v2, "miniAppIdV2":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1034
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v4

    .line 1035
    .local v4, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1036
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 1037
    .local v3, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v3, :cond_1

    .line 1038
    iget-object v0, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 1039
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1040
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1041
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_2

    iget-wide v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1042
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppIdV2:Ljava/lang/String;

    .line 1052
    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v3    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v4    # "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_3
    return-object v2
.end method

.method public final q(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .locals 8
    .param p1, "agentId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1129
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v4, v5, :cond_0

    .line 1130
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "this code should run in work thread"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1132
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1133
    invoke-virtual {p0}, Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->c()Ljava/util/List;

    move-result-object v3

    .line 1134
    .local v3, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1135
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 1136
    .local v2, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v2, :cond_1

    .line 1137
    iget-object v0, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 1138
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1140
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_2

    .line 1141
    iget-wide v6, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1151
    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v2    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v3    # "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :goto_0
    return-object v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
