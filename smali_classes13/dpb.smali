.class public final Ldpb;
.super Ljava/lang/Object;
.source "MenuHideVoiceTranslateHandler.java"

# interfaces
.implements Ldon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "menuSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    const/4 v5, 0x0

    .line 38
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    instance-of v1, p1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 39
    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 40
    .local v0, "activity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v1

    .line 1295
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v2, v3, :cond_0

    .line 1296
    invoke-virtual {v1, p3}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v2

    .line 1297
    if-eqz v2, :cond_0

    .line 1298
    iget v3, v2, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v4, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->b:I

    if-ne v3, v4, :cond_1

    .line 1299
    iput v5, v2, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    .line 1300
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->f:Ljava/lang/String;

    .line 1301
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->a(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;J)J

    .line 1302
    invoke-virtual {v1, p3}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->b(Lcom/alibaba/wukong/im/Message;)V

    .line 1303
    invoke-virtual {v1, p3}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->c(Lcom/alibaba/wukong/im/Message;)V

    .end local v0    # "activity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    :cond_0
    :goto_0
    return-void

    .line 1304
    .restart local v0    # "activity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    :cond_1
    iget v1, v2, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v3, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->c:I

    if-ne v1, v3, :cond_0

    .line 1305
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 1306
    if-nez v1, :cond_2

    .line 1307
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1309
    :cond_2
    const-string/jumbo v3, "voice_translate_open"

    const-string/jumbo v4, "0"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    invoke-interface {p3, v1}, Lcom/alibaba/wukong/im/Message;->updateLocalExtras(Ljava/util/Map;)V

    .line 1311
    iput v5, v2, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    goto :goto_0
.end method
