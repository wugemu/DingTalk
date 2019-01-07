.class public Lcom/alibaba/android/ding/widget/DingTabLayoutView;
.super Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;
.source "DingTabLayoutView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

.field public b:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

.field public c:Lcom/alibaba/android/ding/widget/DingAttachmentView;

.field public d:Z

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/CharSequence;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private t:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private u:Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->j:Ljava/lang/CharSequence;

    .line 1182
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_layout_ding_tab:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1183
    sget v0, Laxp$f;->tv_audio_tab:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->n:Landroid/widget/TextView;

    .line 1184
    sget v0, Laxp$f;->tv_text_tab:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->o:Landroid/widget/TextView;

    .line 1185
    sget v0, Laxp$f;->iv_text_tab:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1186
    sget v0, Laxp$f;->iv_audio_tab:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->t:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1187
    sget v0, Laxp$f;->indicator_ding_tab:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->p:Landroid/view/View;

    .line 1188
    sget v0, Laxp$f;->layout_audio_tab:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->q:Landroid/view/View;

    .line 1189
    sget v0, Laxp$f;->layout_text_tab:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->r:Landroid/view/View;

    .line 1190
    sget v0, Laxp$f;->v_ding_voice_record:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    .line 1192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->d:Z

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Ljava/lang/String;Ljava/util/List;J)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # J

    .prologue
    const/4 v3, 0x0

    .line 47
    .line 2411
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e:I

    .line 2413
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$c;->ding_create_tab_layout_switch_color_normal:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2414
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$c;->ding_create_tab_layout_switch_color_normal:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 2415
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->t:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 2416
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2418
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setVisibility(I)V

    .line 2419
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2420
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->setVisibility(I)V

    .line 2421
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->p:Landroid/view/View;

    new-instance v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$8;-><init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {v6, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2431
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->u:Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

    if-eqz v0, :cond_0

    .line 2432
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->u:Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

    invoke-interface {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;->c()V

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->u:Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Lcom/alibaba/android/ding/widget/DingVoiceRecordView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private f()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->p:Landroid/view/View;

    const-string/jumbo v2, "x"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "[DingTabLayoutView]animatorToTextTab failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->f()V

    return-void
.end method

.method private g()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->p:Landroid/view/View;

    const-string/jumbo v2, "x"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcms;->a(Landroid/content/Context;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "[DingTabLayoutView]animatorToAudioTab failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 47
    .line 2442
    iget v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e:I

    if-eq v0, v1, :cond_0

    .line 2445
    iput v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e:I

    .line 2446
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$c;->ding_create_tab_layout_switch_color_normal:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2447
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$c;->ding_create_tab_layout_switch_color_normal:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 2448
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->t:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 2449
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2451
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setVisibility(I)V

    .line 2452
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2453
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->setVisibility(I)V

    .line 2454
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e()V

    .line 2455
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 2456
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->g()V

    .line 2458
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->requestFocus()Z

    .line 2460
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->u:Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

    if-eqz v0, :cond_0

    .line 2461
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->u:Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

    invoke-interface {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;->c()V

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->g()V

    return-void
.end method


# virtual methods
.method public final a(ZZLjava/lang/CharSequence;Z)V
    .locals 7
    .param p1, "isInit"    # Z
    .param p2, "setText"    # Z
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "setSelection"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 320
    iget v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e:I

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iput v5, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e:I

    .line 325
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->s:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 327
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->t:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Laxp$c;->ding_create_tab_layout_switch_color_normal:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 328
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Laxp$c;->ding_create_tab_layout_switch_color_normal:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setVisibility(I)V

    .line 333
    if-eqz p1, :cond_2

    .line 334
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->p:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;

    invoke-direct {v3, p0, p2, p3, p4}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$5;-><init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView;ZLjava/lang/CharSequence;Z)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->u:Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->u:Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

    invoke-interface {v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;->c()V

    goto :goto_0

    .line 361
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setVisibility(I)V

    .line 363
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 364
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :cond_3
    if-eqz p4, :cond_4

    .line 367
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 368
    .local v0, "sequence":Ljava/lang/CharSequence;
    if-eqz v0, :cond_4

    move-object v1, v0

    .line 369
    check-cast v1, Landroid/text/Spannable;

    .line 370
    .local v1, "spanText":Landroid/text/Spannable;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 373
    .end local v0    # "sequence":Ljava/lang/CharSequence;
    .end local v1    # "spanText":Landroid/text/Spannable;
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e()V

    .line 374
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b()V

    .line 375
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->f()V

    goto :goto_1
.end method

.method public final a()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    iget v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    .line 151
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2237
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 151
    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    .line 2237
    iget-object v3, v2, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_READY:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v4, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_PLAYING:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    if-eq v3, v4, :cond_0

    iget-object v2, v2, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v3, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_PAUSE:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 152
    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 165
    iget v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e:I

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->requestFocus()Z

    .line 168
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-static {v0, v1}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 171
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 174
    iget v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e:I

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 179
    :cond_0
    return-void
.end method

.method public d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 230
    .line 2241
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->q:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2242
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->r:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2243
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    new-instance v2, Lcom/alibaba/android/ding/widget/DingTabLayoutView$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$1;-><init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2264
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    new-instance v2, Lcom/alibaba/android/ding/widget/DingTabLayoutView$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$2;-><init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->setOnStatusChangedListener(Lcom/alibaba/android/ding/widget/DingVoiceRecordView$a;)V

    .line 2278
    new-instance v1, Lcom/alibaba/android/ding/widget/DingTabLayoutView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$3;-><init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->setKeyboardListener(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$a;)V

    .line 2300
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->c:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    new-instance v1, Lcom/alibaba/android/ding/widget/DingTabLayoutView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$4;-><init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)V

    const-class v3, Lcom/alibaba/android/ding/widget/DingAttachmentView$a;

    .line 2310
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbjo;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    .line 2300
    invoke-static {v1, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/widget/DingAttachmentView$a;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->setAttachmentSelectListener(Lcom/alibaba/android/ding/widget/DingAttachmentView$a;)V

    .line 231
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setExpectedWidth(I)V

    .line 232
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->setTvAudioTime(Landroid/widget/TextView;)V

    .line 233
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->setViewWaveform(Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;)V

    .line 235
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->p:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 236
    .local v0, "layoutParamsOfTabIndicator":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 237
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->p:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->d:Z

    if-eqz v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getAttachmentModule()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->c:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getDingAttachmentModule()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    return-object v0
.end method

.method public getDingDraftAudio()Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 133
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getAudioContentModel()Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    move-result-object v0

    .line 134
    .local v0, "audioContentModel":Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 146
    :goto_0
    return-object v1

    .line 138
    :cond_1
    new-instance v1, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;-><init>()V

    .line 139
    .local v1, "dingDraftAudio":Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->setMediaId(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->setAuthMediaId(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->setAuthCode(Ljava/lang/String;)V

    .line 142
    iget-object v2, v0, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->duration:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->setDuration(J)V

    .line 143
    iget-object v2, v0, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->audioVolumns:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->setAudioVolumes(Ljava/util/List;)V

    .line 145
    iget-object v2, v0, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->mediaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->setAudioLocalUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->layout_audio_tab:I

    if-ne v0, v1, :cond_1

    .line 1395
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbjo;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v1, v3

    new-instance v2, Lcom/alibaba/android/ding/widget/DingTabLayoutView$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$7;-><init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView;)V

    invoke-static {v0, v3, v1, v2}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->layout_text_tab:I

    if-ne v0, v1, :cond_0

    .line 103
    const-string/jumbo v0, ""

    invoke-virtual {p0, v3, v3, v0, v3}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a(ZZLjava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->onDetachedFromWindow()V

    .line 110
    return-void
.end method

.method public setAttachmentModule(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V
    .locals 1
    .param p1, "dingAttachmentModule"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->c:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->setDingAttachmentModule(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    .line 122
    return-void
.end method

.method public setDingAttachmentView(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V
    .locals 0
    .param p1, "dingAttachmentView"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->c:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .line 213
    return-void
.end method

.method public setEditContent(Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;)V
    .locals 0
    .param p1, "editContent"    # Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    .line 197
    return-void
.end method

.method public setLayoutAudioWave(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "layoutAudioWave"    # Landroid/widget/LinearLayout;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->k:Landroid/widget/LinearLayout;

    .line 201
    return-void
.end method

.method public setOnContentChangedListener(Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;)V
    .locals 0
    .param p1, "onContentChangedListener"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->u:Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

    .line 126
    return-void
.end method

.method public setOriginTextContent(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "originTextContent"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->j:Ljava/lang/CharSequence;

    .line 114
    return-void
.end method

.method public setTvVoiceTime(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvVoiceTime"    # Landroid/widget/TextView;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->l:Landroid/widget/TextView;

    .line 205
    return-void
.end method

.method public setWaveformView(Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;)V
    .locals 0
    .param p1, "waveformView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    .line 209
    return-void
.end method
