.class public final Ldop;
.super Ljava/lang/Object;
.source "ChatMenuManger.java"


# instance fields
.field a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

.field b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field c:Lcom/alibaba/wukong/im/Conversation;

.field d:Lcom/alibaba/wukong/im/Message;

.field e:J

.field f:Leav;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;J)V
    .locals 2
    .param p1, "hostActivity"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    .param p2, "menuSeed"    # J

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Ldop;->g:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 23
    iput-object v1, p0, Ldop;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldop;->h:Z

    .line 25
    iput-object v1, p0, Ldop;->d:Lcom/alibaba/wukong/im/Message;

    .line 30
    iput-object p1, p0, Ldop;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 31
    iput-wide p2, p0, Ldop;->e:J

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/Message;Leav;)V
    .locals 10
    .param p1, "menuTitle"    # Ljava/lang/String;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "isToMessage"    # Z
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p5, "chatMsgMenuContext"    # Leav;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    iput-object p2, p0, Ldop;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 38
    iput-boolean p3, p0, Ldop;->h:Z

    .line 39
    iput-object p4, p0, Ldop;->d:Lcom/alibaba/wukong/im/Message;

    .line 40
    iput-object p5, p0, Ldop;->f:Leav;

    .line 43
    iget-boolean v1, p0, Ldop;->h:Z

    iget-object v2, p0, Ldop;->f:Leav;

    .line 1077
    iget-object v1, p0, Ldop;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    if-nez v1, :cond_0

    .line 1078
    new-instance v1, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iget-object v3, p0, Ldop;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-direct {v1, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ldop;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    .line 1080
    :cond_0
    iget-object v5, p0, Ldop;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iget-object v3, p0, Ldop;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 1104
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1105
    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    move-object v1, v4

    .line 1080
    :goto_0
    invoke-virtual {v5, v1}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Ljava/util/List;)V

    .line 44
    iget-object v1, p0, Ldop;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_37

    .line 73
    :goto_1
    return-void

    .line 1110
    :cond_2
    instance-of v1, p4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v1, :cond_6

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v6, "f_im_no_menu_link_msg"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, p4

    .line 1111
    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 1112
    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    if-eqz v6, :cond_5

    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    sget-object v7, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->FromNoMenuLink:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    if-eq v6, v7, :cond_3

    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    sget-object v7, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->ToNoMenuLink:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    if-ne v6, v7, :cond_5

    .line 1114
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1115
    sget-object v1, Ldoq$a;->c:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    move-object v1, v4

    .line 1372
    goto :goto_0

    .line 1117
    :cond_5
    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    if-eqz v6, :cond_6

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    sget-object v6, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->FromLink:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    if-ne v1, v6, :cond_6

    .line 1118
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    .line 1119
    instance-of v6, v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;

    if-eqz v6, :cond_6

    .line 1120
    check-cast v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;

    .line 1121
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;->url()Ljava/lang/String;

    move-result-object v1

    .line 1124
    invoke-static {v1}, Ldkc;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1125
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1126
    sget-object v1, Ldoq$a;->c:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1133
    :cond_6
    const/4 v1, 0x0

    .line 1135
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_7

    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    :cond_7
    move-object v1, v4

    .line 1136
    goto :goto_0

    .line 1140
    :cond_8
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v6

    sget-object v7, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v6, v7, :cond_9

    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1145
    :cond_9
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v6

    const/16 v7, 0xa28

    if-eq v6, v7, :cond_4

    .line 1150
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    .line 1151
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v1

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 1152
    sget-object v1, Ldoq$a;->c:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object v1, v4

    .line 1154
    goto/16 :goto_0

    .line 1158
    :cond_b
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v6

    const/16 v7, 0x38a

    if-eq v6, v7, :cond_c

    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v6

    const/16 v7, 0x38b

    if-ne v6, v7, :cond_d

    .line 1159
    :cond_c
    sget-object v1, Ldoq$a;->c:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1163
    :cond_d
    invoke-static {p4}, Ldkc;->l(Lcom/alibaba/wukong/im/Message;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1164
    sget-object v6, Ldoq$a;->c:Lcng;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    :cond_e
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v6

    const/16 v7, 0x44d

    if-ne v6, v7, :cond_10

    .line 1169
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v1

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v2

    if-ne v1, v2, :cond_f

    .line 1170
    sget-object v1, Ldoq$a;->c:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object v1, v4

    .line 1172
    goto/16 :goto_0

    .line 1176
    :cond_10
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    cmp-long v6, v6, v8

    if-nez v6, :cond_15

    .line 1177
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v1

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v2

    if-ne v1, v2, :cond_11

    .line 1178
    sget-object v1, Ldoq$a;->c:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    :cond_11
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->canRecall()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {p4}, Ldkc;->d(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1182
    sget-object v1, Ldoq$a;->k:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    :cond_12
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v1

    invoke-static {p4, v1}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1188
    sget-object v1, Ldoq$a;->p:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    :cond_13
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v1

    invoke-static {p4, v1}, Ldkc;->b(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1192
    sget-object v1, Ldoq$a;->q:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object v1, v4

    .line 1194
    goto/16 :goto_0

    .line 1197
    :cond_15
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v6

    .line 1199
    const/4 v7, 0x1

    if-eq v7, v6, :cond_16

    const/16 v7, 0x2bc

    if-ne v7, v6, :cond_1f

    .line 1201
    :cond_16
    sget-object v2, Ldoq$a;->a:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    invoke-static {p4}, Ldoq;->a(Lcom/alibaba/wukong/im/Message;)Lcng;

    move-result-object v2

    .line 1205
    if-eqz v2, :cond_17

    .line 1206
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    :cond_17
    :goto_3
    invoke-static {p4}, Ldma;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1217
    invoke-static {p4}, Ldma;->d(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v2

    .line 1218
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1219
    invoke-static {p4}, Ldoq;->a(Lcom/alibaba/wukong/im/Message;)Lcng;

    move-result-object v2

    .line 1220
    if-eqz v2, :cond_18

    .line 1221
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    :cond_18
    const/16 v2, 0x66

    if-ne v2, v6, :cond_19

    .line 1227
    sget-object v2, Ldoq$a;->x:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    :cond_19
    invoke-static {p2, p4}, Ldkc;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v6

    .line 1232
    invoke-static {p4}, Ldkc;->f(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1234
    sget-object v2, Ldoq$a;->d:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    :cond_1a
    const/4 v2, 0x0

    invoke-static {p4, v2}, Ldma;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {p2}, Ldoq;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1238
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->R()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1239
    sget-object v2, Ldoq$a;->t:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    :cond_1b
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->canRecall()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1245
    invoke-static {p4}, Ldkc;->d(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {p2}, Ldoq;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1247
    sget-object v1, Ldoq$a;->k:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    const/4 v1, 0x1

    .line 1251
    :cond_1c
    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v2

    invoke-static {p4, v2}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1253
    sget-object v2, Ldoq$a;->p:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    :cond_1d
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v2

    invoke-static {p4, v2}, Ldkc;->b(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1256
    sget-object v2, Ldoq$a;->b:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    sget-object v2, Ldoq$a;->q:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    :cond_1e
    invoke-static {p2}, Ldoq;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1262
    sget-object v1, Ldoq$a;->c:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1209
    :cond_1f
    invoke-static {p4}, Ldma;->c(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 1210
    sget-object v2, Ldoq$a;->a:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1212
    :cond_20
    if-eqz v2, :cond_17

    .line 2014
    iget-object v2, v2, Leav;->a:Ljava/lang/String;

    .line 1212
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1213
    sget-object v2, Ldoq$a;->a:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1267
    :cond_21
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v8, 0x7

    cmp-long v2, v2, v8

    if-eqz v2, :cond_22

    .line 1268
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v8, 0x7

    cmp-long v2, v2, v8

    if-eqz v2, :cond_22

    .line 1269
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xc9

    if-eq v2, v3, :cond_22

    .line 1270
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_22

    if-nez v6, :cond_23

    .line 1271
    :cond_22
    sget-object v2, Ldoq$a;->c:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    :cond_23
    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->OFFLINE:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v3

    if-ne v2, v3, :cond_24

    .line 1276
    sget-object v2, Ldoq$a;->f:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    :cond_24
    invoke-static {p4}, Ldkc;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1281
    sget-object v2, Ldoq$a;->g:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    :cond_25
    invoke-static {p4}, Ldkc;->c(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1286
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->privateTag()J

    move-result-wide v2

    sget-object v7, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->d:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v2, v8

    if-eqz v2, :cond_28

    .line 1288
    sget-object v2, Ldoq$a;->u:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    :cond_26
    :goto_4
    invoke-static {p4}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1307
    sget-object v2, Ldoq$a;->h:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    :cond_27
    invoke-static {p4}, Ldkc;->J(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1312
    sget-object v1, Ldoq$a;->i:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1291
    :cond_28
    const-wide/16 v2, 0x0

    .line 1292
    const-string/jumbo v7, "schedule_remind_time"

    invoke-interface {p4, v7}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_29

    .line 1293
    const-string/jumbo v2, "schedule_remind_time"

    invoke-interface {p4, v2}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2109
    const-wide/16 v8, 0x0

    invoke-static {v2, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1296
    :cond_29
    invoke-static {}, Lcms;->u()J

    move-result-wide v8

    cmp-long v2, v2, v8

    if-gtz v2, :cond_2a

    .line 1297
    sget-object v2, Ldoq$a;->u:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1299
    :cond_2a
    sget-object v2, Ldoq$a;->v:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1316
    :cond_2b
    invoke-static {p4}, Ldkc;->h(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-eqz v6, :cond_2c

    .line 1318
    sget-object v2, Ldoq$a;->j:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    :cond_2c
    invoke-static {p4}, Ldkc;->i(Lcom/alibaba/wukong/im/Message;)Z

    .line 1326
    invoke-static {p4}, Ldkc;->j(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_2d

    if-eqz v6, :cond_2d

    .line 1328
    sget-object v2, Ldoq$a;->r:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    :cond_2d
    invoke-static {p4}, Ldkc;->n(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {p4}, Ldkc;->q(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1333
    sget-object v2, Ldoq$a;->m:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    :cond_2e
    invoke-static {p4}, Ldkc;->o(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1338
    sget-object v2, Ldoq$a;->A:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    :cond_2f
    invoke-static {p4}, Ldkc;->e(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_30

    if-eqz v6, :cond_30

    .line 1343
    sget-object v2, Ldoq$a;->l:Lcng;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    :cond_30
    invoke-static {p4}, Ldkc;->g(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_31

    if-nez v1, :cond_31

    .line 1347
    sget-object v1, Ldoq$a;->s:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    :cond_31
    invoke-static {p4}, Ldkc;->k(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1351
    sget-object v1, Ldoq$a;->w:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    :cond_32
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "contact_theme_enabled"

    const/4 v3, 0x0

    .line 1355
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2456
    instance-of v1, p4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v1, :cond_36

    move-object v1, p4

    .line 2457
    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 2458
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 2459
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-eqz v2, :cond_36

    .line 2460
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 2462
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 2466
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->type()I

    move-result v2

    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_33

    .line 2467
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->type()I

    move-result v2

    const/16 v3, 0x1f5

    if-eq v2, v3, :cond_33

    .line 2468
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->type()I

    move-result v1

    const/16 v2, 0x1f6

    if-ne v1, v2, :cond_36

    .line 2472
    :cond_33
    invoke-static {p4}, Ldkc;->s(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    .line 2474
    if-eqz v1, :cond_35

    const-string/jumbo v2, "zip"

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x1

    .line 1356
    :goto_5
    if-eqz v1, :cond_34

    .line 1357
    sget-object v1, Ldoq$a;->z:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    :cond_34
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v8, 0x4

    cmp-long v1, v2, v8

    if-eqz v1, :cond_4

    .line 1362
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v8, 0x7

    cmp-long v1, v2, v8

    if-eqz v1, :cond_4

    .line 1363
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v8, 0xa

    cmp-long v1, v2, v8

    if-eqz v1, :cond_4

    .line 1364
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_4

    .line 1365
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_4

    .line 1366
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_4

    .line 1367
    invoke-static {p4}, Ldkc;->l(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v6, :cond_4

    .line 1370
    sget-object v1, Ldoq$a;->i:Lcng;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2474
    :cond_35
    const/4 v1, 0x0

    goto :goto_5

    .line 2477
    :cond_36
    const/4 v1, 0x0

    goto :goto_5

    .line 48
    :cond_37
    const/4 v0, 0x0

    .line 49
    .local v0, "isNotifiyDataChanged":Z
    iget-object v1, p0, Ldop;->g:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-nez v1, :cond_3a

    .line 50
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Ldop;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ldop;->g:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 51
    iget-object v1, p0, Ldop;->g:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Ldop;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    new-instance v3, Ldop$1;

    invoke-direct {v3, p0}, Ldop$1;-><init>(Ldop;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 65
    :goto_6
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 66
    iget-object v1, p0, Ldop;->g:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 68
    :cond_38
    if-eqz v0, :cond_39

    .line 69
    iget-object v1, p0, Ldop;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->notifyDataSetChanged()V

    .line 71
    :cond_39
    iget-object v1, p0, Ldop;->g:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 72
    iget-object v1, p0, Ldop;->g:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_1

    .line 63
    :cond_3a
    const/4 v0, 0x1

    goto :goto_6
.end method
