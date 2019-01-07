.class public Lcom/alibaba/android/ding/activity/DingCreateActivityV2;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingCreateActivityV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/widget/TextView;

.field private C:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/ToggleButton;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/view/View;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/view/View;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

.field private N:Landroid/widget/ToggleButton;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/view/View;

.field private R:Landroid/widget/ToggleButton;

.field private S:Landroid/view/View;

.field private T:Landroid/widget/TextView;

.field private U:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private V:Landroid/view/animation/Animation;

.field private W:Landroid/view/animation/Animation;

.field private X:Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

.field private Y:Lazy$a;

.field private Z:Lazy$b;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private h:Landroid/widget/ScrollView;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/RelativeLayout$LayoutParams;

.field private l:Landroid/view/View;

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

.field private n:Landroid/widget/LinearLayout;

.field private o:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/alibaba/android/ding/widget/VoicePlayView;

.field private r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

.field private s:Lcom/alibaba/android/ding/widget/DingAttachmentView;

.field private t:Landroid/widget/LinearLayout;

.field private u:Lcom/alibaba/android/ding/widget/ReceiverSelector;

.field private v:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

.field private w:Landroid/widget/LinearLayout;

.field private x:Lcom/alibaba/android/ding/widget/ReceiverSelector;

.field private y:Landroid/view/View;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x41400000    # 12.0f

    const/4 v1, 0x0

    .line 86
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->a:I

    .line 87
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b:I

    .line 90
    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->c:I

    .line 91
    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->A:Landroid/view/View;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->B:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->t:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic D(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->N:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic E(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->P:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic F(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->O:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic G(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic H(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/VoicePlayView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->q:Lcom/alibaba/android/ding/widget/VoicePlayView;

    return-object v0
.end method

.method static synthetic I(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    .line 9484
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$6;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V

    const-class v3, Lcma;

    .line 9485
    invoke-static {v0, v3, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 9484
    invoke-virtual {v1, v2, v0}, Lbhg;->a(ILcma;)V

    .line 84
    return-void
.end method

.method static synthetic J(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic K(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->R:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic L(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->S:Landroid/view/View;

    return-object v0
.end method

.method static synthetic M(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->T:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic N(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->U:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method static synthetic O(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    .line 11510
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$7;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->c:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;
    .param p1, "x1"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->k:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->g:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;Landroid/view/View;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 84
    .line 10369
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->V:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 10370
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->V:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 10372
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->W:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 10373
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->W:Landroid/view/animation/Animation;

    .line 10374
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->W:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 10375
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->W:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 10376
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->W:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 10378
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->W:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "withAnimation"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$14;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$14;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1337
    return-void
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->d:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;Landroid/view/View;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 84
    .line 11340
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->W:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 11341
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->W:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 11343
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->V:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 11344
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->V:Landroid/view/animation/Animation;

    .line 11345
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->V:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11346
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->V:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 11347
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->V:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 11348
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->V:Landroid/view/animation/Animation;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$15;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$15;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 11365
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->V:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->h:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1382
    iget-object v6, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->u:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getProfileUids()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->u:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getProfileUids()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    move v1, v4

    .line 1383
    .local v1, "hasChooseProfile":Z
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    invoke-interface {v6}, Lazy$a;->H()Z

    move-result v2

    .line 1384
    .local v2, "isDraftAvailable":Z
    if-nez v1, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    invoke-interface {v6}, Lazy$a;->a()Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v3, v4

    .line 1385
    .local v3, "shouldShowConfirmDialog":Z
    :goto_1
    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    .line 1386
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1387
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v4, Laxp$i;->ding_alert_need_give_up:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1388
    sget v4, Laxp$i;->ding_alert_giveup:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$2;

    invoke-direct {v5, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$2;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1396
    sget v4, Laxp$i;->cancel:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$3;

    invoke-direct {v5, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$3;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1401
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1406
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :goto_2
    return-void

    .end local v1    # "hasChooseProfile":Z
    .end local v2    # "isDraftAvailable":Z
    .end local v3    # "shouldShowConfirmDialog":Z
    :cond_1
    move v1, v5

    .line 1382
    goto :goto_0

    .restart local v1    # "hasChooseProfile":Z
    .restart local v2    # "isDraftAvailable":Z
    :cond_2
    move v3, v5

    .line 1384
    goto :goto_1

    .line 1403
    .restart local v3    # "shouldShowConfirmDialog":Z
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    invoke-interface {v4}, Lazy$a;->G()V

    .line 1404
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->finish()V

    goto :goto_2
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingAttachmentView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->s:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->k:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->L:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->g:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->u:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->x:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->v:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Z:Lazy$b;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->J:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->K:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->E:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->G:Landroid/view/View;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->F:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->I:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->w:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->D:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->y:Landroid/view/View;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->z:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->c()V

    .line 206
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->layout_deadline_time:I

    if-ne v0, v1, :cond_2

    .line 5446
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->C:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    if-nez v0, :cond_0

    .line 5447
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_FIVE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->C:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .line 5448
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->C:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .line 6362
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a:Z

    .line 5449
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->C:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$5;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V

    .line 6414
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    .line 5480
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->C:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->show()V

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 253
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->layout_deadline_remind_type:I

    if-ne v0, v1, :cond_3

    .line 254
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    .line 255
    invoke-interface {v0}, Lazy$a;->b()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    .line 256
    invoke-interface {v0}, Lazy$a;->c()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    move-result-object v4

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    .line 257
    invoke-interface {v0}, Lazy$a;->d()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    move-result-object v7

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    .line 258
    invoke-interface {v0}, Lazy$a;->e()J

    move-result-wide v2

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    .line 259
    invoke-interface {v0}, Lazy$a;->f()J

    move-result-wide v5

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    .line 260
    invoke-interface {v0}, Lazy$a;->j()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v8

    .line 7384
    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    .line 7391
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v9

    const-string/jumbo v10, "https://qr.dingtalk.com/ding/choose_deadline_remind_type"

    new-instance v0, Lbjv$26;

    invoke-direct/range {v0 .. v8}, Lbjv$26;-><init>(Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;JLcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;JLcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    invoke-interface {v9, v10, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->toggle_timing:I

    if-ne v0, v1, :cond_6

    .line 262
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->E:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    sget-object v1, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_LATER:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    invoke-interface {v0, v1}, Lazy$a;->a(Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;)V

    .line 264
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    invoke-interface {v0}, Lazy$a;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    invoke-static {}, Lcpu;->e()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lazy$a;->a(J)V

    .line 270
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Z:Lazy$b;

    invoke-interface {v0}, Lazy$b;->m()V

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Z:Lazy$b;

    invoke-interface {v0}, Lazy$b;->l()V

    goto :goto_0

    .line 268
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    sget-object v1, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_NOW:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    invoke-interface {v0, v1}, Lazy$a;->a(Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;)V

    goto :goto_1

    .line 272
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->layout_send_time:I

    if-ne v0, v1, :cond_8

    .line 8409
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->M:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    if-nez v0, :cond_7

    .line 8410
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_ONE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->M:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .line 8411
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->M:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$4;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V

    .line 9414
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    .line 8441
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->M:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    invoke-interface {v1}, Lazy$a;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(J)V

    .line 8442
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->M:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->show()V

    goto/16 :goto_0

    .line 274
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->toggle_whisper_mode:I

    if-ne v0, v1, :cond_9

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->N:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lazy$a;->a(Z)V

    .line 276
    invoke-direct {p0, v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->a(Z)V

    goto/16 :goto_0

    .line 277
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->layout_send_repeat_frequency:I

    if-ne v0, v1, :cond_a

    .line 278
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    invoke-interface {v0}, Lazy$a;->y()V

    goto/16 :goto_0

    .line 279
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->toggle_msg_to_group_task:I

    if-ne v0, v1, :cond_b

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Z:Lazy$b;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->R:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lazy$b;->i(Z)V

    goto/16 :goto_0

    .line 281
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->layout_conversation_board:I

    if-ne v0, v1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    invoke-interface {v0}, Lazy$a;->C()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    sget v0, Laxp$g;->ding_activity_create_ding_v2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->setContentView(I)V

    .line 2476
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Laxp$g;->actbar_textview:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2477
    sget v0, Laxp$f;->tv_ok:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f:Landroid/widget/TextView;

    .line 2478
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$12;

    invoke-direct {v4, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$12;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2288
    iput-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->e:Landroid/view/View;

    .line 2290
    sget v0, Laxp$f;->scrollview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->h:Landroid/widget/ScrollView;

    .line 2291
    sget v0, Laxp$f;->ll_touch:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    .line 2294
    sget v0, Laxp$f;->layout_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j:Landroid/widget/LinearLayout;

    .line 2295
    sget v0, Laxp$f;->view_content_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l:Landroid/view/View;

    .line 2296
    sget v0, Laxp$f;->edit_ding_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    .line 2297
    sget v0, Laxp$f;->layout_ding_audio_wave:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->n:Landroid/widget/LinearLayout;

    .line 2299
    sget v0, Laxp$f;->v_waveform:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    .line 2300
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    sget v3, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->a:I

    sget v4, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(IFF)V

    .line 2303
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    new-instance v3, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$1;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->post(Ljava/lang/Runnable;)Z

    .line 2313
    sget v0, Laxp$f;->tv_voice_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->p:Landroid/widget/TextView;

    .line 2314
    sget v0, Laxp$f;->v_voice_play:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/VoicePlayView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->q:Lcom/alibaba/android/ding/widget/VoicePlayView;

    .line 2315
    sget v0, Laxp$f;->ding_upload_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingAttachmentView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->s:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .line 2318
    sget v0, Laxp$f;->view_owner_receiver_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/ReceiverSelector;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->u:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    .line 2321
    sget v0, Laxp$f;->v_remind_type_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->v:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    .line 2324
    sget v0, Laxp$f;->ll_task_more_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->w:Landroid/widget/LinearLayout;

    .line 2327
    sget v0, Laxp$f;->ll_participant_receiver:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->t:Landroid/widget/LinearLayout;

    .line 2328
    sget v0, Laxp$f;->view_participant_receiver_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/ReceiverSelector;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->x:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    .line 2329
    sget v0, Laxp$f;->layout_deadline_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->y:Landroid/view/View;

    .line 2330
    sget v0, Laxp$f;->tv_deadline_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->z:Landroid/widget/TextView;

    .line 2331
    sget v0, Laxp$f;->layout_deadline_remind_type:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->A:Landroid/view/View;

    .line 2332
    sget v0, Laxp$f;->tv_deadline_remind_type:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->B:Landroid/widget/TextView;

    .line 2335
    sget v0, Laxp$f;->ll_normal_more_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->D:Landroid/widget/LinearLayout;

    .line 2338
    sget v0, Laxp$f;->toggle_timing:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->E:Landroid/widget/ToggleButton;

    .line 2339
    sget v0, Laxp$f;->tv_toggle_time_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->F:Landroid/widget/TextView;

    .line 2340
    sget v0, Laxp$f;->layout_send_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->G:Landroid/view/View;

    .line 2341
    sget v0, Laxp$f;->tv_send_time_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->I:Landroid/widget/TextView;

    .line 2342
    sget v0, Laxp$f;->tv_send_date:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H:Landroid/widget/TextView;

    .line 2343
    sget v0, Laxp$f;->layout_send_repeat_frequency:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->J:Landroid/view/View;

    .line 2344
    sget v0, Laxp$f;->tv_send_repeat_frequency:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->K:Landroid/widget/TextView;

    .line 2345
    sget v0, Laxp$f;->tv_repeat_frequency_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->L:Landroid/widget/TextView;

    .line 2348
    sget v0, Laxp$f;->toggle_whisper_mode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->N:Landroid/widget/ToggleButton;

    .line 2349
    sget v0, Laxp$f;->tv_toggle_whisper_mode_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->O:Landroid/widget/TextView;

    .line 2350
    sget v0, Laxp$f;->tv_comment_only_visible_to_sender_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->P:Landroid/widget/TextView;

    .line 2353
    sget v0, Laxp$f;->layout_ding_tab:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .line 2354
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->setEditContent(Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;)V

    .line 2355
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->setLayoutAudioWave(Landroid/widget/LinearLayout;)V

    .line 2356
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->setWaveformView(Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;)V

    .line 2357
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->setTvVoiceTime(Landroid/widget/TextView;)V

    .line 2358
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->s:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->setDingAttachmentView(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V

    .line 2361
    sget v0, Laxp$f;->ll_group_task:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Q:Landroid/view/View;

    .line 2362
    sget v0, Laxp$f;->toggle_msg_to_group_task:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->R:Landroid/widget/ToggleButton;

    .line 2363
    sget v0, Laxp$f;->layout_conversation_board:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->S:Landroid/view/View;

    .line 2364
    sget v0, Laxp$f;->tv_conversation_board:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->T:Landroid/widget/TextView;

    .line 2365
    sget v0, Laxp$f;->iv_conversation_board_arrow:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->U:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 3369
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3370
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    new-instance v3, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$8;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$8;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;->setTouchCallBack(Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;)V

    .line 3401
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->G:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3402
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->y:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3403
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->J:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3404
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->A:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3405
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->E:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3406
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->N:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3407
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->R:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3408
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->S:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3410
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    new-instance v3, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$9;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$9;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->setOnGlobalLayoutChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$b;)V

    .line 3423
    new-instance v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$10;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->X:Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

    .line 3452
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->X:Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->setOnContentChangedListener(Lcom/alibaba/android/ding/widget/DingTabLayoutView$a;)V

    .line 3454
    new-instance v0, Landroid/text/SpannableString;

    sget v3, Laxp$i;->dt_ding_view_tutorial:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3455
    new-instance v3, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$11;

    sget v4, Laxp$c;->ui_common_link_text_color:I

    invoke-static {p0, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$11;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;I)V

    .line 3469
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    .line 3455
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3470
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->L:Landroid/widget/TextView;

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 3471
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->L:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 3472
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->L:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3490
    new-instance v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Z:Lazy$b;

    .line 4307
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_key_create_ding_info"

    invoke-static {v0, v3}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 4308
    if-nez v0, :cond_0

    .line 4309
    const-string/jumbo v0, "[DingCreateV2]init failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "dingCreateInfo is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4310
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->finish()V

    .line 4311
    :goto_0
    return-void

    .line 4313
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getDingIdStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 4314
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[DingCreateV2] isEditMode:"

    aput-object v4, v3, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Lbkd;->a([Ljava/lang/String;)V

    .line 4315
    if-eqz v0, :cond_2

    new-instance v0, Lbaa;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Z:Lazy$b;

    invoke-direct {v0, v1}, Lbaa;-><init>(Lazy$b;)V

    :goto_2
    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    .line 4318
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lazy$a;->b(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4313
    goto :goto_1

    .line 4315
    :cond_2
    new-instance v0, Lazz;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Z:Lazy$b;

    invoke-direct {v0, v1}, Lazz;-><init>(Lazy$b;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 183
    sget v3, Laxp$i;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 184
    .local v1, "menuItem":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->e:Landroid/view/View;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 185
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 186
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    invoke-interface {v3}, Lazy$a;->a()Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    .local v0, "canSend":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    invoke-interface {v2}, Lazy$a;->I()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Laxp$i;->dt_modify_event_op_modify:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 189
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 190
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .end local v0    # "canSend":Z
    :cond_1
    move v0, v2

    .line 186
    goto :goto_0

    .line 187
    .restart local v0    # "canSend":Z
    :cond_2
    sget v2, Laxp$i;->ding_send:I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->Y:Lazy$a;

    invoke-interface {v0}, Lazy$a;->i()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->W:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->W:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 216
    iput-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->W:Landroid/view/animation/Animation;

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->V:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->V:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 220
    iput-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->V:Landroid/view/animation/Animation;

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    if-eqz v0, :cond_7

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .line 5156
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->c:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    if-eqz v1, :cond_3

    .line 5157
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->c:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a()V

    .line 5159
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    if-eqz v1, :cond_6

    .line 5160
    iget-object v0, v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    .line 5323
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->g:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_4

    .line 5324
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5326
    :cond_4
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    if-eqz v1, :cond_5

    .line 5327
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    const/16 v2, 0x32

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/audio/AudioMagician;->setRecordSampleCounts(I)Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 5329
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Z)V

    .line 224
    :cond_6
    iput-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .line 227
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->s:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    if-eqz v0, :cond_8

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->s:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a()V

    .line 229
    iput-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->s:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .line 232
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->u:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    if-eqz v0, :cond_9

    .line 233
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->u:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->a()V

    .line 234
    iput-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->u:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    .line 237
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->x:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    if-eqz v0, :cond_a

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->x:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->a()V

    .line 239
    iput-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->x:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    .line 242
    :cond_a
    invoke-static {}, Lbla;->a()Lbla;

    move-result-object v0

    invoke-virtual {v0}, Lbla;->b()V

    .line 243
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->q:Lcom/alibaba/android/ding/widget/VoicePlayView;

    if-eqz v0, :cond_b

    .line 244
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->q:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVoicePlayListener(Lcom/alibaba/android/ding/widget/VoicePlayView$a;)V

    .line 246
    :cond_b
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 247
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->c()V

    .line 197
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->c()V

    .line 178
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 179
    return-void
.end method
