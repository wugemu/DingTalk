.class public Ldai;
.super Ldak;
.source "UserVoiceFromViewHolder.java"


# instance fields
.field protected Y:Landroid/widget/TextView;

.field private ae:Lcom/alibaba/wukong/im/Message;

.field private af:Lctj$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldak;-><init>(Z)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Ldai;->Y:Landroid/widget/TextView;

    .line 32
    new-instance v0, Ldai$1;

    invoke-direct {v0, p0}, Ldai$1;-><init>(Ldai;)V

    iput-object v0, p0, Ldai;->af:Lctj$a;

    .line 25
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    iget-object v1, p0, Ldai;->af:Lctj$a;

    invoke-virtual {v0, v1}, Lctj;->a(Lctj$a;)V

    .line 26
    return-void
.end method

.method static synthetic a(Ldai;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p0, "x0"    # Ldai;

    .prologue
    .line 21
    iget-object v0, p0, Ldai;->ae:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$AudioContent;I)V
    .locals 7
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "audioContent"    # Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    .param p4, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 81
    .local v3, "translateOpened":Z
    instance-of v4, p1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 82
    check-cast v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v2

    .line 83
    .local v2, "manager":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;
    invoke-virtual {v2, p2}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v1

    .line 84
    .local v1, "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v5, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->c:I

    if-ne v4, v5, :cond_0

    .line 85
    const/4 v3, 0x1

    .line 88
    .end local v1    # "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    .end local v2    # "manager":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    .line 89
    iget-object v4, p0, Ldai;->Y:Landroid/widget/TextView;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {p1, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$e;->red_dot_icon:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    :cond_1
    iget-object v4, p0, Ldai;->Y:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v6, v0, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 94
    iput-object p2, p0, Ldai;->ae:Lcom/alibaba/wukong/im/Message;

    .line 95
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lctk$g;->chatting_item_from:I

    return v0
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lctk$g;->chatting_item_from_voice:I

    return v0
.end method

.method protected c(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Ldai;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_redpoint_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldai;->Y:Landroid/widget/TextView;

    .line 60
    return-void
.end method

.method protected p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iget-object v0, p0, Ldai;->ac:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Ldai;->ac:Landroid/widget/LinearLayout;

    sget v1, Lctk$e;->chatfrom_bg_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 67
    :cond_0
    return-void
.end method

.method protected q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    iget-object v0, p0, Ldai;->ac:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Ldai;->ac:Landroid/widget/LinearLayout;

    sget v1, Lctk$e;->chatfrom_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 74
    :cond_0
    return-void
.end method
