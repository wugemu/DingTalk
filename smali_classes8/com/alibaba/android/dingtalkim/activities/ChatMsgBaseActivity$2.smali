.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$2;
.super Ljava/lang/Object;
.source "ChatMsgBaseActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 9
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 166
    if-eqz p1, :cond_3

    .line 167
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v1

    .line 168
    .local v1, "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    iget v7, v1, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v8, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->c:I

    if-ne v7, v8, :cond_2

    .line 169
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v7

    if-nez v7, :cond_2

    .line 170
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->read()V

    .line 172
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->t:Ldqq;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->t:Ldqq;

    invoke-virtual {v7}, Ldqq;->a()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    iget v7, v1, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->g:I

    if-lez v7, :cond_2

    .line 173
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->t:Ldqq;

    invoke-virtual {v7}, Ldqq;->a()Ljava/util/List;

    move-result-object v6

    .line 174
    .local v6, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface {v6, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 175
    .local v3, "i":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 176
    .local v4, "l":I
    if-ltz v3, :cond_2

    .line 177
    add-int/lit8 v3, v3, 0x1

    .line 178
    const/4 v2, 0x0

    .local v2, "findCount":I
    :goto_0
    if-ge v3, v4, :cond_2

    const/16 v7, 0x14

    if-ge v2, v7, :cond_2

    .line 179
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/Message;

    .line 180
    .local v5, "m":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 181
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v7

    const/16 v8, 0xfc

    if-ne v7, v8, :cond_4

    .line 182
    :cond_0
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v7

    if-nez v7, :cond_4

    .line 183
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v7

    if-nez v7, :cond_4

    .line 184
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v7

    sget-object v8, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v7, v8, :cond_4

    .line 185
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v0

    .line 186
    .local v0, "e":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    iget v7, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v8, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->b:I

    if-eq v7, v8, :cond_2

    .line 189
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v7

    if-nez v7, :cond_4

    iget v7, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    if-eqz v7, :cond_1

    iget v7, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v8, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->d:I

    if-ne v7, v8, :cond_4

    .line 190
    :cond_1
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v7

    iget v8, v1, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->g:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v5, v8}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;I)V

    .line 199
    .end local v0    # "e":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    .end local v2    # "findCount":I
    .end local v3    # "i":I
    .end local v4    # "l":I
    .end local v5    # "m":Lcom/alibaba/wukong/im/Message;
    .end local v6    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    :cond_2
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->u:Lcug;

    if-eqz v7, :cond_3

    .line 200
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->u:Lcug;

    invoke-virtual {v7}, Lcug;->notifyDataSetChanged()V

    .line 203
    .end local v1    # "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    :cond_3
    return-void

    .line 178
    .restart local v1    # "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    .restart local v2    # "findCount":I
    .restart local v3    # "i":I
    .restart local v4    # "l":I
    .restart local v5    # "m":Lcom/alibaba/wukong/im/Message;
    .restart local v6    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
