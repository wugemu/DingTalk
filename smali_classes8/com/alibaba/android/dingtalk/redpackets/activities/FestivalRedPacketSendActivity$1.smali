.class final Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$1;
.super Landroid/os/Handler;
.source "FestivalRedPacketSendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 132
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 134
    :pswitch_0
    new-instance v12, Lcbp;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Lcbp;-><init>(Ljava/lang/String;)V

    .line 1059
    .local v12, "payResult":Lcbp;
    iget-object v15, v12, Lcbp;->b:Ljava/lang/String;

    .line 2045
    .local v15, "resultInfo":Ljava/lang/String;
    iget-object v0, v12, Lcbp;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 139
    .local v16, "resultStatus":Ljava/lang/String;
    const-string/jumbo v24, "redpackets"

    const-string/jumbo v25, "send"

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string/jumbo v28, "pay result:"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const-string/jumbo v28, "***"

    .line 141
    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const-string/jumbo v28, " resultStatus "

    aput-object v28, v26, v27

    const/16 v27, 0x3

    const-string/jumbo v28, "***"

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v26 .. v26}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 139
    invoke-static/range {v24 .. v26}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v13, 0x0

    .line 144
    .local v13, "redPacketsClusterObject":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    if-eqz v24, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string/jumbo v25, "cluster"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v24

    if-eqz v24, :cond_1

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string/jumbo v25, "cluster"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    .end local v13    # "redPacketsClusterObject":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    check-cast v13, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 147
    .restart local v13    # "redPacketsClusterObject":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    :cond_1
    if-eqz v13, :cond_2

    .line 148
    const-string/jumbo v24, "redpackets"

    const-string/jumbo v25, "send"

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string/jumbo v28, "pay result clid:"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    iget-object v0, v13, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 150
    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const-string/jumbo v28, " type "

    aput-object v28, v26, v27

    const/16 v27, 0x3

    iget v0, v13, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v26 .. v26}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 148
    invoke-static/range {v24 .. v26}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2
    const-string/jumbo v24, "9000"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 156
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v15, v13}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V

    goto/16 :goto_0

    .line 160
    :cond_3
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    .line 161
    .local v5, "end":I
    const-string/jumbo v24, "&sign="

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v19, v24, 0x6

    .line 162
    .local v19, "start":I
    move/from16 v0, v19

    if-ge v5, v0, :cond_4

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v15, v13}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V

    goto/16 :goto_0

    .line 167
    :cond_4
    move/from16 v0, v19

    invoke-virtual {v15, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "\""

    const-string/jumbo v26, ""

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 169
    .local v18, "sign":Ljava/lang/String;
    const-string/jumbo v24, "&sign_type"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 170
    .local v7, "index":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v7, v0, :cond_5

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v15, v13}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V

    goto/16 :goto_0

    .line 174
    :cond_5
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "newResult":Ljava/lang/String;
    const-string/jumbo v24, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v8, v1}, Lcbq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    .line 180
    .local v23, "verify":Z
    move-object/from16 v22, v8

    .local v22, "url":Ljava/lang/String;
    const-string/jumbo v24, "?"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 181
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "https://www.dingtalk.com"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v22, v24, v25

    invoke-static/range {v24 .. v24}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 186
    :goto_1
    :try_start_0
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 187
    .local v21, "uri":Landroid/net/Uri;
    const-string/jumbo v24, "partner"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 188
    .local v11, "partner":Ljava/lang/String;
    const-string/jumbo v24, "seller_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 189
    .local v17, "sellerId":Ljava/lang/String;
    const-string/jumbo v24, "out_trade_no"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, "outTradeNo":Ljava/lang/String;
    const-string/jumbo v24, "out_order_no"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 192
    .local v9, "outOrderNo":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_6

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 193
    if-eqz v23, :cond_9

    const-string/jumbo v24, "\""

    const-string/jumbo v25, ""

    .line 194
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "2088801132166875"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    const-string/jumbo v24, "\""

    const-string/jumbo v25, ""

    .line 195
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "p-etaomkt10@service.taobao.com"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    if-eqz v13, :cond_9

    const-string/jumbo v24, "\""

    const-string/jumbo v25, ""

    .line 197
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    iget-object v0, v13, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->businessId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    const/16 v23, 0x1

    .line 200
    :cond_6
    :goto_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 201
    if-eqz v23, :cond_a

    if-eqz v13, :cond_a

    const-string/jumbo v24, "\""

    const-string/jumbo v25, ""

    .line 203
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    iget-object v0, v13, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->businessId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    if-eqz v24, :cond_a

    const/16 v23, 0x1

    .line 209
    .end local v9    # "outOrderNo":Ljava/lang/String;
    .end local v10    # "outTradeNo":Ljava/lang/String;
    .end local v11    # "partner":Ljava/lang/String;
    .end local v17    # "sellerId":Ljava/lang/String;
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_7
    :goto_3
    if-nez v23, :cond_b

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v15, v13}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V

    goto/16 :goto_0

    .line 183
    :cond_8
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "https://www.dingtalk.com"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "?"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    aput-object v22, v24, v25

    invoke-static/range {v24 .. v24}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_1

    .line 197
    .restart local v9    # "outOrderNo":Ljava/lang/String;
    .restart local v10    # "outTradeNo":Ljava/lang/String;
    .restart local v11    # "partner":Ljava/lang/String;
    .restart local v17    # "sellerId":Ljava/lang/String;
    .restart local v21    # "uri":Landroid/net/Uri;
    :cond_9
    const/16 v23, 0x0

    goto :goto_2

    .line 203
    :cond_a
    const/16 v23, 0x0

    goto :goto_3

    .line 205
    .end local v9    # "outOrderNo":Ljava/lang/String;
    .end local v10    # "outTradeNo":Ljava/lang/String;
    .end local v11    # "partner":Ljava/lang/String;
    .end local v17    # "sellerId":Ljava/lang/String;
    .end local v21    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 206
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 213
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V

    .line 216
    sget v14, Lcaj$f;->redpackets_conversation_alipay_success:I

    .line 217
    .local v14, "res":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcid;->c()Landroid/app/Application;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v14, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    .line 218
    .local v20, "toast":Landroid/widget/Toast;
    const/16 v24, 0x11

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 219
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 224
    .end local v5    # "end":I
    .end local v7    # "index":I
    .end local v8    # "newResult":Ljava/lang/String;
    .end local v14    # "res":I
    .end local v18    # "sign":Ljava/lang/String;
    .end local v19    # "start":I
    .end local v20    # "toast":Landroid/widget/Toast;
    .end local v22    # "url":Ljava/lang/String;
    .end local v23    # "verify":Z
    :cond_c
    if-eqz v13, :cond_0

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    move-object/from16 v24, v0

    sget v25, Lcaj$f;->redpackets_checking_result:I

    invoke-virtual/range {v24 .. v25}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->showLoadingDialog(I)V

    .line 226
    const-string/jumbo v24, "redpackets"

    const-string/jumbo v25, "send"

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string/jumbo v28, "pay result failed, quering:"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    iget-object v0, v13, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 228
    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const-string/jumbo v28, " type "

    aput-object v28, v26, v27

    const/16 v27, 0x3

    iget v0, v13, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v26 .. v26}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 226
    invoke-static/range {v24 .. v26}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    move-object v6, v13

    .line 230
    .local v6, "finalRedPacketsClusterObject":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v24

    iget-object v0, v13, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->businessId:Ljava/lang/String;

    move-object/from16 v25, v0

    new-instance v26, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$1$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$1$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$1;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V

    invoke-virtual/range {v24 .. v26}, Lcbs;->a(Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
