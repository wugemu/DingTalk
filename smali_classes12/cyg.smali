.class public final Lcyg;
.super Lcva;
.source "UserEncryptedAudioFromViewHolder.java"


# instance fields
.field protected ab:Landroid/widget/TextView;

.field private ac:Lcom/alibaba/wukong/im/Message;

.field private ad:Lctj$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcva;-><init>(Z)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcyg;->ab:Landroid/widget/TextView;

    .line 32
    new-instance v0, Lcyg$1;

    invoke-direct {v0, p0}, Lcyg$1;-><init>(Lcyg;)V

    iput-object v0, p0, Lcyg;->ad:Lctj$a;

    .line 25
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    iget-object v1, p0, Lcyg;->ad:Lctj$a;

    invoke-virtual {v0, v1}, Lctj;->a(Lctj$a;)V

    .line 26
    return-void
.end method

.method static synthetic a(Lcyg;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p0, "x0"    # Lcyg;

    .prologue
    .line 21
    iget-object v0, p0, Lcyg;->ac:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 7
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 85
    .local v3, "translateOpened":Z
    instance-of v4, p1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 86
    check-cast v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v2

    .line 87
    .local v2, "manager":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;
    invoke-virtual {v2, p2}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v1

    .line 88
    .local v1, "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v5, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->c:I

    if-ne v4, v5, :cond_0

    .line 89
    const/4 v3, 0x1

    .line 92
    .end local v1    # "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    .end local v2    # "manager":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    .line 93
    iget-object v4, p0, Lcyg;->ab:Landroid/widget/TextView;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {p1, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 94
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$e;->red_dot_icon:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    :cond_1
    iget-object v4, p0, Lcyg;->ab:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v6, v0, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 98
    iput-object p2, p0, Lcyg;->ac:Lcom/alibaba/wukong/im/Message;

    .line 99
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lctk$g;->chatting_item_from:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lctk$g;->chatting_item_from_encrypt_voice:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Lcyg;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_redpoint_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcyg;->ab:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcyg;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyg;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->isRead()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lebc;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Ldjr;->a()Ldjr;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcyg;->X:Lcom/alibaba/wukong/im/Message;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ldjr;->a(ZLcom/alibaba/wukong/im/Message;Lcma;)V

    .line 65
    :cond_0
    return-void
.end method

.method protected final q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lcyg;->Y:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcyg;->Y:Landroid/widget/LinearLayout;

    sget v1, Lctk$e;->chatfrom_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 79
    :cond_0
    return-void
.end method

.method protected final r()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lcyg;->Y:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcyg;->Y:Landroid/widget/LinearLayout;

    sget v1, Lctk$e;->chatfrom_bg_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 72
    :cond_0
    return-void
.end method
