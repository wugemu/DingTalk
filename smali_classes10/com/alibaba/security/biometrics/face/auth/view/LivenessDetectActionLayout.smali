.class public Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout$1;,
        Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout$a;
    }
.end annotation


# instance fields
.field A:Landroid/widget/TextView;

.field protected B:I

.field public C:Landroid/view/animation/Animation;

.field D:Landroid/view/animation/Animation;

.field E:Landroid/view/animation/Animation;

.field F:Landroid/view/animation/Animation;

.field G:Landroid/widget/ImageView;

.field H:Landroid/widget/ImageView;

.field I:Landroid/widget/ImageView;

.field J:Landroid/widget/ImageView;

.field K:Landroid/widget/ImageView;

.field L:Landroid/widget/ImageView;

.field M:Landroid/widget/ImageView;

.field N:Landroid/widget/ImageView;

.field O:Landroid/widget/ImageView;

.field P:Landroid/widget/ImageView;

.field Q:Landroid/widget/ImageView;

.field public R:Z

.field S:Landroid/widget/TextView;

.field public T:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

.field private U:Z

.field private V:I

.field private W:Z

.field public a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout$a;

.field private aa:Z

.field private ab:Landroid/os/Handler;

.field protected b:Landroid/view/View;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/view/View;

.field public e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/widget/ImageView;

.field protected i:Landroid/widget/ImageView;

.field protected j:Landroid/view/View;

.field protected k:Landroid/widget/ImageView;

.field protected l:Landroid/widget/ImageView;

.field public m:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

.field public n:Landroid/widget/RelativeLayout;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/view/animation/Animation;

.field public q:Landroid/view/animation/Animation;

.field r:Landroid/view/animation/Animation;

.field s:Landroid/view/animation/Animation;

.field t:Landroid/view/ViewStub;

.field u:Landroid/view/View;

.field v:Landroid/view/View;

.field w:Landroid/view/View;

.field x:Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;

.field public y:Landroid/view/WindowManager;

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->B:I

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->V:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->W:Z

    iput-boolean v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->aa:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->ab:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->B:I

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->V:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->W:Z

    iput-boolean v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->aa:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->ab:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->B:I

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->V:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->W:Z

    iput-boolean v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->aa:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->ab:Landroid/os/Handler;

    return-void
.end method

.method private static a(Landroid/view/View;IZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {v0, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->F:Landroid/view/animation/Animation;

    new-instance v1, Lhxa;

    invoke-direct {v1, p0, p1, p2}, Lhxa;-><init>(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->C:Landroid/view/animation/Animation;

    new-instance v1, Lhxe;

    invoke-direct {v1, p0, p2}, Lhxe;-><init>(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->F:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->U:Z

    return v0
.end method

.method public static synthetic a(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->U:Z

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 0
    sget v0, Lhyx$d;->abface_camera_surfaceview:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->m:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    sget v0, Lhyx$d;->liveness_action_prompt:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    sget v0, Lhyx$d;->face_action_tips_layout:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->n:Landroid/widget/RelativeLayout;

    sget v0, Lhyx$d;->face_action_tips_textview:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->f:Landroid/widget/TextView;

    sget v0, Lhyx$d;->face_action_tips_imageview:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->o:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->face_action_finish_prompt:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->l:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->face_action_people_shape_view:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->z:Landroid/view/View;

    sget v0, Lhyx$d;->face_action_people_shape:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->h:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->face_action_mask:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->i:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->face_action_mask_top:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->j:Landroid/view/View;

    sget v0, Lhyx$d;->face_action_close:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->k:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->simple_close_area:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->b:Landroid/view/View;

    sget v0, Lhyx$d;->face_action_sound_switch:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->c:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->simple_sound_switch_area:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lhyx$a;->anim_face_steptext_trans_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->p:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lhyx$a;->anim_face_steptext_trans_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->q:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lhyx$a;->anim_face_alpha_repeater:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->s:Landroid/view/animation/Animation;

    sget v0, Lhyx$d;->face_detect_upload:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->t:Landroid/view/ViewStub;

    sget v0, Lhyx$d;->face_detect_action:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->u:Landroid/view/View;

    sget v0, Lhyx$d;->simple_shotcut:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->w:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lhyx$a;->anim_face_alpha_shotcut:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->r:Landroid/view/animation/Animation;

    sget v0, Lhyx$d;->simple_action_capturerect:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->x:Lcom/alibaba/security/biometrics/face/auth/widget/CaptureRect;

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->y:Landroid/view/WindowManager;

    sget v0, Lhyx$d;->simple_mine:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->A:Landroid/widget/TextView;

    sget v0, Lhyx$d;->simple_time:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->S:Landroid/widget/TextView;

    sget v0, Lhyx$d;->face_action_steps_layout:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->v:Landroid/view/View;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lhyx$a;->anim_face_step_scale:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->C:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lhyx$a;->anim_face_step_trans:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->D:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lhyx$a;->anim_face_step_rotate:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->E:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lhyx$a;->anim_face_step_alpha:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->F:Landroid/view/animation/Animation;

    sget v0, Lhyx$d;->actionNormalImage1:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->G:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->actionNormalImage2:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->H:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->actionNormalImage3:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->I:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->actionActiveImage1:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->J:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lhyx$d;->actionActiveImage2:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->K:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->actionActiveImage3:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->L:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->actionFinishImage1:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->M:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->actionFinishImage2:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->N:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->actionFinishImage3:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->O:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->line1to2:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->P:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->line2to3:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->Q:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->face_frameinfo_textview:I

    invoke-static {p0, v0}, Lhww;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->g:Landroid/widget/TextView;

    .line 1000
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->b:Landroid/view/View;

    new-instance v1, Lhxf;

    invoke-direct {v1, p0}, Lhxf;-><init>(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->d:Landroid/view/View;

    new-instance v1, Lhxg;

    invoke-direct {v1, p0}, Lhxg;-><init>(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2000
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->y:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit16 v1, v3, 0x127

    div-int/lit16 v1, v1, 0x536

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->i:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit16 v4, v2, 0x313

    div-int/lit16 v4, v4, 0x2ee

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->i:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit16 v4, v2, 0x31c

    div-int/lit16 v4, v4, 0x2ee

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->h:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->z:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit16 v2, v2, 0x31c

    div-int/lit16 v2, v2, 0x2ee

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit16 v1, v3, 0xe1

    div-int/lit16 v1, v1, 0x536

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit16 v1, v3, 0x256

    div-int/lit16 v1, v1, 0x536

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit16 v1, v3, 0x26f

    div-int/lit16 v1, v1, 0x536

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 0
    return-void
.end method

.method public final a(I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x4

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->N:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->B:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->J:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->G:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->N:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->B:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->H:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->B:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->N:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->L:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->I:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->B:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->N:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->N:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->o:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->o:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->n:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->ab:Landroid/os/Handler;

    new-instance v1, Lhxb;

    invoke-direct {v1, p0}, Lhxb;-><init>(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v4, -0x1

    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->P:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->P:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->H:Landroid/widget/ImageView;

    sget v1, Lhyx$d;->line1to2:I

    invoke-static {v0, v1, v3}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a(Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->K:Landroid/widget/ImageView;

    sget v1, Lhyx$d;->line1to2:I

    invoke-static {v0, v1, v3}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a(Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->N:Landroid/widget/ImageView;

    sget v1, Lhyx$d;->line1to2:I

    invoke-static {v0, v1, v3}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a(Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->G:Landroid/widget/ImageView;

    sget v1, Lhyx$d;->line1to2:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a(Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->J:Landroid/widget/ImageView;

    sget v1, Lhyx$d;->line1to2:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a(Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->M:Landroid/widget/ImageView;

    sget v1, Lhyx$d;->line1to2:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a(Landroid/view/View;IZ)V

    iput v3, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->B:I

    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->m:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    invoke-virtual {v0, v2}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a(I)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->d()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "hint_c"

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v1

    const-string/jumbo v2, "10007"

    invoke-virtual {v1, v2, v0}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    iget-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->W:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v2, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->W:Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    iget-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->W:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    iput-boolean v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->W:Z

    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final g()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 0
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lhyx$g;->face_detect_action_mirror:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3000
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 4000
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5000
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->N:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->B:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->m:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    invoke-virtual {v0, v2}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->q:Landroid/view/animation/Animation;

    new-instance v1, Lhxi;

    invoke-direct {v1, p0}, Lhxi;-><init>(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setCallback(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->a:Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout$a;

    return-void
.end method

.method public setSoundEnable(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iput-boolean p1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->U:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->c:Landroid/widget/ImageView;

    sget v1, Lhyx$c;->face_top_sound_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->c:Landroid/widget/ImageView;

    sget v1, Lhyx$c;->face_top_sound_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setSurfaceListener(Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->m:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->m:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    invoke-virtual {v0, p1}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->setSurfaceViewListener(Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;)V

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->T:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;->m:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    new-instance v1, Lhxc;

    invoke-direct {v1, p0}, Lhxc;-><init>(Lcom/alibaba/security/biometrics/face/auth/view/LivenessDetectActionLayout;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->setSurfaceViewListener(Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;)V

    :cond_0
    return-void
.end method
