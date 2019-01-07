.class public final Lcro;
.super Ljava/lang/Object;
.source "CommentInputPanelManager.java"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field public f:Ljava/lang/String;

.field public g:Lcom/alibaba/wukong/im/Message;

.field public h:Ljava/lang/CharSequence;

.field public i:Z

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/content/Context;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputPanelView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcro;->j:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcro;->k:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 49
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getAddApp()Z

    move-result v0

    iput-boolean v0, p0, Lcro;->m:Z

    .line 51
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getFace()Z

    move-result v0

    iput-boolean v0, p0, Lcro;->l:Z

    .line 52
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVoiceRecord()Z

    move-result v0

    iput-boolean v0, p0, Lcro;->n:Z

    .line 53
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcro;->o:I

    .line 54
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcro;->p:Ljava/lang/CharSequence;

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 122
    iget-boolean v0, p0, Lcro;->i:Z

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 125
    :cond_0
    iput-boolean v4, p0, Lcro;->i:Z

    .line 126
    iget-object v0, p0, Lcro;->g:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcro;->j:Ljava/util/Map;

    iget-object v1, p0, Lcro;->g:Lcom/alibaba/wukong/im/Message;

    iget-object v2, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_1
    iput-object v3, p0, Lcro;->g:Lcom/alibaba/wukong/im/Message;

    .line 130
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v1, p0, Lcro;->l:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setFace(Z)V

    .line 131
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v1, p0, Lcro;->n:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVoiceRecord(Z)V

    .line 132
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v1, p0, Lcro;->m:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setAddApp(Z)V

    .line 133
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    iget-object v1, p0, Lcro;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    iget-object v1, p0, Lcro;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setSelection(I)V

    .line 135
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    iget-object v1, p0, Lcro;->p:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionBottomBarVisible(Z)V

    .line 137
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setForceShowSend(Z)V

    .line 138
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 2051
    invoke-virtual {v0, v4, v3, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget v1, p0, Lcro;->o:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(I)V

    .line 142
    iget-object v0, p0, Lcro;->k:Landroid/content/Context;

    iget-object v1, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 94
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcro;->o:I

    .line 95
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v1, p0, Lcro;->a:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setFace(Z)V

    .line 96
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v1, p0, Lcro;->c:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVoiceRecord(Z)V

    .line 97
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v1, p0, Lcro;->b:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setAddApp(Z)V

    .line 98
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v1, p0, Lcro;->d:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickPraiseVisible(Z)V

    .line 99
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    iget-object v1, p0, Lcro;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionBottomBarVisible(Z)V

    .line 101
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 102
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setForceShowSend(Z)V

    .line 103
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Lcsx;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Ljava/util/List;)V

    .line 105
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcro;->f:Ljava/lang/String;

    .line 107
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcro;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    iget-object v0, p0, Lcro;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    iget-object v0, p0, Lcro;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setSelection(I)V

    .line 113
    :goto_0
    iput-object p1, p0, Lcro;->g:Lcom/alibaba/wukong/im/Message;

    .line 115
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 116
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 117
    iput-boolean v2, p0, Lcro;->i:Z

    .line 118
    iget-object v0, p0, Lcro;->k:Landroid/content/Context;

    iget-object v1, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 119
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;)V
    .locals 3
    .param p1, "tip"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "content"    # Landroid/text/SpannableString;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b(ZLjava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;)V

    .line 87
    return-void
.end method
