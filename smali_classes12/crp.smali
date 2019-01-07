.class public final Lcrp;
.super Ljava/lang/Object;
.source "CommonResponsePanelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrp$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field public g:Ljava/lang/CharSequence;

.field public h:Z

.field public i:Lcrp$a;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputPanelView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcrp;->a:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 50
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getAddApp()Z

    move-result v0

    iput-boolean v0, p0, Lcrp;->k:Z

    .line 52
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getFace()Z

    move-result v0

    iput-boolean v0, p0, Lcrp;->j:Z

    .line 53
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVoiceRecord()Z

    move-result v0

    iput-boolean v0, p0, Lcrp;->l:Z

    .line 54
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcrp;->m:I

    .line 55
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcrp;->o:Ljava/lang/CharSequence;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-boolean v0, p0, Lcrp;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iput-boolean v2, p0, Lcrp;->h:Z

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcrp;->i:Lcrp$a;

    .line 129
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v1, p0, Lcrp;->j:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setFace(Z)V

    .line 130
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v1, p0, Lcrp;->l:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVoiceRecord(Z)V

    .line 131
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v1, p0, Lcrp;->k:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setAddApp(Z)V

    .line 132
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    iget-object v1, p0, Lcrp;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    iget-object v1, p0, Lcrp;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setSelection(I)V

    .line 134
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    iget-object v1, p0, Lcrp;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionBottomBarVisible(Z)V

    .line 136
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setForceShowSend(Z)V

    .line 137
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 3055
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 3056
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3057
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 139
    :cond_2
    iget-object v0, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget v1, p0, Lcrp;->m:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(I)V

    .line 141
    iget-object v0, p0, Lcrp;->a:Landroid/content/Context;

    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Lcrp$a;Z)V
    .locals 6
    .param p1, "attachView"    # Landroid/view/View;
    .param p2, "responseContext"    # Lcrp$a;
    .param p3, "showKeyboardDelayed"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getCurrentMode()I

    move-result v1

    iput v1, p0, Lcrp;->m:I

    .line 78
    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v2, p0, Lcrp;->b:Z

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setFace(Z)V

    .line 79
    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v2, p0, Lcrp;->d:Z

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVoiceRecord(Z)V

    .line 80
    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v2, p0, Lcrp;->c:Z

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setAddApp(Z)V

    .line 81
    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v2, p0, Lcrp;->e:Z

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickPraiseVisible(Z)V

    .line 82
    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    iget-object v2, p0, Lcrp;->g:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionBottomBarVisible(Z)V

    .line 84
    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 85
    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setForceShowSend(Z)V

    .line 86
    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Lcsx;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Ljava/util/List;)V

    .line 88
    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcrp;->n:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iput-object p2, p0, Lcrp;->i:Lcrp$a;

    .line 92
    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 93
    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 94
    iget-object v1, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 2062
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2063
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2064
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2065
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2066
    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :cond_2
    iput-boolean v4, p0, Lcrp;->h:Z

    .line 96
    if-eqz p3, :cond_4

    .line 97
    iget-object v1, p0, Lcrp;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 98
    iget-object v0, p0, Lcrp;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 99
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v2

    new-instance v1, Lcrp$1;

    invoke-direct {v1, p0}, Lcrp$1;-><init>(Lcrp;)V

    const-class v3, Ljava/lang/Runnable;

    invoke-static {v1, v3, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v1, v4, v5}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 106
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_3
    iget-object v1, p0, Lcrp;->a:Landroid/content/Context;

    iget-object v2, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    .line 109
    :cond_4
    iget-object v1, p0, Lcrp;->a:Landroid/content/Context;

    iget-object v2, p0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0
.end method
