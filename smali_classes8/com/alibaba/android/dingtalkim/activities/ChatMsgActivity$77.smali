.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ao()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/StringBuilder;Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 1804
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->a:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1848
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1804
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1804
    .line 2807
    new-instance v1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2808
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2809
    invoke-virtual {v1, v0}, Landroid/text/SpannableString;->charAt(I)C

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 2810
    const-string/jumbo v2, " "

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x11

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2808
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2813
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aj()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2821
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v2, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2832
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2833
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getSelectionStart()I

    move-result v2

    .line 2834
    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2835
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setSelection(I)V

    .line 2836
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1804
    return-void

    .line 2830
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    invoke-static {v0, v2}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1
.end method
