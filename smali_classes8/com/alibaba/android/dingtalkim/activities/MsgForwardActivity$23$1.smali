.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .prologue
    .line 1253
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .local v4, "tmpData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    .local v6, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1257
    .local v7, "displayConversationHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1261
    .local v5, "mailData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    :try_start_0
    invoke-static {}, Ldjl;->a()Ljava/lang/String;

    move-result-object v11

    .line 1533
    .local v11, "filesHelperCid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->e()J

    move-result-wide v2

    const-wide/16 v16, 0x51fa

    move-wide/from16 v0, v16

    invoke-static {v2, v3, v0, v1}, Ldjl;->a(JJ)Ljava/lang/String;

    move-result-object v13

    .line 1264
    .local v13, "redpacketCid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/Conversation;

    .line 1266
    .local v8, "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v8, :cond_0

    .line 1267
    const-wide/16 v16, 0x1

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v18

    cmp-long v3, v16, v18

    if-eqz v3, :cond_1

    const-wide/16 v16, 0x6

    .line 1268
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v18

    cmp-long v3, v16, v18

    if-nez v3, :cond_2

    :cond_1
    const-string/jumbo v3, "1"

    const-string/jumbo v15, "enable_transmit"

    .line 1269
    invoke-interface {v8, v15}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const-wide/16 v16, 0x7

    .line 1271
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v18

    cmp-long v3, v16, v18

    if-eqz v3, :cond_0

    const-wide/16 v16, 0xa

    .line 1272
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v18

    cmp-long v3, v16, v18

    if-eqz v3, :cond_0

    const-wide/16 v16, 0x4

    .line 1273
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v18

    cmp-long v3, v16, v18

    if-eqz v3, :cond_0

    const-wide/16 v16, 0x10

    .line 1274
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v18

    cmp-long v3, v16, v18

    if-eqz v3, :cond_0

    const-wide/16 v16, 0x13

    .line 1275
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v18

    cmp-long v3, v16, v18

    if-eqz v3, :cond_0

    const-wide/16 v16, 0x14

    .line 1276
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v18

    cmp-long v3, v16, v18

    if-eqz v3, :cond_0

    .line 1277
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v3

    sget-object v15, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-eq v3, v15, :cond_0

    .line 1278
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v3

    sget-object v15, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-eq v3, v15, :cond_0

    .line 1279
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->isParent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v3, v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->D:Z

    if-eqz v3, :cond_3

    invoke-static {}, Ldjs;->a()Ldjs;

    move-result-object v3

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ldjs;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1286
    :cond_3
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v3

    invoke-virtual {v3, v8}, Ldks;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->i(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2032
    invoke-static {v8}, Libb;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    .line 1293
    if-nez v3, :cond_0

    .line 1301
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v3, v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->E:Z

    if-eqz v3, :cond_4

    invoke-static {}, Ldjs;->a()Ldjs;

    move-result-object v3

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ldjs;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v16, 0x5

    .line 1302
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v18

    cmp-long v3, v16, v18

    if-eqz v3, :cond_0

    .line 1306
    :cond_4
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v16

    const-wide/16 v18, 0x7

    cmp-long v3, v16, v18

    if-eqz v3, :cond_0

    .line 1307
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1308
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v16, 0xa

    .line 1309
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v18

    cmp-long v3, v16, v18

    if-eqz v3, :cond_0

    .line 1311
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v15, ":"

    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1312
    new-instance v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;-><init>()V

    .line 1313
    .local v9, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iput-object v8, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 1314
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v15, ":"

    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1316
    .local v14, "uidArray":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v15

    invoke-virtual {v15}, Lcid;->b()Lchy;

    move-result-object v15

    invoke-virtual {v15}, Lchy;->getCurrentUid()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1317
    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1344
    .end local v8    # "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    .end local v9    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v11    # "filesHelperCid":Ljava/lang/String;
    .end local v13    # "redpacketCid":Ljava/lang/String;
    .end local v14    # "uidArray":[Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1345
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1348
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v15

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v15, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1422
    return-void

    .line 1297
    .restart local v8    # "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    .restart local v11    # "filesHelperCid":Ljava/lang/String;
    .restart local v13    # "redpacketCid":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-static {v8}, Libb;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 1320
    .restart local v9    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .restart local v14    # "uidArray":[Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1324
    .end local v9    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v14    # "uidArray":[Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    invoke-static {v8, v3}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;Z)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v9

    .line 1325
    .restart local v9    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v9, :cond_0

    .line 1326
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v3, v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->D:Z

    if-eqz v3, :cond_0

    .line 1329
    const-string/jumbo v3, "mail_msg_id"

    invoke-interface {v8, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1330
    .local v12, "msgId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->G:Ljava/lang/String;

    invoke-static {v3, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1331
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1342
    .end local v8    # "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    .end local v9    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v12    # "msgId":Ljava/lang/String;
    :cond_8
    new-instance v2, Ldjh;

    invoke-direct {v2}, Ldjh;-><init>()V

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
