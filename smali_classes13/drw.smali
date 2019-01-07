.class public final Ldrw;
.super Ljava/lang/Object;
.source "PublicAccountMenuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldrw$b;,
        Ldrw$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

.field b:Lcom/alibaba/wukong/im/Conversation;

.field c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field d:Z

.field e:Z

.field f:Ldrw$b;

.field g:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private h:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

.field private i:J

.field private j:Z

.field private k:Ldrw$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Lcom/alibaba/android/dingtalkim/views/MenuInputView;)V
    .locals 24
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "inputPanelView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
    .param p4, "menuInputView"    # Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 72
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 73
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Ldrw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 74
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Ldrw;->h:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ldrw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ldrw;->h:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ldrw;->i:J

    .line 78
    const-string/jumbo v17, "im"

    const/16 v18, 0x0

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "PublicAccountMenuManager init tag:"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string/jumbo v21, " cid:"

    aput-object v21, v19, v20

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v18

    const-wide/16 v20, 0x5

    cmp-long v17, v18, v20

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v18

    const-wide/16 v20, 0x8

    cmp-long v17, v18, v20

    if-nez v17, :cond_5

    .line 81
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v5

    .line 82
    .local v5, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_1

    .line 83
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 85
    .restart local v5    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v17, "pubAccountMenuValidTime"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 86
    .local v11, "validTimeString":Ljava/lang/String;
    const-string/jumbo v17, "pubAccountMenuTimeStamp"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 87
    .local v10, "timeStampString":Ljava/lang/String;
    const-string/jumbo v17, "pubAccountMenuVersion"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 88
    .local v16, "versionString":Ljava/lang/String;
    const-string/jumbo v17, "pubAccountMenu"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    .local v4, "content":Ljava/lang/String;
    const-string/jumbo v17, "show_menu_first"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 91
    const-string/jumbo v17, "show_menu_first"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ldrw;->d:Z

    .line 94
    :cond_2
    const-string/jumbo v17, "disable_input"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 95
    const-string/jumbo v17, "disable_input"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ldrw;->e:Z

    .line 97
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ldrw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ldrw;->e:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const/16 v17, 0x0

    :goto_0
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 99
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 100
    :cond_4
    const-wide/16 v18, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ldrw;->a(JZ)V

    .line 131
    .end local v4    # "content":Ljava/lang/String;
    .end local v5    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "timeStampString":Ljava/lang/String;
    .end local v11    # "validTimeString":Ljava/lang/String;
    .end local v16    # "versionString":Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 97
    .restart local v4    # "content":Ljava/lang/String;
    .restart local v5    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "timeStampString":Ljava/lang/String;
    .restart local v11    # "validTimeString":Ljava/lang/String;
    .restart local v16    # "versionString":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x8

    goto :goto_0

    .line 102
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 1243
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 1244
    new-instance v17, Ldrw$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ldrw$2;-><init>(Ldrw;)V

    invoke-virtual/range {v17 .. v17}, Ldrw$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v17

    .line 1245
    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcor;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1246
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ldrw;->a(Ljava/util/List;)V

    .line 104
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->N()Ldrk;

    move-result-object v17

    if-eqz v17, :cond_9

    .line 106
    invoke-virtual/range {p0 .. p0}, Ldrw;->a()Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ldrw;->d:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 107
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->N()Ldrk;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ldrk;->b(Z)V

    .line 111
    :cond_9
    const-wide/16 v12, 0x0

    .line 112
    .local v12, "validTime":J
    const-wide/16 v8, 0x0

    .line 113
    .local v8, "timeStamp":J
    const-wide/16 v14, 0x0

    .line 114
    .local v14, "version":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 117
    .local v6, "currentTime":J
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    mul-long v12, v18, v20

    .line 118
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 119
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 123
    :goto_3
    cmp-long v17, v6, v8

    if-ltz v17, :cond_a

    add-long v18, v8, v12

    cmp-long v17, v6, v18

    if-ltz v17, :cond_d

    .line 124
    :cond_a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v15, v1}, Ldrw;->a(JZ)V

    goto/16 :goto_1

    .line 1248
    .end local v6    # "currentTime":J
    .end local v8    # "timeStamp":J
    .end local v12    # "validTime":J
    .end local v14    # "version":J
    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ldrw;->a(Ljava/util/List;)V

    goto/16 :goto_2

    .line 124
    .restart local v6    # "currentTime":J
    .restart local v8    # "timeStamp":J
    .restart local v12    # "validTime":J
    .restart local v14    # "version":J
    :cond_c
    const/16 v17, 0x0

    goto :goto_4

    .line 126
    :cond_d
    const-string/jumbo v18, "im"

    const/16 v19, 0x0

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v17, 0x0

    const-string/jumbo v21, "PublicAccountMenuManager not reload:"

    aput-object v21, v20, v17

    const/16 v21, 0x1

    cmp-long v17, v6, v8

    if-gez v17, :cond_e

    const-string/jumbo v17, "time error"

    :goto_5
    aput-object v17, v20, v21

    const/16 v17, 0x2

    const-string/jumbo v21, " validTime:"

    aput-object v21, v20, v17

    const/16 v17, 0x3

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v20, v17

    const/16 v17, 0x4

    const-string/jumbo v21, " timeStamp:"

    aput-object v21, v20, v17

    const/16 v17, 0x5

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v20, v17

    invoke-static/range {v20 .. v20}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v17, "time right"

    goto :goto_5

    :catch_0
    move-exception v17

    goto/16 :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 400
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 401
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 402
    const/4 v1, 0x0

    .line 404
    .local v1, "count":[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "decodeUrl":Ljava/lang/String;
    const-string/jumbo v4, "\\?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 409
    .end local v2    # "decodeUrl":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    array-length v4, v1

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 410
    const-string/jumbo v4, "&dd_cid_for_send="

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 414
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 416
    .end local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v1    # "count":[Ljava/lang/String;
    :goto_2
    return-object v4

    .line 406
    .restart local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v1    # "count":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 407
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 412
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string/jumbo v4, "?dd_cid_for_send="

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 416
    .end local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v1    # "count":[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private a(JZ)V
    .locals 5
    .param p1, "version"    # J
    .param p3, "hasMenuData"    # Z

    .prologue
    const/4 v3, 0x0

    .line 152
    const-string/jumbo v0, "im"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PublicAccountMenuManager loadMenuData v:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Ldrw;->k:Ldrw$a;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Ldrw;->k:Ldrw$a;

    .line 2456
    iput-object v3, v0, Ldrw$a;->a:Lcma;

    .line 155
    iput-object v3, p0, Ldrw;->k:Ldrw$a;

    .line 157
    :cond_0
    new-instance v0, Ldrw$a;

    new-instance v1, Ldrw$1;

    invoke-direct {v1, p0, p3, p1, p2}, Ldrw$1;-><init>(Ldrw;ZJ)V

    invoke-direct {v0, v1}, Ldrw$a;-><init>(Lcma;)V

    iput-object v0, p0, Ldrw;->k:Ldrw$a;

    .line 206
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->d()Ldyj;

    move-result-object v0

    iget-object v1, p0, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldrw;->k:Ldrw$a;

    invoke-interface {v0, v1, p1, p2, v2}, Ldyj;->a(Ljava/lang/String;JLcma;)V

    .line 207
    return-void
.end method


# virtual methods
.method a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 253
    iget-object v1, p0, Ldrw;->h:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->setData(Ljava/util/List;)V

    .line 254
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 255
    const-string/jumbo v1, "im"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "renderData show size :"

    aput-object v3, v2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-boolean v1, p0, Ldrw;->e:Z

    if-nez v1, :cond_4

    .line 258
    iget-object v1, p0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->N()Ldrk;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->N()Ldrk;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldrk;->b(Z)V

    .line 260
    iget-object v1, p0, Ldrw;->h:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->a(Z)V

    .line 262
    :cond_0
    iget-object v1, p0, Ldrw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a()V

    .line 5277
    :cond_1
    :goto_0
    iget-boolean v1, p0, Ldrw;->j:Z

    if-nez v1, :cond_3

    .line 5278
    iput-boolean v4, p0, Ldrw;->j:Z

    .line 5279
    iget-object v1, p0, Ldrw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSwitchMenuButton()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5280
    iget-object v1, p0, Ldrw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSwitchMenuButton()Landroid/view/View;

    move-result-object v1

    new-instance v2, Ldrw$3;

    invoke-direct {v2, p0}, Ldrw$3;-><init>(Ldrw;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5290
    :cond_2
    iget-object v1, p0, Ldrw;->h:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    new-instance v2, Ldrw$4;

    invoke-direct {v2, p0}, Ldrw$4;-><init>(Ldrw;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->setOnSwitchToKeybordClickListener(Landroid/view/View$OnClickListener;)V

    .line 5298
    iget-object v1, p0, Ldrw;->h:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    new-instance v2, Ldrw$5;

    invoke-direct {v2, p0}, Ldrw$5;-><init>(Ldrw;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->setOnButtonClickListener(Lcom/alibaba/android/dingtalkim/views/MenuInputView$b;)V

    .line 273
    :cond_3
    :goto_1
    iget-object v1, p0, Ldrw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v2, p0, Ldrw;->e:Z

    if-eqz v2, :cond_6

    :goto_2
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 274
    return-void

    .line 264
    :cond_4
    iget-object v1, p0, Ldrw;->h:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->a(Z)V

    .line 265
    iget-object v1, p0, Ldrw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 4581
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 4582
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4583
    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 269
    :cond_5
    const-string/jumbo v1, "im"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "renderData hide size 0"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Ldrw;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a()V

    .line 271
    iget-object v1, p0, Ldrw;->h:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->a(Z)V

    goto :goto_1

    .line 273
    :cond_6
    const/16 v0, 0x8

    goto :goto_2
.end method

.method a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    iget-wide v0, p0, Ldrw;->i:J

    const-wide/16 v2, 0x51f5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ldrw;->i:J

    const-wide/16 v2, 0x5207

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ldrw;->i:J

    const-wide/32 v2, 0x39dfa

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 135
    :cond_0
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;J)Z
    .locals 6
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;
    .param p2, "oldVersion"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 210
    if-eqz p1, :cond_3

    .line 211
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->validSecondTime:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->latestVersion:Ljava/lang/Long;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->latestVersion:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-lez v2, :cond_5

    .line 212
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "saveCache execute"

    invoke-static {v2, v4, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 214
    .local v0, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 217
    .restart local v0    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v2, "pubAccountMenuValidTime"

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->validSecondTime:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string/jumbo v2, "pubAccountMenuTimeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string/jumbo v2, "pubAccountMenuVersion"

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->latestVersion:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->showMenuFirst:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->showMenuFirst:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v2, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 221
    iput-boolean v2, p0, Ldrw;->d:Z

    .line 222
    const-string/jumbo v2, "show_menu_first"

    iget-boolean v3, p0, Ldrw;->d:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_1
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->enableInput:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 225
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->enableInput:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v2, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 225
    iput-boolean v1, p0, Ldrw;->e:Z

    .line 226
    const-string/jumbo v1, "disable_input"

    iget-boolean v2, p0, Ldrw;->e:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->menu:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->menu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 230
    const-string/jumbo v1, "pubAccountMenu"

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;->menu:Ljava/util/List;

    invoke-static {v2}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :goto_0
    iget-object v1, p0, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 235
    const/4 v1, 0x1

    .line 239
    .end local v0    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return v1

    .line 232
    .restart local v0    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v1, "pubAccountMenu"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 237
    .end local v0    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "saveCache not execute"

    invoke-static {v2, v4, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Ldrw;->k:Ldrw$a;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Ldrw;->k:Ldrw$a;

    .line 1456
    iput-object v1, v0, Ldrw$a;->a:Lcma;

    .line 143
    iput-object v1, p0, Ldrw;->k:Ldrw$a;

    .line 145
    :cond_0
    iget-object v0, p0, Ldrw;->f:Ldrw$b;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Ldrw;->f:Ldrw$b;

    .line 1490
    iput-object v1, v0, Ldrw$b;->a:Lcma;

    .line 147
    iput-object v1, p0, Ldrw;->f:Ldrw$b;

    .line 149
    :cond_1
    return-void
.end method
