.class public final Ldqr;
.super Ljava/lang/Object;
.source "CommentParamModel.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Ldqr;->a:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Ldqr;->b:I

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Ldqr;->c:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Ldqr;->d:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Ldqr;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Ldqr;
    .locals 24
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 103
    const-string/jumbo v18, ""

    .line 104
    .local v18, "objectId":Ljava/lang/String;
    const/16 v20, 0x0

    .line 105
    .local v20, "objectType":I
    const-string/jumbo v3, ""

    .line 107
    .local v3, "containerId":Ljava/lang/String;
    const-string/jumbo v12, ""

    .line 109
    .local v12, "extension":Ljava/lang/String;
    const-string/jumbo v19, ""

    .line 111
    .local v19, "objectName":Ljava/lang/String;
    new-instance v2, Ldqr;

    invoke-direct {v2}, Ldqr;-><init>()V

    .line 114
    .local v2, "commentParamModel":Ldqr;
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v22

    if-nez v22, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-object v2

    .line 118
    :cond_1
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v15

    .line 120
    .local v15, "messageContentType":I
    const/16 v22, 0x66

    move/from16 v0, v22

    if-ne v0, v15, :cond_4

    .line 122
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    .line 123
    const/16 v20, 0x1

    .line 124
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v22

    if-eqz v22, :cond_3

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    .line 126
    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v22

    if-eqz v22, :cond_2

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 127
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v13

    check-cast v13, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 128
    .local v13, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    if-eqz v13, :cond_2

    .line 129
    invoke-interface {v13}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v19

    .line 190
    .end local v13    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :cond_2
    :goto_2
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    .line 191
    .local v16, "messageId":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v22

    if-eqz v22, :cond_c

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1071
    .local v5, "conversationId":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v18

    iput-object v0, v2, Ldqr;->a:Ljava/lang/String;

    .line 1079
    iput-object v3, v2, Ldqr;->c:Ljava/lang/String;

    .line 1087
    iput-object v12, v2, Ldqr;->e:Ljava/lang/String;

    .line 2083
    move-object/from16 v0, v16

    iput-object v0, v2, Ldqr;->d:Ljava/lang/String;

    .line 3075
    move/from16 v0, v20

    iput v0, v2, Ldqr;->b:I

    .line 3091
    iput-object v5, v2, Ldqr;->f:Ljava/lang/String;

    .line 3099
    move-object/from16 v0, v19

    iput-object v0, v2, Ldqr;->g:Ljava/lang/String;

    goto :goto_0

    .line 124
    .end local v5    # "conversationId":Ljava/lang/String;
    .end local v16    # "messageId":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 133
    :cond_4
    const/16 v22, 0x1f6

    move/from16 v0, v22

    if-eq v0, v15, :cond_5

    const/16 v22, 0x1f4

    move/from16 v0, v22

    if-eq v0, v15, :cond_5

    const/16 v22, 0x1f5

    move/from16 v0, v22

    if-ne v0, v15, :cond_6

    .line 136
    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v11, p0

    .line 137
    check-cast v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 138
    .local v11, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v0, v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 139
    iget-object v0, v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 140
    .local v21, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 141
    const/16 v20, 0x0

    .line 142
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 143
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    move-object/from16 v19, v0

    goto :goto_2

    .line 146
    .end local v11    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    .end local v21    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_6
    const/16 v22, 0x12c

    move/from16 v0, v22

    if-eq v0, v15, :cond_7

    const/16 v22, 0x12d

    move/from16 v0, v22

    if-ne v0, v15, :cond_8

    .line 148
    :cond_7
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v11, p0

    .line 149
    check-cast v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 150
    .restart local v11    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v0, v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 151
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v17

    check-cast v17, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 152
    .local v17, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 154
    .local v6, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v4

    .line 156
    .local v4, "contentExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v22

    if-eqz v22, :cond_2

    .line 157
    const-string/jumbo v22, "reportid"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "objectId":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 158
    .restart local v18    # "objectId":Ljava/lang/String;
    const-string/jumbo v22, "report_extension"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "extension":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 159
    .restart local v12    # "extension":Ljava/lang/String;
    const/16 v20, 0x3

    goto/16 :goto_2

    .line 163
    .end local v4    # "contentExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v11    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    .end local v17    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    :cond_8
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v0, v15, :cond_9

    const/16 v22, 0x3

    move/from16 v0, v22

    if-eq v0, v15, :cond_9

    const/16 v22, 0xfc

    move/from16 v0, v22

    if-ne v0, v15, :cond_a

    .line 165
    :cond_9
    const-string/jumbo v22, "dingId"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, "dingIdStr":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 167
    move-object/from16 v18, v10

    .line 168
    const/16 v20, 0x4

    goto/16 :goto_2

    .line 170
    .end local v10    # "dingIdStr":Ljava/lang/String;
    :cond_a
    invoke-static/range {p0 .. p0}, Ldkc;->E(Lcom/alibaba/wukong/im/Message;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 171
    invoke-static/range {p0 .. p0}, Ldkc;->F(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    move-result-object v14

    .line 172
    .local v14, "markdownExtendDo":Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;
    if-eqz v14, :cond_0

    .line 175
    iget-object v0, v14, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->oaReportId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 176
    iget-object v12, v14, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->oaReportExtension:Ljava/lang/String;

    .line 177
    const/16 v20, 0x3

    .line 178
    goto/16 :goto_2

    .end local v14    # "markdownExtendDo":Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;
    :cond_b
    const/16 v22, 0x640

    move/from16 v0, v22

    if-ne v0, v15, :cond_2

    .line 180
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 181
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    .line 182
    .local v7, "dingCardContent":Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->dingId()J

    move-result-wide v8

    .line 183
    .local v8, "dingId":J
    const-wide/16 v22, 0x0

    cmp-long v22, v8, v22

    if-lez v22, :cond_2

    .line 184
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    .line 185
    const/16 v20, 0x4

    goto/16 :goto_2

    .line 191
    .end local v7    # "dingCardContent":Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
    .end local v8    # "dingId":J
    .restart local v16    # "messageId":Ljava/lang/String;
    :cond_c
    const-string/jumbo v5, ""

    goto/16 :goto_3
.end method
