.class public Lcom/alibaba/android/dingtalk/live/msg/ReceivedConverter;
.super Ljava/lang/Object;
.source "ReceivedConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseReceive(Ljava/lang/String;ILjava/lang/String;[B)Ljava/util/List;
    .locals 20
    .param p0, "dataId"    # Ljava/lang/String;
    .param p1, "source"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/msg/core/model/Package",
            "<",
            "Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v9, Ljava/util/ArrayList;

    const/16 v3, 0x32

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/msg/core/model/Package<Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;>;>;"
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v3, v0

    if-gtz v3, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-object v9

    .line 28
    :cond_1
    const-wide/16 v6, 0x0

    .line 30
    .local v6, "offset":J
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    .line 32
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    .line 36
    :goto_1
    const/4 v5, 0x0

    .line 43
    .local v5, "taskId":Ljava/lang/String;
    :goto_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 44
    .local v12, "parseTime":J
    invoke-static/range {p3 .. p3}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->parse([B)Ljava/util/List;

    move-result-object v11

    .line 45
    .local v11, "protocolList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_4

    const-wide/16 v12, 0x0

    .line 48
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;

    .line 49
    .local v2, "protocol":Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .local v14, "start":J
    move-object/from16 v3, p0

    move/from16 v4, p1

    .line 50
    invoke-static/range {v2 .. v7}, Lcom/alibaba/android/dingtalk/live/msg/ParseKit;->toPackage(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;Ljava/lang/String;ILjava/lang/String;J)Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    move-result-object v10

    .line 51
    .local v10, "p":Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;, "Lcom/alibaba/android/dingtalk/live/msg/core/model/Package<Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;>;"
    if-eqz v10, :cond_2

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    add-long v18, v18, v12

    move-wide/from16 v0, v18

    iput-wide v0, v10, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->packTime:J

    .line 53
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 56
    .end local v2    # "protocol":Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;
    .end local v10    # "p":Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;, "Lcom/alibaba/android/dingtalk/live/msg/core/model/Package<Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;>;"
    .end local v11    # "protocolList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;>;"
    .end local v12    # "parseTime":J
    .end local v14    # "start":J
    :catch_0
    move-exception v8

    .line 58
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 34
    .end local v5    # "taskId":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    const-wide/16 v6, 0x0

    goto :goto_1

    .line 39
    :cond_3
    move-object/from16 v5, p2

    .restart local v5    # "taskId":Ljava/lang/String;
    goto :goto_2

    .line 45
    .restart local v11    # "protocolList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;>;"
    .restart local v12    # "parseTime":J
    :cond_4
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    div-long v12, v16, v18
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method
