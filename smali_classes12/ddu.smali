.class public final Lddu;
.super Ljava/lang/Object;
.source "BanWordsCenter.java"

# interfaces
.implements Lddv$b;


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field public b:Lcom/alibaba/wukong/im/Conversation;

.field public c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

.field public d:Lddv$a;

.field public e:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field private g:Z

.field private h:Lddr;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Lddr;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "inputPanelView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
    .param p3, "inputPanelListener"    # Lddr;
    .param p4, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lddu$1;

    invoke-direct {v0, p0}, Lddu$1;-><init>(Lddu;)V

    iput-object v0, p0, Lddu;->e:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;

    .line 34
    iput-object p1, p0, Lddu;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 35
    iput-object p4, p0, Lddu;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 36
    iput-object p2, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 37
    iput-object p3, p0, Lddu;->h:Lddr;

    .line 39
    new-instance v0, Lddt;

    invoke-direct {v0, p0}, Lddt;-><init>(Lddv$b;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    iget-object v0, p0, Lddu;->c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lddu;->c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    iget-object v1, p0, Lddu;->e:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->b(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;)V

    .line 59
    iget-object v0, p0, Lddu;->c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->b()V

    .line 61
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;)V
    .locals 9
    .param p1, "bannedInfo"    # Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 74
    if-nez p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-boolean v0, p0, Lddu;->g:Z

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lddu;->h:Lddr;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lddu;->h:Lddr;

    invoke-interface {v0, v5}, Lddr;->b(Z)V

    .line 85
    :cond_1
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 86
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickPraiseVisible(Z)V

    .line 87
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 88
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getRootView()Lcom/alibaba/android/dingtalkbase/widgets/views/DispatchableLinearLayout;

    move-result-object v0

    .line 1037
    iput-boolean v5, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/DispatchableLinearLayout;->a:Z

    .line 89
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVoiceSwitcherButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getFaceButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getAddAppButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageBannedView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setVisibility(I)V

    .line 1307
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;->a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    .line 95
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;->BANNED_ALL:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    if-ne v0, v1, :cond_3

    .line 96
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageBannedView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lctk$i;->dt_group_setting_all_silent_input_tips_all_member:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    :goto_1
    iput-boolean v8, p0, Lddu;->g:Z

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageBannedView()Landroid/widget/TextView;

    move-result-object v0

    .line 99
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->dt_group_setting_all_silent_input_tips:I

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lddu;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1310
    iget-wide v6, p1, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;->b:J

    .line 100
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcog;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 140
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    iget-boolean v0, p0, Lddu;->g:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getRootView()Lcom/alibaba/android/dingtalkbase/widgets/views/DispatchableLinearLayout;

    move-result-object v0

    .line 2037
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/DispatchableLinearLayout;->a:Z

    .line 110
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickPraiseVisible(Z)V

    .line 111
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 112
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVoiceSwitcherButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getFaceButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getAddAppButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lddu;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageBannedView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :cond_0
    iput-boolean v2, p0, Lddu;->g:Z

    .line 119
    return-void
.end method

.method public final bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lddv$a;

    .line 2124
    iput-object p1, p0, Lddu;->d:Lddv$a;

    .line 18
    return-void
.end method
