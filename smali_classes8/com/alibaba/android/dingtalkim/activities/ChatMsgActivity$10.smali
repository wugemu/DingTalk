.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 6327
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 6421
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aC(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6422
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aD(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 6424
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "after"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 6400
    if-nez p3, :cond_0

    .line 6401
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z

    .line 6402
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 6403
    add-int/lit8 v0, p2, -0x1

    .line 6404
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 6405
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 6406
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z

    .line 6407
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aC(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6408
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)I

    .line 6409
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)I

    .line 6417
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 6413
    .restart local v0    # "index":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;III)V
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 6330
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6331
    .local v2, "text":Ljava/lang/String;
    if-nez p3, :cond_7

    add-int v3, p2, p4

    invoke-virtual {v2, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->at(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 6334
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/group_chat_member.html"

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;)V

    invoke-interface {v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 6365
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 6366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6367
    .local v0, "currentTime":J
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ay(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 6368
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6369
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 6370
    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->az(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 6371
    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aA(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aA(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2

    .line 6372
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    sget-object v4, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->TYPING:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    sget-object v5, Lcom/alibaba/wukong/im/Conversation$TypingType;->TEXT:Lcom/alibaba/wukong/im/Conversation$TypingType;

    invoke-interface {v3, v4, v5}, Lcom/alibaba/wukong/im/Conversation;->sendTypingEvent(Lcom/alibaba/wukong/im/Conversation$TypingCommand;Lcom/alibaba/wukong/im/Conversation$TypingType;)V

    .line 6373
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    sget-object v4, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->TYPING:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/wukong/im/Conversation$TypingCommand;)Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    .line 6374
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;J)J

    .line 6384
    .end local v0    # "currentTime":J
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->K(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldjx;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6385
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->K(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldjx;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p4}, Ldjx;->a(Ljava/lang/CharSequence;II)V

    .line 6387
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ar(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldle;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 6388
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ar(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldle;

    move-result-object v5

    .line 7169
    invoke-virtual {v5}, Ldle;->c()Z

    move-result v3

    if-nez v3, :cond_5

    .line 7172
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_c

    .line 7173
    :cond_4
    invoke-virtual {v5}, Ldle;->b()V

    .line 6391
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->at(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 6392
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z

    .line 6395
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;J)V

    .line 6396
    return-void

    .line 6350
    :cond_7
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v3, v4, :cond_0

    .line 6351
    const-string/jumbo v3, "*#000*#"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6352
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->au(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 6353
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->clearComposingText()V

    goto/16 :goto_0

    .line 6354
    :cond_8
    const-string/jumbo v3, "*#000#*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6355
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->av(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 6356
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->clearComposingText()V

    goto/16 :goto_0

    .line 6357
    :cond_9
    const-string/jumbo v3, "*#007*#"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6358
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aw(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 6359
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->clearComposingText()V

    goto/16 :goto_0

    .line 6360
    :cond_a
    const-string/jumbo v3, "*#007#*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6361
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ax(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 6362
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->clearComposingText()V

    goto/16 :goto_0

    .line 6378
    :cond_b
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->az(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 6379
    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aB(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->TYPING:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    if-ne v3, v4, :cond_2

    .line 6380
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    sget-object v4, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->CANCEL:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    sget-object v5, Lcom/alibaba/wukong/im/Conversation$TypingType;->TEXT:Lcom/alibaba/wukong/im/Conversation$TypingType;

    invoke-interface {v3, v4, v5}, Lcom/alibaba/wukong/im/Conversation;->sendTypingEvent(Lcom/alibaba/wukong/im/Conversation$TypingCommand;Lcom/alibaba/wukong/im/Conversation$TypingType;)V

    .line 6381
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    sget-object v4, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->CANCEL:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/wukong/im/Conversation$TypingCommand;)Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    goto/16 :goto_1

    .line 7177
    :cond_c
    iget-object v3, v5, Ldle;->m:Ldlf;

    .line 8225
    iget-boolean v4, v3, Ldlf;->f:Z

    if-nez v4, :cond_e

    .line 8226
    const/4 v3, 0x0

    move-object v4, v3

    .line 7180
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget v6, v5, Ldle;->l:I

    if-gt v3, v6, :cond_d

    iget-object v3, v5, Ldle;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_18

    .line 7182
    :cond_d
    invoke-static {v4, v2}, Ldpz;->a(Ljava/util/List;Ljava/lang/String;)Ldpz;

    move-result-object v4

    .line 7183
    if-nez v4, :cond_12

    .line 7184
    invoke-virtual {v5}, Ldle;->b()V

    goto/16 :goto_2

    .line 8228
    :cond_e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 8229
    const/4 v3, 0x0

    move-object v4, v3

    goto :goto_3

    .line 8231
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget v6, v3, Ldlf;->e:I

    if-le v4, v6, :cond_10

    .line 8232
    const/4 v3, 0x0

    move-object v4, v3

    goto :goto_3

    .line 8234
    :cond_10
    iget-object v4, v3, Ldlf;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 8235
    const/4 v3, 0x0

    move-object v4, v3

    goto :goto_3

    .line 8237
    :cond_11
    iget-object v3, v3, Ldlf;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v4, v3

    goto :goto_3

    .line 7188
    :cond_12
    invoke-static {v4}, Ldle;->a(Ldpz;)V

    .line 7189
    iget-object v3, v4, Ldpz;->a:Ljava/util/List;

    if-eqz v3, :cond_13

    iget-object v3, v4, Ldpz;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 7190
    :cond_13
    invoke-virtual {v5}, Ldle;->b()V

    goto/16 :goto_2

    .line 7193
    :cond_14
    iget-object v3, v4, Ldpz;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v6, 0xf

    if-le v3, v6, :cond_17

    .line 7194
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v4, Ldpz;->a:Ljava/util/List;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-interface {v4, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7231
    :cond_15
    :goto_4
    if-eqz v3, :cond_16

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 7232
    :cond_16
    invoke-virtual {v5}, Ldle;->b()V

    goto/16 :goto_2

    .line 7196
    :cond_17
    iget-object v3, v4, Ldpz;->a:Ljava/util/List;

    goto :goto_4

    .line 7200
    :cond_18
    iget-object v3, v5, Ldle;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 7201
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0xf

    if-lt v6, v7, :cond_19

    .line 7202
    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-interface {v3, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    goto :goto_4

    .line 7207
    :cond_19
    invoke-static {v4, v2}, Ldpz;->a(Ljava/util/List;Ljava/lang/String;)Ldpz;

    move-result-object v6

    .line 7208
    if-eqz v6, :cond_15

    .line 7209
    invoke-static {v6}, Ldle;->a(Ldpz;)V

    .line 7210
    iget-object v4, v6, Ldpz;->a:Ljava/util/List;

    if-eqz v4, :cond_15

    iget-object v4, v6, Ldpz;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    .line 7211
    iget-object v4, v6, Ldpz;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v4, v7

    const/16 v7, 0xf

    if-gt v4, v7, :cond_1a

    .line 7212
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, v6, Ldpz;->a:Ljava/util/List;

    .line 7213
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 7214
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7215
    iget-object v3, v6, Ldpz;->a:Ljava/util/List;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v3, v4

    .line 7217
    goto :goto_4

    .line 7218
    :cond_1a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    rsub-int/lit8 v7, v4, 0xf

    .line 7219
    if-lez v7, :cond_15

    iget-object v4, v6, Ldpz;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v7, v4, :cond_15

    .line 7220
    new-instance v4, Ljava/util/ArrayList;

    const/16 v8, 0xf

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 7221
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7222
    iget-object v3, v6, Ldpz;->a:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v3, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v3, v4

    .line 7223
    goto/16 :goto_4

    .line 8253
    :cond_1b
    iget-object v4, v5, Ldle;->a:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 8254
    iget-object v4, v5, Ldle;->a:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 8255
    iget-object v4, v5, Ldle;->a:Landroid/os/Handler;

    iget-object v5, v5, Ldle;->a:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method
