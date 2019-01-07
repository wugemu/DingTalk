.class public final Ldpo;
.super Ljava/lang/Object;
.source "MenuTranslateHandler.java"

# interfaces
.implements Ldon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "atSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    .line 71
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v10

    const-string/jumbo v11, "chat_translate_success"

    invoke-interface {v10, v11}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 79
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v4

    .line 80
    .local v4, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 81
    const-string/jumbo v10, "translate_status"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 82
    .local v6, "status":Ljava/lang/String;
    const-string/jumbo v10, "translate"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 84
    .local v9, "translation":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 85
    const-string/jumbo v10, "1"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 86
    const-string/jumbo v10, "translate_status"

    const-string/jumbo v11, "2"

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :goto_1
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/im/Message;->updateLocalExtras(Ljava/util/Map;)V

    goto :goto_0

    .line 88
    :cond_2
    const-string/jumbo v10, "translate_status"

    const-string/jumbo v11, "1"

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 95
    .end local v6    # "status":Ljava/lang/String;
    .end local v9    # "translation":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .line 96
    .local v3, "content":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 97
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v10

    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 1141
    :cond_4
    :goto_2
    if-eqz p3, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1144
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Ldkc;->b(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1145
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1149
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v10

    .line 1150
    if-nez v10, :cond_5

    .line 1151
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1154
    :cond_5
    const-string/jumbo v12, "translate_status"

    const-string/jumbo v13, "3"

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/alibaba/wukong/im/Message;->updateLocalExtras(Ljava/util/Map;)V

    .line 1157
    new-instance v12, Ldpo$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v12, v0, v10, v3, v1}, Ldpo$1;-><init>(Ldpo;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    .line 1202
    new-instance v13, Lduw;

    invoke-direct {v13}, Lduw;-><init>()V

    .line 1203
    iput-object v11, v13, Lduw;->a:Ljava/lang/String;

    .line 1205
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1206
    const-string/jumbo v11, "messageId"

    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 1208
    const-string/jumbo v11, "sessionId"

    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v14

    invoke-interface {v14}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    :cond_6
    const-string/jumbo v11, "action"

    const-string/jumbo v14, "single_sentence"

    invoke-interface {v10, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 1213
    const-string/jumbo v11, "currentCompanyId"

    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    :cond_7
    iput-object v10, v13, Lduw;->g:Ljava/util/Map;

    .line 1216
    const-wide/16 v10, 0x0

    .line 1217
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 1218
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v10

    iget-wide v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 1220
    :cond_8
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v13, Lduw;->e:Ljava/lang/String;

    .line 1221
    const-string/jumbo v10, "chat_manual"

    iput-object v10, v13, Lduw;->d:Ljava/lang/String;

    .line 1225
    new-instance v11, Ldpo$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Ldpo$2;-><init>(Ldpo;Lcma;)V

    .line 1226
    const-class v10, Lcom/alibaba/android/dingtalkim/models/idl/service/TranslateService;

    invoke-static {v10}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalkim/models/idl/service/TranslateService;

    invoke-interface {v10, v13, v11}, Lcom/alibaba/android/dingtalkim/models/idl/service/TranslateService;->translate(Lduw;Liyv;)V

    goto/16 :goto_0

    .line 99
    :sswitch_0
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 100
    .local v7, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v3

    .line 101
    goto/16 :goto_2

    .line 104
    .end local v7    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    :sswitch_1
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v10

    if-eqz v10, :cond_4

    move-object/from16 v0, p3

    instance-of v10, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v10, :cond_4

    move-object/from16 v10, p3

    .line 105
    check-cast v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v5, v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 106
    .local v5, "obj":Ljava/lang/Object;
    if-eqz v5, :cond_4

    instance-of v10, v5, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    if-eqz v10, :cond_4

    move-object v2, v5

    .line 107
    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    .line 108
    .local v2, "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    iget-object v3, v2, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 114
    .end local v2    # "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    .end local v5    # "obj":Ljava/lang/Object;
    :sswitch_2
    invoke-static/range {p3 .. p3}, Ldma;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 117
    invoke-static/range {p3 .. p3}, Ldma;->d(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "title":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 121
    move-object v3, v8

    goto/16 :goto_2

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2bc -> :sswitch_1
        0x4b0 -> :sswitch_2
    .end sparse-switch
.end method
