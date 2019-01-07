.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 793
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

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
    .line 873
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->D(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->E(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 876
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
    .line 852
    if-nez p3, :cond_0

    .line 853
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Z)Z

    .line 854
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 855
    add-int/lit8 v0, p2, -0x1

    .line 856
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 857
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 858
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->E:Ljava/util/HashMap;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Z)Z

    .line 859
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;I)I

    .line 861
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v1, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;I)I

    .line 869
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 865
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
    const/4 v8, 0x1

    .line 796
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, "text":Ljava/lang/String;
    if-nez p3, :cond_4

    add-int v3, p2, p4

    invoke-virtual {v2, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    if-eq v3, v8, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->r(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 799
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/group_chat_member.html"

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;)V

    invoke-interface {v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 830
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 831
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 832
    .local v0, "currentTime":J
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->y(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 833
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 834
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    if-ne v3, v8, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .line 835
    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->z(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .line 836
    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->A(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->A(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2

    .line 837
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    sget-object v4, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->TYPING:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    sget-object v5, Lcom/alibaba/wukong/im/Conversation$TypingType;->TEXT:Lcom/alibaba/wukong/im/Conversation$TypingType;

    invoke-interface {v3, v4, v5}, Lcom/alibaba/wukong/im/Conversation;->sendTypingEvent(Lcom/alibaba/wukong/im/Conversation$TypingCommand;Lcom/alibaba/wukong/im/Conversation$TypingType;)V

    .line 838
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    sget-object v4, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->TYPING:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lcom/alibaba/wukong/im/Conversation$TypingCommand;)Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    .line 839
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;J)J

    .line 843
    .end local v0    # "currentTime":J
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldjx;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->r(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 844
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldjx;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p4}, Ldjx;->a(Ljava/lang/CharSequence;II)V

    .line 847
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Z)Z

    .line 848
    return-void

    .line 815
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v3, v4, :cond_0

    .line 816
    const-string/jumbo v3, "*#000*#"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 817
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 818
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->clearComposingText()V

    goto/16 :goto_0

    .line 819
    :cond_5
    const-string/jumbo v3, "*#000#*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 820
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 821
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->clearComposingText()V

    goto/16 :goto_0

    .line 822
    :cond_6
    const-string/jumbo v3, "*#007*#"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 823
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->w(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 824
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->clearComposingText()V

    goto/16 :goto_0

    .line 825
    :cond_7
    const-string/jumbo v3, "*#007#*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->x(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 827
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->clearComposingText()V

    goto/16 :goto_0
.end method
