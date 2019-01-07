.class public final Ldot;
.super Ljava/lang/Object;
.source "MenuCopyHandler.java"

# interfaces
.implements Ldon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "atSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    .line 42
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 115
    .end local p3    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    :goto_0
    return-void

    .line 45
    .restart local p3    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v6, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v10

    const-wide/16 v12, 0x10

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 47
    const-string/jumbo v9, "isretail"

    const-string/jumbo v10, "true"

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v9

    const-string/jumbo v10, "chat_copy_success"

    invoke-interface {v9, v10, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    invoke-static/range {p3 .. p3}, Ldkc;->r(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "content":Ljava/lang/String;
    const/4 v8, -0x1

    .line 54
    .local v8, "type":I
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 55
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v8

    .line 57
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 58
    const/4 v9, 0x1

    if-ne v9, v8, :cond_4

    .line 59
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v3

    .line 60
    .local v3, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {v4, v3}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .end local v3    # "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    sget v10, Lctk$i;->chat_copy_is_success:I

    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v4, v9}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    goto :goto_0

    .line 66
    :cond_5
    sparse-switch v8, :sswitch_data_0

    .line 114
    .end local p3    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_6
    :goto_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    sget v10, Lctk$i;->chat_copy_is_success:I

    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v4, v9}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    goto :goto_0

    .line 69
    .restart local p3    # "message":Lcom/alibaba/wukong/im/Message;
    :sswitch_0
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 70
    .local v7, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v3

    .line 71
    .restart local v3    # "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 72
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 78
    .end local v3    # "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v7    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    :sswitch_1
    move-object/from16 v0, p3

    instance-of v9, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v9, :cond_6

    .line 79
    check-cast p3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p3    # "message":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 80
    .local v5, "obj":Ljava/lang/Object;
    if-eqz v5, :cond_6

    instance-of v9, v5, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    if-eqz v9, :cond_6

    move-object v2, v5

    .line 81
    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    .line 82
    .local v2, "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    iget-object v4, v2, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    goto :goto_1

    .line 89
    .end local v2    # "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    .end local v5    # "obj":Ljava/lang/Object;
    .restart local p3    # "message":Lcom/alibaba/wukong/im/Message;
    :sswitch_2
    invoke-static/range {p3 .. p3}, Ldma;->c(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 91
    if-eqz p6, :cond_7

    .line 1014
    move-object/from16 v0, p6

    iget-object v9, v0, Leav;->a:Ljava/lang/String;

    .line 91
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 2014
    move-object/from16 v0, p6

    iget-object v4, v0, Leav;->a:Ljava/lang/String;

    .line 95
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto/16 :goto_0

    .line 103
    :sswitch_3
    if-eqz p3, :cond_8

    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 104
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v9

    const-string/jumbo v10, "voice_translate_content"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "content":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 106
    .restart local v4    # "content":Ljava/lang/String;
    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto/16 :goto_0

    .line 66
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_3
        0xcc -> :sswitch_3
        0xfc -> :sswitch_3
        0x2bc -> :sswitch_1
        0x4b0 -> :sswitch_2
    .end sparse-switch
.end method
