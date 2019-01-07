.class public Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "FocusProjectionActivity.java"

# interfaces
.implements Lali/mmpc/pwp/PwpClientCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;,
        Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Landroid/app/Activity;

.field private static d:Lcom/alibaba/doraemon/performance/DDStringBuilder;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/TextView;

.field private E:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private F:Landroid/view/View;

.field private G:Landroid/view/View;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/view/View;

.field private J:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/view/View;

.field private M:Lcom/alibaba/android/projection/widget/ProjectionRecordView;

.field private N:Legp;

.field private O:Landroid/media/projection/MediaProjectionManager;

.field private P:Landroid/view/Display;

.field private Q:Lali/mmpc/pwp/PwpClient;

.field private R:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

.field private S:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

.field private T:Lehw;

.field private U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/projection/data/FocusDeviceObject;",
            ">;"
        }
    .end annotation
.end field

.field private V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

.field private W:Legw;

.field private X:J

.field private Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Legt;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

.field a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

.field private aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

.field private ab:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

.field private ac:Ljava/lang/String;

.field private ad:J

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:Z

.field private ah:Z

.field private ai:Landroid/content/BroadcastReceiver;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Landroid/os/PowerManager;

.field private am:Landroid/os/PowerManager$WakeLock;

.field private an:Z

.field private ao:Z

.field private ap:J

.field private aq:J

.field private ar:Z

.field private as:Ljava/lang/Runnable;

.field private at:Ljava/lang/Runnable;

.field private au:Landroid/view/View$OnClickListener;

.field private av:Landroid/view/View$OnClickListener;

.field private aw:Landroid/content/BroadcastReceiver;

.field private e:Lehb;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/ProgressBar;

.field private u:Landroid/view/View;

.field private v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/ListView;

.field private y:Landroid/view/View;

.field private z:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const-class v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    .line 215
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c:Landroid/app/Activity;

    .line 217
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    .line 240
    iput-boolean v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->k:Z

    .line 241
    iput-boolean v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->l:Z

    .line 281
    sget-object v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->INDIRECT_MEDIACODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->R:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .line 282
    sget-object v0, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->FLUENCY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->S:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    .line 291
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 292
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 293
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ab:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    .line 299
    iput-boolean v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ag:Z

    .line 300
    iput-boolean v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ah:Z

    .line 310
    iput-boolean v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->an:Z

    .line 311
    iput-boolean v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ao:Z

    .line 315
    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$1;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->as:Ljava/lang/Runnable;

    .line 340
    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->at:Ljava/lang/Runnable;

    .line 416
    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$23;

    invoke-direct {v0, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$23;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->au:Landroid/view/View$OnClickListener;

    .line 441
    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$33;

    invoke-direct {v0, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$33;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->av:Landroid/view/View$OnClickListener;

    .line 457
    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;

    invoke-direct {v0, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$43;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aw:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->q:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic D(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    return-object v0
.end method

.method static synthetic E(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Legp;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->N:Legp;

    return-object v0
.end method

.method static synthetic F(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->T:Lehw;

    return-object v0
.end method

.method static synthetic G(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ad:J

    return-wide v0
.end method

.method static synthetic H(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->L:Landroid/view/View;

    return-object v0
.end method

.method static synthetic I(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->t:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic J(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lali/mmpc/pwp/PwpClient$CODEC_TYPE;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->R:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    return-object v0
.end method

.method static synthetic K(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lali/mmpc/pwp/PwpClient;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q:Lali/mmpc/pwp/PwpClient;

    return-object v0
.end method

.method static synthetic L(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic M(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ak:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic N(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Legw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->W:Legw;

    return-object v0
.end method

.method static synthetic O(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    .line 38956
    new-instance v0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;-><init>(Landroid/content/Context;)V

    .line 38957
    const/4 v1, 0x0

    .line 39122
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->h:Landroid/graphics/drawable/Drawable;

    .line 38958
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->af:Ljava/lang/String;

    .line 40118
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->g:Ljava/lang/String;

    .line 38959
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$24;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$24;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;)V

    .line 40126
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->b:Landroid/view/View$OnClickListener;

    .line 38967
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$25;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$25;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;)V

    .line 41102
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->a:Landroid/view/View$OnClickListener;

    .line 38984
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38985
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->dismiss()V

    .line 38987
    :cond_0
    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    .line 38988
    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 38989
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$26;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$26;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 172
    :cond_1
    return-void
.end method

.method static synthetic P(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->w:Landroid/view/View;

    return-object v0
.end method

.method static synthetic Q(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehb;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    return-object v0
.end method

.method static synthetic R(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d()V

    return-void
.end method

.method static synthetic S(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/media/projection/MediaProjectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->O:Landroid/media/projection/MediaProjectionManager;

    return-object v0
.end method

.method static synthetic T(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->l()V

    return-void
.end method

.method static synthetic U(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    const/16 v7, 0x16

    const/16 v6, 0x15

    const/16 v5, 0xc

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 172
    .line 45941
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45942
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Z)V

    .line 46232
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    iget-object v0, v0, Lehb;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    iget-object v0, v0, Lehb;->a:Ljava/lang/Integer;

    .line 46233
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    iget-object v0, v0, Lehb;->a:Ljava/lang/Integer;

    .line 46234
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    iget-object v0, v0, Lehb;->a:Ljava/lang/Integer;

    .line 46235
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    iget-object v0, v0, Lehb;->a:Ljava/lang/Integer;

    .line 46236
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    iget-object v0, v0, Lehb;->a:Ljava/lang/Integer;

    .line 46237
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v7, :cond_5

    .line 46238
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46239
    const-string/jumbo v1, "_field_event_id"

    const-string/jumbo v2, "2101"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46240
    const-string/jumbo v1, "log_ding_version"

    const-string/jumbo v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46241
    const-string/jumbo v1, "device_type"

    const-string/jumbo v2, "focus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46242
    const-string/jumbo v1, "failed_other"

    const-string/jumbo v2, "a2q0r.11900331.1.failed_other"

    invoke-static {v4, v1, v0, v2}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 46320
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-nez v0, :cond_3

    .line 45946
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->l()V

    .line 172
    :cond_2
    return-void

    .line 46323
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v0, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    .line 46324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 46325
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v0, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 46327
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46329
    new-instance v0, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;-><init>(Landroid/content/Context;)V

    .line 46330
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$31;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$31;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/widget/ProjectionFailDialog;)V

    .line 47080
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->b:Landroid/view/View$OnClickListener;

    .line 46336
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$32;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$32;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/widget/ProjectionFailDialog;)V

    .line 48072
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->a:Landroid/view/View$OnClickListener;

    .line 46345
    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46346
    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionFailDialog;->show()V

    goto :goto_0

    .line 46246
    :cond_5
    new-instance v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;-><init>(Landroid/content/Context;)V

    .line 46247
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$29;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$29;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;)V

    .line 48119
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->b:Landroid/view/View$OnClickListener;

    .line 46253
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$30;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;)V

    .line 49099
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->a:Landroid/view/View$OnClickListener;

    .line 46272
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    iget-object v2, v2, Lehb;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 46273
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$e;->dt_focus_wifi_isolute:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 49107
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->d:Ljava/lang/String;

    .line 46274
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$e;->dt_focus_wifi_isolute_fix_method:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50095
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->c:Ljava/lang/String;

    .line 46275
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$e;->dt_focus_wifi_isolute_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50097
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->e:Ljava/lang/String;

    .line 46276
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$b;->icon_geli:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 50099
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->g:Landroid/graphics/drawable/Drawable;

    .line 46278
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46279
    const-string/jumbo v2, "_field_event_id"

    const-string/jumbo v3, "2101"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46280
    const-string/jumbo v2, "log_ding_version"

    const-string/jumbo v3, "1.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46281
    const-string/jumbo v2, "device_type"

    const-string/jumbo v3, "focus"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46282
    const-string/jumbo v2, "failed_network_isolated"

    const-string/jumbo v3, "a2q0r.11900331.1.failed_network_isolated"

    invoke-static {v4, v2, v1, v3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 46314
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46315
    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->show()V

    goto/16 :goto_0

    .line 46284
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    iget-object v1, v1, Lehb;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v3, v1, :cond_8

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    iget-object v1, v1, Lehb;->a:Ljava/lang/Integer;

    .line 46285
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v5, v1, :cond_a

    .line 46286
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$e;->dt_focus_wifi_differ:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50101
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->d:Ljava/lang/String;

    .line 46287
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$e;->dt_focus_wifi_differ_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50103
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->e:Ljava/lang/String;

    .line 46288
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$e;->dt_focus_wifi_set:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50105
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->c:Ljava/lang/String;

    .line 46289
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    iget-object v1, v1, Lehb;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v3, v1, :cond_9

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    iget-object v1, v1, Lehb;->b:Ljava/lang/String;

    .line 46290
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 46291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Legm$e;->dt_focus_wifi_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    iget-object v2, v2, Lehb;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50107
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->f:Ljava/lang/String;

    .line 46293
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$b;->icon_wifi:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 50109
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->g:Landroid/graphics/drawable/Drawable;

    .line 46295
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46296
    const-string/jumbo v2, "_field_event_id"

    const-string/jumbo v3, "2101"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46297
    const-string/jumbo v2, "log_ding_version"

    const-string/jumbo v3, "1.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46298
    const-string/jumbo v2, "device_type"

    const-string/jumbo v3, "focus"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46299
    const-string/jumbo v2, "failed_error_wifi"

    const-string/jumbo v3, "a2q0r.11900331.1.failed_error_wifi"

    invoke-static {v4, v2, v1, v3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 46301
    :cond_a
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    iget-object v1, v1, Lehb;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v7, v1, :cond_b

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    iget-object v1, v1, Lehb;->a:Ljava/lang/Integer;

    .line 46302
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v6, v1, :cond_6

    .line 46303
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$e;->dt_focus_cast_code_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50111
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->d:Ljava/lang/String;

    .line 46304
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$e;->dt_focus_cast_code_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50113
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->e:Ljava/lang/String;

    .line 46305
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$e;->dt_focus_re_enter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50115
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->c:Ljava/lang/String;

    .line 46306
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$b;->icon_input:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 50117
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->g:Landroid/graphics/drawable/Drawable;

    .line 46308
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46309
    const-string/jumbo v2, "_field_event_id"

    const-string/jumbo v3, "2101"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46310
    const-string/jumbo v2, "log_ding_version"

    const-string/jumbo v3, "1.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46311
    const-string/jumbo v2, "device_type"

    const-string/jumbo v3, "focus"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46312
    const-string/jumbo v2, "failed_error_code"

    const-string/jumbo v3, "a2q0r.11900331.1.failed_error_code"

    invoke-static {v4, v2, v1, v3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # J

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->X:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;)Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->S:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ab:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ab:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)Lcom/alibaba/android/projection/data/FocusDeviceObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Legw;)Legw;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Legw;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->W:Legw;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lehb;)Lehb;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Lehb;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lehw;)Lehw;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Lehw;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->T:Lehw;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;Lehz;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Lcom/alibaba/android/projection/data/FocusDeviceObject;
    .param p2, "x2"    # Lehz;

    .prologue
    .line 172
    .line 45344
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/data/FocusDeviceObject;Lehz;Z)Ljava/lang/Object;

    move-result-object v0

    .line 172
    return-object v0
.end method

.method private a(Lcom/alibaba/android/projection/data/FocusDeviceObject;Lehz;Z)Ljava/lang/Object;
    .locals 11
    .param p1, "device"    # Lcom/alibaba/android/projection/data/FocusDeviceObject;
    .param p2, "param"    # Lehz;
    .param p3, "quick"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1348
    invoke-static {}, Lali/mmpc/util/AdResourceUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v4

    .line 1349
    .local v4, "localIp":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1350
    :cond_0
    const/4 v6, 0x0

    .line 1386
    :goto_0
    return-object v6

    .line 1352
    :cond_1
    const/4 v3, 0x0

    .line 1354
    .local v3, "ip":Ljava/lang/String;
    :try_start_0
    iget-object v6, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-static {v4, v6}, Lali/mmpc/util/VerfCodeGenerator;->getIpFromVerfCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1358
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1359
    const/4 v6, 0x0

    goto :goto_0

    .line 1355
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "focus"

    sget-object v7, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "request exception "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1362
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    .line 1363
    .local v5, "socket":Ljava/net/Socket;
    new-instance v7, Ljava/net/InetSocketAddress;

    const/16 v6, 0x3039

    invoke-direct {v7, v3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    if-eqz p3, :cond_4

    const/16 v6, 0x3e8

    :goto_2
    invoke-virtual {v5, v7, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 1364
    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1366
    :try_start_2
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 10068
    if-eqz v6, :cond_3

    if-nez p2, :cond_5

    .line 1367
    :cond_3
    :goto_3
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Leib;->a(Ljava/io/InputStream;)Lehz;

    move-result-object v2

    .line 1368
    .local v2, "in":Lehz;
    if-nez v2, :cond_6

    .line 1369
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1379
    :try_start_3
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v6, 0x0

    goto :goto_0

    .line 1363
    .end local v2    # "in":Lehz;
    :cond_4
    const/16 v6, 0x2710

    goto :goto_2

    .line 10071
    :cond_5
    :try_start_4
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 10096
    iget-object v6, p2, Lehz;->b:[B

    .line 10073
    invoke-virtual {v7, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 10074
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1373
    :catch_1
    move-exception v0

    .line 1374
    .local v0, "e":Ljava/net/SocketTimeoutException;
    :try_start_5
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1379
    :try_start_6
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1386
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    .end local v5    # "socket":Ljava/net/Socket;
    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 10104
    .restart local v2    # "in":Lehz;
    .restart local v5    # "socket":Ljava/net/Socket;
    :cond_6
    :try_start_7
    iget-object v6, v2, Lehz;->a:Ljava/lang/Object;
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1379
    :try_start_8
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 1381
    .end local v2    # "in":Lehz;
    .end local v5    # "socket":Ljava/net/Socket;
    :catch_2
    move-exception v1

    .line 1382
    .local v1, "e1":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_4

    .line 1375
    .end local v1    # "e1":Ljava/net/UnknownHostException;
    .restart local v5    # "socket":Ljava/net/Socket;
    :catch_3
    move-exception v0

    .line 1376
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1379
    :try_start_a
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_4

    .line 1383
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "socket":Ljava/net/Socket;
    :catch_4
    move-exception v0

    .line 1384
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1379
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v6

    :try_start_b
    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    throw v6
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1578
    const-string/jumbo v3, "connectivity"

    .line 1579
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1580
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 1582
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 1583
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1587
    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/utils/NetworkUtils;->getNetWorkType(Landroid/net/NetworkInfo;I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1584
    :catch_0
    move-exception v1

    .line 1585
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    return-object p1
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 451
    const-class v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 453
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :cond_0
    monitor-exit v1

    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(IZ)V
    .locals 6
    .param p1, "num"    # I
    .param p2, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3420
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v2, v3, :cond_1

    .line 18129
    :cond_0
    :goto_0
    return-void

    .line 3423
    :cond_1
    new-instance v0, Legs;

    invoke-direct {v0}, Legs;-><init>()V

    .line 18027
    .local v0, "floatingInfo":Legs;
    iput p1, v0, Legs;->a:I

    .line 3425
    const/4 v1, 0x0

    .line 3426
    .local v1, "floatingState":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v2, v3, :cond_5

    .line 3427
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Legm$e;->dt_focus_local_connecting:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3431
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 18035
    iput-object v1, v0, Legs;->b:Ljava/lang/String;

    .line 3434
    :cond_3
    invoke-static {}, Lehx;->a()Lehx;

    move-result-object v2

    .line 18040
    if-nez v0, :cond_6

    .line 3435
    :cond_4
    :goto_2
    if-eqz p2, :cond_0

    .line 3436
    invoke-static {}, Lehx;->a()Lehx;

    move-result-object v2

    invoke-virtual {v2}, Lehx;->b()Z

    .line 3438
    invoke-static {p0}, Lehy;->a(Landroid/content/Context;)Lehy;

    move-result-object v2

    .line 18120
    iget-object v3, v2, Lehy;->b:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 18124
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v2, Lehy;->b:Landroid/content/Context;

    const-class v5, Lcom/alibaba/android/projection/manager/FocusNotificationService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18125
    iget-object v2, v2, Lehy;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18126
    :catch_0
    move-exception v2

    .line 18127
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 18128
    const-string/jumbo v2, "focus"

    sget-object v3, Lehy;->a:Ljava/lang/String;

    const-string/jumbo v4, "Start notification exp"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3428
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v2, v3, :cond_2

    .line 3429
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Legm$e;->dt_projection_projecting_title:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 18043
    :cond_6
    iput-object v0, v2, Lehx;->d:Legs;

    .line 18044
    iget-boolean v3, v2, Lehx;->a:Z

    if-eqz v3, :cond_4

    iget-object v3, v2, Lehx;->b:Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    if-eqz v3, :cond_4

    .line 18045
    iget-object v3, v2, Lehx;->c:Landroid/os/Handler;

    new-instance v4, Lehx$1;

    invoke-direct {v4, v2}, Lehx$1;-><init>(Lehx;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private a(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 716
    if-eqz p1, :cond_2

    .line 717
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 718
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 720
    const-wide/16 v6, 0x0

    :try_start_0
    iput-wide v6, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ad:J

    .line 721
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ae:Ljava/lang/String;

    .line 722
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->af:Ljava/lang/String;

    .line 723
    const-string/jumbo v5, "devuid"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "devUidStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 725
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ad:J

    .line 728
    :cond_0
    const-string/jumbo v5, "castCode"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "castCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 730
    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ae:Ljava/lang/String;

    .line 733
    :cond_1
    const-string/jumbo v5, "ssid"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 734
    .local v3, "ssid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 735
    iput-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->af:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    .end local v0    # "castCode":Ljava/lang/String;
    .end local v1    # "devUidStr":Ljava/lang/String;
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 738
    .restart local v4    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 739
    .local v2, "e":Ljava/lang/Exception;
    iput-wide v8, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ad:J

    .line 740
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 8
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x2

    .line 3458
    if-nez p1, :cond_0

    .line 3500
    :goto_0
    return-void

    .line 3462
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 3463
    .local v5, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 3464
    .local v1, "height":I
    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {p0, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 3466
    .local v2, "marginTop":I
    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 3467
    .local v3, "sizeAnimator":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$62;

    invoke-direct {v6, p0, p1, v5, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$62;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Landroid/view/View;II)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3481
    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 3482
    .local v4, "topAnimator":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$63;

    invoke-direct {v6, p0, p1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$63;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Landroid/view/View;I)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3495
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3496
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3497
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3498
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3499
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 3466
    .line 3481
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f147ae1    # 0.58f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f2b851f    # 0.67f
    .end array-data
.end method

.method private a(Lcma;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1591
    .local p1, "callbacks":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-string/jumbo v0, "focus"

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Check dynamic so executed netWorkState: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1592
    invoke-static {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1591
    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v1

    const-string/jumbo v2, "pwp_client"

    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcma;)V

    const-class v3, Lcjn$a;

    .line 1594
    invoke-static {v0, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjn$a;

    .line 1593
    invoke-virtual {v1, v2, v0}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    .line 1638
    return-void
.end method

.method private a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)V
    .locals 12
    .param p1, "localStatus"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;
    .param p2, "remoteStatus"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2002
    if-nez p1, :cond_0

    .line 2111
    :goto_0
    return-void

    .line 2005
    :cond_0
    const-string/jumbo v3, "focus"

    sget-object v4, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "updateUIByStatus "

    aput-object v6, v5, v8

    .line 2006
    invoke-virtual {p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const-string/jumbo v6, ","

    aput-object v6, v5, v11

    const/4 v6, 0x3

    invoke-virtual {p2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2005
    invoke-static {v3, v4, v5}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-eq p1, v3, :cond_1

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne p1, v3, :cond_5

    .line 2010
    :cond_1
    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne p1, v3, :cond_4

    .line 2011
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    sget v4, Legm$b;->focus_btn_bg_blue:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2012
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Legm$e;->dt_focus_local_connecting:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2013
    .local v1, "connecting":Ljava/lang/String;
    new-array v3, v11, [Ljava/lang/String;

    aput-object v1, v3, v8

    const-string/jumbo v4, "..."

    aput-object v4, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2014
    .local v2, "connectingStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2019
    .end local v1    # "connecting":Ljava/lang/String;
    .end local v2    # "connectingStr":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->B:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 2020
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->E:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Legm$a;->ui_common_content_fg_color_alpha_12:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 2021
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Legm$a;->ui_common_content_fg_color_alpha_12:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2031
    :goto_2
    const/4 v0, 0x0

    .line 2032
    .local v0, "castCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v3, v3, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2033
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v0, v3, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 2035
    :cond_2
    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2036
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 2037
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    .line 2040
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-nez v3, :cond_6

    .line 2041
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->o:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2042
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->n:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2016
    .end local v0    # "castCode":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    sget v4, Legm$b;->focus_btn_bg_red:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2017
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->K:Landroid/widget/TextView;

    sget v4, Legm$e;->dt_projection_stop:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2023
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->K:Landroid/widget/TextView;

    sget v4, Legm$e;->dt_projection_start:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2024
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    sget v4, Legm$b;->focus_btn_bg_blue:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2026
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->B:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 2027
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->E:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Legm$a;->txt_color_blue_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2028
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Legm$a;->txt_color_blue_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 2044
    .restart local v0    # "castCode":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->o:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2045
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->n:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2046
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->w:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2049
    :cond_7
    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne p1, v3, :cond_c

    .line 2050
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 2051
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    .line 2057
    :goto_3
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-eqz v3, :cond_8

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne p1, v3, :cond_8

    .line 2059
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    iget-object v4, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a(Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    .line 2062
    :cond_8
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->o:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_d

    .line 2063
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->q:Landroid/widget/ImageView;

    new-instance v4, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$27;

    invoke-direct {v4, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$27;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-direct {p0, v3, v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    .line 2091
    :goto_4
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2092
    :cond_9
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->x:Landroid/widget/ListView;

    invoke-virtual {v3, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2094
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->z:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v4, Legm$e;->icon_roundadd:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 2095
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->A:Landroid/widget/TextView;

    sget v4, Legm$e;->dt_focus_add_extra_content:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2103
    :goto_5
    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-eq p1, v3, :cond_b

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-eq p2, v3, :cond_a

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne p2, v3, :cond_f

    :cond_a
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    .line 2105
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2106
    :cond_b
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->y:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2053
    :cond_c
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 2054
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3

    .line 2087
    :cond_d
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->n:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2088
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->w:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 2097
    :cond_e
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->x:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2099
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->z:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v4, Legm$e;->icon_roundreduce:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 2100
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->A:Landroid/widget/TextView;

    sget v4, Legm$e;->dt_focus_del_extra_content:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 2108
    :cond_f
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->y:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;IZ)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcma;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Lcma;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcma;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;
    .param p2, "x2"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Lcom/alibaba/android/projection/data/FocusDeviceObject;
    .param p2, "x2"    # Z

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/data/FocusDeviceObject;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;ZI)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 172
    .line 37380
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->T:Lehw;

    if-nez v0, :cond_0

    .line 37381
    :goto_0
    return-void

    .line 37383
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/projection_devices"

    new-instance v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$61;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$61;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;ZI)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;ZZ)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 172
    .line 38379
    if-eqz p1, :cond_2

    .line 38380
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 38387
    :goto_0
    iget-object v0, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    .line 38388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38389
    iget-object v0, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 38391
    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38392
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v4, Legm$e;->dt_focus_device_disconnect_title:I

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 38393
    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38395
    if-eqz p2, :cond_3

    .line 38396
    sget v0, Legm$e;->and_focus_local_disconnect_exp:I

    .line 38400
    :goto_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v4, v0, v6}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 38401
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Legm$e;->dt_common_i_know:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    .line 38403
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(ZLcom/alibaba/android/projection/data/FocusDeviceObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_1
    return-void

    .line 38382
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 38383
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-object v2, v0

    goto :goto_0

    .line 38398
    :cond_3
    sget v0, Legm$e;->and_focus_local_disconnect:I

    goto :goto_1

    :cond_4
    move-object v2, v3

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/projection/data/FocusDeviceObject;)V
    .locals 5
    .param p1, "deviceObject"    # Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 2813
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-eq v0, v1, :cond_2

    .line 2815
    :cond_0
    const-string/jumbo v0, "focus"

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "Invalid selected devices for remote"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14747
    :cond_1
    :goto_0
    return-void

    .line 2818
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aq:J

    .line 2820
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-eq v0, v1, :cond_3

    .line 2821
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 2822
    invoke-direct {p0, v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Z)V

    .line 14743
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v0, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 14744
    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_5

    .line 14746
    :cond_4
    invoke-direct {p0, v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Z)V

    goto :goto_0

    .line 14749
    :cond_5
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 14750
    if-eqz v0, :cond_1

    .line 14751
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/projection/data/FocusDeviceObject;Z)V
    .locals 11
    .param p1, "object"    # Lcom/alibaba/android/projection/data/FocusDeviceObject;
    .param p2, "autoStart"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x2

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2672
    if-nez p1, :cond_1

    .line 2673
    sget v0, Legm$e;->dt_focus_input_projector_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 13022
    :cond_0
    :goto_0
    return-void

    .line 2676
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ap:J

    .line 2677
    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v1, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->setLength(I)V

    .line 2679
    if-eqz p2, :cond_3

    .line 2681
    iget-wide v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ad:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ad:J

    iget-wide v2, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2682
    new-instance v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-direct {v0, p1}, Lcom/alibaba/android/projection/data/FocusDeviceObject;-><init>(Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 2683
    invoke-static {}, Legr;->a()Legr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 11044
    iput-object v1, v0, Legr;->b:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 2684
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    if-eqz v0, :cond_2

    .line 2685
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    sget-object v1, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->EDITABLE:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    iput-object v1, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    .line 2686
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v1, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->setCastCode(Ljava/lang/String;)V

    .line 2687
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a(Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    .line 2689
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2690
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 2694
    :cond_3
    const-string/jumbo v1, "focus"

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "Create local projection"

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-eq v1, v2, :cond_4

    .line 2696
    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 2697
    invoke-static {}, Legr;->a()Legr;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 12036
    iput-object v2, v1, Legr;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 2699
    :cond_4
    invoke-direct {p0, v7}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Z)V

    .line 2701
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2702
    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 2703
    invoke-direct {p0, v6}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Z)V

    .line 2706
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)V

    .line 13020
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q:Lali/mmpc/pwp/PwpClient;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 13021
    :cond_6
    const-string/jumbo v0, "focus"

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "startProjectorFailed errorDesc=device fail"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13024
    :cond_7
    const-string/jumbo v1, "focus"

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "startProjector device "

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/alibaba/android/projection/data/FocusDeviceObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13044
    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->W:Legw;

    .line 13045
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->X:J

    .line 13047
    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 13048
    new-instance v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$55;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$55;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 13027
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q:Lali/mmpc/pwp/PwpClient;

    iget-object v2, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->S:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    iget-object v4, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->R:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    invoke-virtual {v1, v2, v3, v4}, Lali/mmpc/pwp/PwpClient;->requestProjection(Ljava/lang/String;Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;Lali/mmpc/pwp/PwpClient$CODEC_TYPE;)I

    move-result v1

    .line 13028
    if-nez v1, :cond_8

    .line 13029
    const-string/jumbo v1, "focus"

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "startProjectorSuccess"

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13034
    :goto_1
    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_ShareReq:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    iput-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ab:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    .line 14016
    new-array v1, v10, [Ljava/lang/String;

    const-string/jumbo v2, "android"

    aput-object v2, v1, v6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13952
    iput-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ac:Ljava/lang/String;

    .line 13954
    new-instance v1, Legz;

    invoke-direct {v1}, Legz;-><init>()V

    .line 13955
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Legz;->a:Ljava/lang/Long;

    .line 13956
    cmp-long v2, v8, v8

    if-gtz v2, :cond_9

    :goto_2
    iput-object v0, v1, Legz;->b:Ljava/lang/Long;

    .line 13957
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Legz;->c:Ljava/lang/Integer;

    .line 13958
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ac:Ljava/lang/String;

    iput-object v0, v1, Legz;->d:Ljava/lang/String;

    .line 13959
    iget-boolean v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ah:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Legz;->e:Ljava/lang/Boolean;

    .line 13960
    iput-boolean v6, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ah:Z

    .line 13961
    const-string/jumbo v0, "focus"

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "createSessionId"

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13962
    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;

    invoke-direct {v0, p0, p1, v6}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;Z)V

    invoke-static {v1, v0}, Lehu;->a(Legz;Lcma;)V

    .line 13037
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->as:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 13038
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->as:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13039
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->as:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 13031
    :cond_8
    const-string/jumbo v2, "focus"

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startProjectorFailed errorCode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 13956
    :cond_9
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 8
    .param p1, "reson"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 330
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q:Lali/mmpc/pwp/PwpClient;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q:Lali/mmpc/pwp/PwpClient;

    invoke-virtual {v1}, Lali/mmpc/pwp/PwpClient;->stopScreenCapture()I

    move-result v0

    .line 332
    .local v0, "result":I
    if-nez v0, :cond_1

    .line 333
    const-string/jumbo v1, "focus"

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "stopProjectorSuccess reson="

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .end local v0    # "result":I
    :cond_0
    :goto_0
    return-void

    .line 335
    .restart local v0    # "result":I
    :cond_1
    const-string/jumbo v1, "focus"

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "stopProjectorFailed: errorCode="

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string/jumbo v4, ",reson="

    aput-object v4, v3, v7

    const/4 v4, 0x3

    aput-object p1, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .prologue
    .line 3548
    invoke-static {p0, p1, p2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3549
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    if-eqz v0, :cond_1

    .line 3550
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v0

    const v1, 0x19000

    if-le v0, v1, :cond_0

    .line 3551
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const/16 v1, 0x2800

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v2

    add-int/lit16 v2, v2, -0x400

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->delete(II)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3553
    :cond_0
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcog;->q(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3554
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3555
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3556
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3558
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 12
    .param p1, "showWifiNotWork"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 489
    iget-object v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->i:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 493
    .local v6, "wm":Landroid/net/wifi/WifiManager;
    const/4 v2, 0x0

    .line 494
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_2

    .line 496
    :try_start_0
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 502
    :cond_2
    :goto_1
    if-eqz v2, :cond_12

    invoke-static {p0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 503
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "userWifi":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 505
    const-string/jumbo v7, "\""

    const-string/jumbo v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "<unknown ssid>"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 507
    :cond_3
    iget-object v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->j:I

    .line 509
    sget v7, Legm$e;->dt_focus_wifi_not_good:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, "wifiNotGood":Ljava/lang/String;
    sget v7, Legm$e;->dt_focus_wifi_not_work:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, "wifiNotWork":Ljava/lang/String;
    iget v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->j:I

    if-gtz v7, :cond_6

    iget v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->j:I

    const/16 v8, -0x32

    if-lt v7, v8, :cond_6

    .line 513
    iget-boolean v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->k:Z

    if-nez v7, :cond_4

    if-eqz p1, :cond_4

    .line 514
    invoke-static {v5}, Lcms;->a(Ljava/lang/String;)V

    .line 516
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-boolean v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->k:Z

    if-eqz v7, :cond_5

    sget v7, Legm$b;->wifi_full:I

    :goto_2
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 538
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-object v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->i:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v10

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 540
    iget-object v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 541
    iget-object v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Legm$a;->blue_100:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 497
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "userWifi":Ljava/lang/String;
    .end local v4    # "wifiNotGood":Ljava/lang/String;
    .end local v5    # "wifiNotWork":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 498
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 516
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "userWifi":Ljava/lang/String;
    .restart local v4    # "wifiNotGood":Ljava/lang/String;
    .restart local v5    # "wifiNotWork":Ljava/lang/String;
    :cond_5
    sget v7, Legm$b;->wifi_off_01:I

    goto :goto_2

    .line 517
    :cond_6
    iget v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->j:I

    const/16 v8, -0x32

    if-ge v7, v8, :cond_9

    iget v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->j:I

    const/16 v8, -0x41

    if-lt v7, v8, :cond_9

    .line 518
    iget-boolean v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->k:Z

    if-nez v7, :cond_7

    if-eqz p1, :cond_7

    .line 519
    invoke-static {v5}, Lcms;->a(Ljava/lang/String;)V

    .line 521
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-boolean v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->k:Z

    if-eqz v7, :cond_8

    sget v7, Legm$b;->wifi_2:I

    :goto_4
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    sget v7, Legm$b;->wifi_off_02:I

    goto :goto_4

    .line 522
    :cond_9
    iget v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->j:I

    const/16 v8, -0x41

    if-ge v7, v8, :cond_c

    iget v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->j:I

    const/16 v8, -0x50

    if-lt v7, v8, :cond_c

    .line 523
    if-nez p1, :cond_a

    .line 524
    const/4 v7, 0x1

    invoke-static {v4, v7}, Lcms;->a(Ljava/lang/String;I)V

    .line 526
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-boolean v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->k:Z

    if-eqz v7, :cond_b

    sget v7, Legm$b;->wifi_3:I

    :goto_5
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_b
    sget v7, Legm$b;->wifi_off_03:I

    goto :goto_5

    .line 527
    :cond_c
    iget v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->j:I

    const/16 v8, -0x50

    if-ge v7, v8, :cond_f

    iget v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->j:I

    const/16 v8, -0x64

    if-lt v7, v8, :cond_f

    .line 528
    if-nez p1, :cond_d

    .line 529
    const/4 v7, 0x1

    invoke-static {v4, v7}, Lcms;->a(Ljava/lang/String;I)V

    .line 531
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-boolean v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->k:Z

    if-eqz v7, :cond_e

    sget v7, Legm$b;->wifi_empty:I

    :goto_6
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_e
    sget v7, Legm$b;->wifi_off_04:I

    goto :goto_6

    .line 533
    :cond_f
    if-nez p1, :cond_10

    .line 534
    const/4 v7, 0x1

    invoke-static {v4, v7}, Lcms;->a(Ljava/lang/String;I)V

    .line 536
    :cond_10
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-boolean v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->k:Z

    if-eqz v7, :cond_11

    sget v7, Legm$b;->wifi_empty:I

    :goto_7
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_11
    sget v7, Legm$b;->wifi_off_04:I

    goto :goto_7

    .line 543
    .end local v3    # "userWifi":Ljava/lang/String;
    .end local v4    # "wifiNotGood":Ljava/lang/String;
    .end local v5    # "wifiNotWork":Ljava/lang/String;
    :cond_12
    iget-object v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->i:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h:Landroid/widget/TextView;

    sget v8, Legm$e;->dt_focus_wifi_not_connect:I

    invoke-virtual {p0, v8}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Legm$a;->blue_100:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 546
    iget-object v7, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private a(ZLcom/alibaba/android/projection/data/FocusDeviceObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "beLocal"    # Z
    .param p2, "deviceObject"    # Lcom/alibaba/android/projection/data/FocusDeviceObject;
    .param p3, "positiveBtn"    # Ljava/lang/String;
    .param p4, "negativeBtn"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2471
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2515
    :cond_0
    :goto_0
    return-void

    .line 2474
    :cond_1
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2475
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2476
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2477
    invoke-virtual {v0, p5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2479
    :cond_2
    invoke-virtual {v0, p6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2480
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2481
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$37;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$37;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Lcom/alibaba/android/projection/data/FocusDeviceObject;Z)V

    invoke-virtual {v0, p3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2506
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2507
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$38;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$38;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, p4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2513
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a(Z)Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;Z)V
    .locals 19
    .param p1, "success"    # Z
    .param p2, "errorReson"    # Ljava/lang/String;
    .param p3, "showDialog"    # Z

    .prologue
    .line 3169
    new-instance v5, Leha;

    invoke-direct {v5}, Leha;-><init>()V

    .line 3170
    .local v5, "indicationModel":Leha;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ac:Ljava/lang/String;

    iput-object v14, v5, Leha;->a:Ljava/lang/String;

    .line 3171
    if-eqz p1, :cond_8

    const/4 v14, 0x0

    :goto_0
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v5, Leha;->b:Ljava/lang/Integer;

    .line 3172
    invoke-static {}, Lali/mmpc/util/AdResourceUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Leha;->d:Ljava/lang/String;

    .line 3173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-eqz v14, :cond_0

    .line 3174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v14, v14, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    iput-object v14, v5, Leha;->g:Ljava/lang/String;

    .line 3176
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->W:Legw;

    if-eqz v14, :cond_1

    .line 3177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->W:Legw;

    iget v14, v14, Legw;->b:I

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v5, Leha;->f:Ljava/lang/Long;

    .line 3179
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v14, v14, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    iget-object v14, v5, Leha;->d:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 3181
    :try_start_0
    iget-object v14, v5, Leha;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v15, v15, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-static {v14, v15}, Lali/mmpc/util/VerfCodeGenerator;->getIpFromVerfCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Leha;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3187
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string/jumbo v15, "wifi"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 3189
    .local v13, "wm":Landroid/net/wifi/WifiManager;
    const/4 v6, 0x0

    .line 3190
    .local v6, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v13, :cond_3

    .line 3192
    :try_start_1
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 3198
    :cond_3
    :goto_2
    new-instance v12, Lehl;

    invoke-direct {v12}, Lehl;-><init>()V

    .line 3199
    .local v12, "wifiEnvInfo":Lehl;
    iput-object v12, v5, Leha;->j:Lehl;

    .line 3200
    const/4 v14, 0x1

    iput-boolean v14, v12, Lehl;->a:Z

    .line 3201
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcms;->j(Landroid/content/Context;)Z

    move-result v14

    iput-boolean v14, v12, Lehl;->b:Z

    .line 3202
    iget-boolean v14, v12, Lehl;->b:Z

    if-eqz v14, :cond_4

    .line 3203
    invoke-static {v13}, Lcom/alibaba/android/projection/utils/WifiUtil;->a(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 3204
    .local v2, "apConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_4

    .line 3205
    new-instance v7, Legy;

    invoke-direct {v7}, Legy;-><init>()V

    .line 3206
    .local v7, "model":Legy;
    iget-object v14, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v14, v7, Legy;->b:Ljava/lang/String;

    .line 3207
    iget-object v14, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v14, v7, Legy;->a:Ljava/lang/String;

    .line 3208
    iput-object v7, v12, Lehl;->c:Legy;

    .line 3212
    .end local v2    # "apConfiguration":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "model":Legy;
    :cond_4
    invoke-static {}, Lcom/alibaba/android/projection/utils/WifiUtil;->a()Z

    move-result v14

    iput-boolean v14, v12, Lehl;->e:Z

    .line 3214
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v14

    if-nez v14, :cond_9

    .line 3215
    const/4 v14, 0x0

    iput-boolean v14, v12, Lehl;->g:Z

    .line 3243
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ar:Z

    iput-boolean v14, v12, Lehl;->h:Z

    .line 3245
    new-instance v9, Lehg;

    invoke-direct {v9}, Lehg;-><init>()V

    .line 3246
    .local v9, "projectionInfo":Lehg;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ap:J

    iput-wide v14, v9, Lehg;->a:J

    .line 3247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v9, Lehg;->b:J

    .line 3248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->W:Legw;

    if-eqz v14, :cond_c

    .line 3249
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->X:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ap:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-int v14, v14

    iput v14, v9, Lehg;->e:I

    .line 3250
    const/4 v14, 0x1

    iput v14, v9, Lehg;->f:I

    .line 3258
    :goto_4
    move-object/from16 v0, p2

    iput-object v0, v9, Lehg;->d:Ljava/lang/String;

    .line 3259
    iput-object v9, v5, Leha;->k:Lehg;

    .line 3261
    if-eqz v6, :cond_7

    .line 3262
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Leha;->c:Ljava/lang/String;

    .line 3263
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Leha;->h:Ljava/lang/String;

    .line 3264
    iget-object v14, v5, Leha;->h:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 3265
    iget-object v14, v5, Leha;->h:Ljava/lang/String;

    const-string/jumbo v15, "\""

    const-string/jumbo v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "<unknown ssid>"

    const-string/jumbo v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Leha;->h:Ljava/lang/String;

    .line 3267
    :cond_6
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Leha;->i:Ljava/lang/String;

    .line 3269
    :cond_7
    const-string/jumbo v14, "focus"

    sget-object v15, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "upload status "

    aput-object v18, v16, v17

    const/16 v17, 0x1

    iget-object v0, v5, Leha;->d:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string/jumbo v18, ":"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    iget-object v0, v5, Leha;->e:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    .line 3270
    invoke-static/range {v16 .. v16}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3269
    invoke-static/range {v14 .. v16}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    new-instance v14, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v14, v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V

    const-class v15, Lcma;

    move-object/from16 v0, p0

    invoke-static {v14, v15, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcma;

    invoke-static {v5, v14}, Lehu;->a(Leha;Lcma;)V

    .line 3308
    return-void

    .line 3171
    .end local v6    # "info":Landroid/net/wifi/WifiInfo;
    .end local v9    # "projectionInfo":Lehg;
    .end local v12    # "wifiEnvInfo":Lehl;
    .end local v13    # "wm":Landroid/net/wifi/WifiManager;
    :cond_8
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 3193
    .restart local v6    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v13    # "wm":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v3

    .line 3194
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 3217
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v12    # "wifiEnvInfo":Lehl;
    :cond_9
    const/4 v14, 0x1

    iput-boolean v14, v12, Lehl;->g:Z

    .line 3218
    const/4 v11, 0x0

    .line 3220
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :try_start_2
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    .line 3224
    :goto_5
    if-eqz v11, :cond_5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 3225
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3228
    .local v8, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lehm;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_b

    .line 3229
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 3230
    .local v10, "result":Landroid/net/wifi/ScanResult;
    if-eqz v10, :cond_a

    .line 3232
    new-instance v7, Lehm;

    invoke-direct {v7}, Lehm;-><init>()V

    .line 3233
    .local v7, "model":Lehm;
    iget-object v14, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v14, v7, Lehm;->a:Ljava/lang/String;

    .line 3234
    new-instance v14, Ljava/util/ArrayList;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v14, v7, Lehm;->b:Ljava/util/ArrayList;

    .line 3235
    iget-object v14, v7, Lehm;->b:Ljava/util/ArrayList;

    iget-object v15, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3236
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3228
    .end local v7    # "model":Lehm;
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3221
    .end local v4    # "i":I
    .end local v8    # "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lehm;>;"
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    :catch_1
    move-exception v3

    .line 3222
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 3238
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "i":I
    .restart local v8    # "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lehm;>;"
    :cond_b
    iput-object v8, v12, Lehl;->f:Ljava/util/ArrayList;

    goto/16 :goto_3

    .line 3251
    .end local v4    # "i":I
    .end local v8    # "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lehm;>;"
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v9    # "projectionInfo":Lehg;
    :cond_c
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->X:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_d

    .line 3252
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->X:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ap:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-int v14, v14

    iput v14, v9, Lehg;->e:I

    .line 3253
    const/4 v14, 0x2

    iput v14, v9, Lehg;->f:I

    goto/16 :goto_4

    .line 3255
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ap:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-int v14, v14

    iput v14, v9, Lehg;->e:I

    .line 3256
    const/4 v14, 0x0

    iput v14, v9, Lehg;->f:I

    goto/16 :goto_4

    .end local v6    # "info":Landroid/net/wifi/WifiInfo;
    .end local v9    # "projectionInfo":Lehg;
    .end local v12    # "wifiEnvInfo":Lehl;
    .end local v13    # "wm":Landroid/net/wifi/WifiManager;
    :catch_2
    move-exception v14

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)Legw;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .prologue
    .line 172
    .line 38952
    new-instance v0, Lehz;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lehz;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/data/FocusDeviceObject;Lehz;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legw;

    .line 172
    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1504
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1541
    :goto_0
    return-void

    .line 1507
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e()V

    .line 1508
    new-instance v1, Legt;

    invoke-direct {v1, p1}, Legt;-><init>(Ljava/lang/String;)V

    .line 1509
    .local v1, "destObj":Legt;
    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1510
    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 1511
    .local v4, "size":I
    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1512
    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 1513
    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1520
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1529
    .end local v4    # "size":I
    :cond_2
    :goto_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1530
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 1531
    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Legt;

    .line 1532
    .local v3, "recordObject":Legt;
    if-nez v3, :cond_7

    .line 1530
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1517
    .end local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v2    # "i":I
    .end local v3    # "recordObject":Legt;
    .restart local v4    # "size":I
    :cond_4
    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    .line 1518
    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1523
    .end local v4    # "size":I
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    if-nez v5, :cond_6

    .line 1524
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    .line 1526
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11023
    .restart local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v2    # "i":I
    .restart local v3    # "recordObject":Legt;
    :cond_7
    iget-object v5, v3, Legt;->a:Ljava/lang/String;

    .line 1535
    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1536
    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_3

    .line 1537
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_4

    .line 1540
    .end local v3    # "recordObject":Legt;
    :cond_8
    const-string/jumbo v5, "focus_key_projection_recents"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private b(Z)V
    .locals 2
    .param p1, "beLocal"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2114
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$28;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$28;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2151
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "nick"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x6

    const/4 v3, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2207
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2208
    const/4 v0, 0x0

    .line 2228
    :cond_0
    :goto_0
    return-object v0

    .line 2210
    :cond_1
    move-object v0, p0

    .line 2212
    .local v0, "formatNick":Ljava/lang/String;
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v1

    .line 2213
    .local v1, "lang":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_2

    .line 2214
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2216
    :cond_2
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2218
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_0

    .line 2219
    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, "..."

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2223
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_0

    .line 2224
    new-array v2, v6, [Ljava/lang/String;

    const/16 v3, 0xc

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, "..."

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 3
    .param p1, "showLoading"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 2154
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2155
    if-eqz p1, :cond_0

    .line 2156
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2157
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2159
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2160
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2170
    :goto_0
    return-void

    .line 2162
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2163
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2165
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2166
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2168
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)Legw;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .prologue
    .line 172
    .line 42392
    new-instance v0, Lehz;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lehz;-><init>(ILjava/lang/Object;)V

    .line 43344
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/data/FocusDeviceObject;Lehz;Z)Ljava/lang/Object;

    move-result-object v0

    .line 42392
    check-cast v0, Legw;

    .line 172
    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ae:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1323
    iget-boolean v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->an:Z

    if-eqz v0, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1325
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->C:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1326
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->F:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1327
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1334
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->S:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    sget-object v1, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->FLUENCY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    if-ne v0, v1, :cond_2

    .line 1335
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->D:Landroid/widget/TextView;

    sget v1, Legm$e;->dt_lv_live_bit_rate_2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1336
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->H:Landroid/widget/TextView;

    sget v1, Legm$e;->dt_lv_live_bit_rate_2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1341
    :cond_0
    :goto_1
    return-void

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1330
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->C:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1331
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->F:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1332
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->G:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1337
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->S:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    sget-object v1, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->CLARITY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    if-ne v0, v1, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->D:Landroid/widget/TextView;

    sget v1, Legm$e;->dt_lv_live_bit_rate_4:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1339
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->H:Landroid/widget/TextView;

    sget v1, Legm$e;->dt_lv_live_bit_rate_4:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2900
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v2, v3, :cond_0

    .line 2938
    :goto_0
    return-void

    .line 2903
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "focus_start_click_fail"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2905
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2906
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "resolution"

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->S:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    sget-object v4, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->FLUENCY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    if-ne v2, v4, :cond_2

    const-string/jumbo v2, "1"

    :goto_1
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2907
    const-string/jumbo v2, "is_succ"

    const-string/jumbo v3, "0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2908
    const-string/jumbo v2, "result"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2909
    const-string/jumbo v2, "_field_event_id"

    const-string/jumbo v3, "2101"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2910
    const-string/jumbo v2, "log_ding_version"

    const-string/jumbo v3, "1.0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2911
    const-string/jumbo v2, "device_type"

    const-string/jumbo v3, "focus"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2912
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "Page_Focus_set_focus_code"

    const-string/jumbo v4, "Page_Focus_set_focus_code_submit_click_result"

    invoke-interface {v2, v3, v4, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2914
    const-string/jumbo v2, "failed"

    const-string/jumbo v3, "a2q0r.11900331.1.failed"

    invoke-static {v6, v2, v0, v3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 2916
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h()V

    .line 2917
    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_ShareFail:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    iput-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ab:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    .line 2918
    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 2919
    invoke-static {}, Legr;->a()Legr;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 17036
    iput-object v3, v2, Legr;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 2920
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-eq v2, v3, :cond_1

    .line 2921
    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 2923
    :cond_1
    iput-object v6, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e:Lehb;

    .line 2924
    const/4 v2, 0x1

    invoke-direct {p0, v5, p1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(ZLjava/lang/String;Z)V

    .line 2925
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->i()V

    .line 2926
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->j()V

    .line 2929
    new-instance v1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;

    invoke-direct {v1}, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;-><init>()V

    .line 2930
    .local v1, "timeoutAction":Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;
    sget-object v2, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->TYPE_PRJ_LOCAL_FAIL:Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    iput-object v2, v1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;->b:Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    .line 2931
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ac:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, ""

    :goto_2
    iput-object v2, v1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;->a:Ljava/lang/String;

    .line 2932
    iget-wide v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ap:J

    iput-wide v2, v1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;->c:J

    .line 2933
    iput-object p1, v1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;->d:Ljava/lang/String;

    .line 2934
    invoke-static {}, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->a()Lcom/alibaba/android/projection/manager/FocusAlarmManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->a(Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;)V

    .line 2936
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aj:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ac:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Leic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2937
    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v2, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 2906
    .end local v1    # "timeoutAction":Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;
    :cond_2
    const-string/jumbo v2, "2"

    goto/16 :goto_1

    .line 2931
    .restart local v1    # "timeoutAction":Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ac:Ljava/lang/String;

    goto :goto_2
.end method

.method private d(Z)V
    .locals 3
    .param p1, "validSysVersion"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2173
    if-eqz p1, :cond_0

    .line 2174
    invoke-direct {p0, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Z)V

    .line 2175
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)V

    .line 2176
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Z)V

    .line 2177
    invoke-direct {p0, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Z)V

    .line 2185
    :goto_0
    return-void

    .line 2179
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2181
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2182
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2183
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ag:Z

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->af:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1482
    const-string/jumbo v5, "focus_key_projection_recents"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1483
    .local v1, "castCodsStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1484
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, "castCodes":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v5, v0

    if-lez v5, :cond_2

    .line 1486
    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    if-nez v5, :cond_1

    .line 1487
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    .line 1491
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 1492
    aget-object v2, v0, v3

    .line 1493
    .local v2, "code":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1496
    new-instance v4, Legt;

    invoke-direct {v4, v2}, Legt;-><init>(Ljava/lang/String;)V

    .line 1497
    .local v4, "recordObject":Legt;
    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1491
    .end local v4    # "recordObject":Legt;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1489
    .end local v2    # "code":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1501
    .end local v0    # "castCodes":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .prologue
    .line 172
    .line 44082
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-wide v0, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 44083
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Z)V

    .line 44084
    :cond_1
    :goto_0
    return-void

    .line 44086
    :cond_2
    new-instance v0, Lehh;

    invoke-direct {v0}, Lehh;-><init>()V

    .line 44087
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ac:Ljava/lang/String;

    iput-object v1, v0, Lehh;->b:Ljava/lang/String;

    .line 44088
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-wide v2, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lehh;->c:Ljava/lang/Long;

    .line 44089
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lehh;->a:Ljava/lang/Long;

    .line 44090
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lehh;->d:Ljava/util/List;

    .line 44091
    iget-object v1, v0, Lehh;->d:Ljava/util/List;

    iget-wide v2, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44093
    const-string/jumbo v1, "focus"

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", createRemoteProjection device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", will call remoteShareCreate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44094
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$57;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$57;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-static {v0, v1}, Lehu;->a(Lehh;Lcma;)V

    .line 44121
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->at:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 44122
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->at:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44123
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->at:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private e(Z)V
    .locals 6
    .param p1, "beLocal"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 2188
    const/4 v1, 0x0

    .line 2189
    .local v1, "deviceObject":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    if-eqz p1, :cond_3

    .line 2190
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 2194
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    .line 2195
    .local v0, "deviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2196
    iget-object v0, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 2199
    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2200
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "\u300c"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "\u300d"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 2202
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Legm$e;->dt_focus_projection_disconnect:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2201
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2200
    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 2204
    :cond_2
    return-void

    .line 2191
    .end local v0    # "deviceName":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2192
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "deviceObject":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    check-cast v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .restart local v1    # "deviceObject":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->k:Z

    return p1
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 3
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3398
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3404
    :cond_0
    :goto_0
    return v0

    .line 3401
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 3404
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1554
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1555
    .local v4, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_2

    .line 1556
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 1557
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    invoke-static {p0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1558
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1559
    .local v3, "userWifi":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1560
    const-string/jumbo v5, "\""

    const-string/jumbo v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "<unknown ssid>"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1573
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    .end local v3    # "userWifi":Ljava/lang/String;
    .end local v4    # "wm":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v3

    .line 1563
    .restart local v2    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v4    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1
    invoke-static {p0}, Lcms;->j(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1564
    invoke-static {v4}, Lcom/alibaba/android/projection/utils/WifiUtil;->a(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1565
    .local v0, "apConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 1566
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1570
    .end local v0    # "apConfiguration":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    .end local v4    # "wm":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .line 1571
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "focus"

    sget-object v6, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "getSsid:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .prologue
    .line 172
    .line 45069
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 45070
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$56;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$56;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 172
    .line 36568
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36571
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36572
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36573
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 36574
    sget v1, Legm$e;->dt_common_i_know:I

    new-instance v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$42;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$42;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 36580
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$44;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$44;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    :cond_0
    return-void
.end method

.method private f(Z)V
    .locals 9
    .param p1, "beInvalidUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2828
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 2829
    if-eqz p1, :cond_1

    .line 2830
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2831
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2833
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    invoke-direct {p0, v0, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)V

    .line 15370
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v3, Legm$e;->dt_focus_local_connect_fail_title:I

    invoke-virtual {v0, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 15371
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v3, Legm$e;->dt_focus_same_code_warning:I

    invoke-virtual {v0, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 15372
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v3, Legm$e;->dt_common_i_know:I

    invoke-virtual {v0, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v3, v2

    .line 15374
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(ZLcom/alibaba/android/projection/data/FocusDeviceObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2841
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(IZ)V

    .line 2843
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2844
    .local v7, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "_field_event_id"

    const-string/jumbo v2, "2101"

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2845
    const-string/jumbo v0, "log_ding_version"

    const-string/jumbo v2, "1.0"

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2846
    const-string/jumbo v0, "device_type"

    const-string/jumbo v2, "focus"

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2847
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "Page_Focus_set_focus_code"

    const-string/jumbo v3, "Page_Focus_set_focus_code_remote_failed"

    invoke-interface {v0, v2, v3, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2850
    new-instance v8, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;

    invoke-direct {v8}, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;-><init>()V

    .line 2851
    .local v8, "timeoutAction":Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;
    sget-object v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->TYPE_PRJ_REMOTE_FAIL:Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    iput-object v0, v8, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;->b:Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    .line 2852
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, v8, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;->a:Ljava/lang/String;

    .line 2853
    iget-wide v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aq:J

    iput-wide v2, v8, Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;->c:J

    .line 2854
    invoke-static {}, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->a()Lcom/alibaba/android/projection/manager/FocusAlarmManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/alibaba/android/projection/manager/FocusAlarmManager;->a(Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;)V

    .line 2856
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aj:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ac:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Leic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->setLength(I)V

    .line 2858
    return-void

    .line 2836
    .end local v7    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "timeoutAction":Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;
    :cond_1
    invoke-direct {p0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Z)V

    .line 2837
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)V

    .line 2838
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->g()V

    goto :goto_0

    .line 2852
    .restart local v7    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "timeoutAction":Lcom/alibaba/android/projection/manager/FocusAlarmManager$a;
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ac:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ao:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ak:Ljava/lang/String;

    return-object p1
.end method

.method private g()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 2352
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    .line 2353
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2367
    :cond_0
    :goto_0
    return-void

    .line 2357
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 2358
    .local v2, "device":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2359
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v8, Legm$e;->dt_focus_local_connect_fail_title:I

    invoke-virtual {v0, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2360
    .local v5, "title":Ljava/lang/String;
    iget-object v0, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2361
    .local v7, "nick":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v8, Legm$e;->and_focus_seize_fail:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v1

    invoke-virtual {v0, v8, v9}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2362
    .local v6, "content":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v8, Legm$e;->dt_common_retry:I

    invoke-virtual {v0, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2363
    .local v3, "okBtn":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v8, Legm$e;->dt_common_cancel:I

    invoke-virtual {v0, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "cancelBtn":Ljava/lang/String;
    move-object v0, p0

    .line 2365
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(ZLcom/alibaba/android/projection/data/FocusDeviceObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->g()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Z)V

    return-void
.end method

.method private g(Z)V
    .locals 3
    .param p1, "expEnd"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2861
    if-eqz p1, :cond_1

    .line 2862
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "focus_local_share_breakoff_error"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2866
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h()V

    .line 2867
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v0, v1, :cond_0

    .line 2868
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$51;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$51;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2875
    :cond_0
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 2876
    invoke-static {}, Legr;->a()Legr;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 16036
    iput-object v1, v0, Legr;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 2877
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 2879
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->i()V

    .line 2880
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$52;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$52;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2890
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->j()V

    .line 2892
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Z)V

    .line 2894
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aj:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ac:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Leic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->setLength(I)V

    .line 2896
    return-void

    .line 2864
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "focus_local_share_breakoff_normal"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->S:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    return-object v0
.end method

.method private h()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3128
    new-instance v1, Lehj;

    invoke-direct {v1}, Lehj;-><init>()V

    .line 3129
    .local v1, "terminateModel":Lehj;
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ac:Ljava/lang/String;

    iput-object v2, v1, Lehj;->a:Ljava/lang/String;

    .line 3130
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lehj;->b:Ljava/lang/Long;

    .line 3131
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-wide v2, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 3132
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-wide v2, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lehj;->c:Ljava/lang/Long;

    .line 3134
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lehj;->d:Ljava/util/List;

    .line 3136
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 3137
    .local v0, "device":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    if-eqz v0, :cond_1

    .line 3138
    iget-object v2, v1, Lehj;->d:Ljava/util/List;

    iget-wide v4, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3142
    .end local v0    # "device":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    :cond_1
    const-string/jumbo v2, "focus"

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v4, "terminateProjection "

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    new-instance v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$58;

    invoke-direct {v2, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$58;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-static {v1, v2}, Lehu;->a(Lehj;Lcma;)V

    .line 3165
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 172
    .line 41592
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41595
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41596
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41598
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 41599
    sget v1, Legm$e;->dt_common_i_know:I

    new-instance v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$45;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$45;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 41604
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a(Z)Landroid/support/v7/app/AlertDialog;

    .line 172
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Z)V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ac:Ljava/lang/String;

    return-object p1
.end method

.method private i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3408
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-eqz v1, :cond_0

    .line 3409
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/data/FocusDeviceObject;->reset()V

    .line 3410
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    if-eqz v1, :cond_0

    .line 3411
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->getCastCode()Ljava/lang/String;

    move-result-object v0

    .line 3412
    .local v0, "castCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3413
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 3417
    .end local v0    # "castCode":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    .line 19448
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19449
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Legm$e;->dt_focus_local_connect_fail_title:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 19450
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Legm$e;->dt_focus_projection_code_empty_warn:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 19452
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 19453
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 19454
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 19455
    sget v0, Legm$e;->dt_common_i_know:I

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$36;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$36;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 19461
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 172
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ah:Z

    return v0
.end method

.method private j()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3443
    invoke-static {}, Lehx;->a()Lehx;

    move-result-object v0

    invoke-virtual {v0}, Lehx;->c()Z

    .line 3445
    invoke-static {p0}, Lehy;->a(Landroid/content/Context;)Lehy;

    move-result-object v0

    .line 18133
    iget-object v1, v0, Lehy;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 18142
    :goto_0
    return-void

    .line 18137
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lehy;->b:Landroid/content/Context;

    const-class v3, Lcom/alibaba/android/projection/manager/FocusNotificationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18138
    iget-object v0, v0, Lehy;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18139
    :catch_0
    move-exception v0

    .line 18140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18141
    const-string/jumbo v0, "focus"

    sget-object v1, Lehy;->a:Ljava/lang/String;

    const-string/jumbo v2, "Stop notification exp"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    .line 19712
    const-string/jumbo v0, "focus"

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "stopProjector"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19713
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h()V

    .line 19714
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->T:Lehw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    .line 19715
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19716
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->T:Lehw;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-virtual {v0, v1}, Lehw;->a(Ljava/util/List;)V

    .line 19717
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19719
    :cond_0
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)V

    .line 19720
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Z)V

    .line 19722
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v0, v1, :cond_1

    .line 19724
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$49;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$49;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 19731
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->i()V

    .line 19732
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 19733
    invoke-static {}, Legr;->a()Legr;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 20036
    iput-object v1, v0, Legr;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 19734
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 19736
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->l()V

    .line 19738
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aj:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ac:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Leic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19739
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->setLength(I)V

    .line 172
    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Z)V

    return-void
.end method

.method private k()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 19019
    const-string/jumbo v0, "key_focus_first_enter_floating_warning"

    invoke-static {v0, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 19020
    if-eqz v0, :cond_0

    .line 19021
    const-string/jumbo v1, "key_focus_first_enter_floating_warning"

    invoke-static {v1, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 3449
    :cond_0
    if-eqz v0, :cond_2

    .line 3450
    invoke-static {}, Lcpi;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 19428
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19429
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 19430
    sget v1, Legm$e;->dt_focus_floating_window_warn:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 19431
    sget v1, Legm$e;->dt_conference_nav_to_settings:I

    new-instance v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$34;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$34;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 19437
    sget v1, Legm$e;->dt_common_cancel:I

    new-instance v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$35;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$35;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 19443
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a(Z)Landroid/support/v7/app/AlertDialog;

    .line 3455
    :cond_1
    :goto_0
    return-void

    .line 3454
    :cond_2
    invoke-virtual {p0, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 172
    .line 20609
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20613
    new-instance v0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    invoke-direct {v0, p0, v4}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;-><init>(Landroid/content/Context;Lcom/alibaba/android/projection/widget/AlertMenuDialog$b;)V

    .line 20615
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$e;->dt_focus_rate_2_mode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 20616
    new-instance v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;

    invoke-direct {v2, v4, v1}, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20617
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$46;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$46;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    .line 21223
    iput-object v1, v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 20628
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Legm$e;->dt_focus_rate_4_mode:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 20629
    new-instance v3, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;

    invoke-direct {v3, v4, v1}, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20630
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$47;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$47;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    .line 22223
    iput-object v1, v3, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 20646
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->S:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    sget-object v4, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->FLUENCY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    if-ne v1, v4, :cond_2

    .line 23191
    iput-boolean v6, v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->c:Z

    .line 24191
    iput-boolean v5, v3, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->c:Z

    .line 20653
    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->a(Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;)Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    .line 20654
    invoke-virtual {v0, v3}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->a(Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;)Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    .line 20656
    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->show()V

    .line 172
    :cond_1
    return-void

    .line 20649
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->S:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    sget-object v4, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->CLARITY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    if-ne v1, v4, :cond_0

    .line 25191
    iput-boolean v5, v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->c:Z

    .line 26191
    iput-boolean v6, v3, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->c:Z

    goto :goto_0
.end method

.method private l()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3540
    const-string/jumbo v0, "focus"

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "stop screen on"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3541
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->am:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 3542
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->am:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->am:Landroid/os/PowerManager$WakeLock;

    .line 3545
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    const/4 v3, 0x1

    .line 172
    .line 26662
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_focus_projection_ping_enable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26663
    iput-boolean v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->k:Z

    .line 26664
    :goto_0
    return-void

    .line 26666
    :cond_0
    const-string/jumbo v0, "FocusProjectionPing"

    invoke-static {v0, v3}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$65;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$65;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ag:Z

    return v0
.end method

.method static synthetic n(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ae:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->af:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 172
    .line 26705
    sput-object p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c:Landroid/app/Activity;

    .line 26707
    invoke-static {}, Lehs;->a()Lehs;

    move-result-object v0

    .line 27153
    iget-boolean v1, v0, Lehs;->b:Z

    if-nez v1, :cond_0

    .line 27154
    iput-boolean v3, v0, Lehs;->b:Z

    .line 27156
    :cond_0
    new-instance v0, Leho;

    const/16 v1, 0x96f

    invoke-direct {v0, v1}, Leho;-><init>(I)V

    .line 27157
    new-instance v0, Lehp;

    const/16 v1, 0x970

    invoke-direct {v0, v1}, Lehp;-><init>(I)V

    .line 27158
    new-instance v0, Lehn;

    const/16 v1, 0x971

    invoke-direct {v0, v1}, Lehn;-><init>(I)V

    .line 27159
    new-instance v0, Lehr;

    const/16 v1, 0x972

    invoke-direct {v0, v1}, Lehr;-><init>(I)V

    .line 27160
    new-instance v0, Lehq;

    const/16 v1, 0x973

    invoke-direct {v0, v1}, Lehq;-><init>(I)V

    .line 26708
    invoke-static {}, Lehs;->a()Lehs;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$20;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$20;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    .line 27176
    iget-object v0, v0, Lehs;->a:Lcjp;

    invoke-virtual {v0, v1}, Lcjp;->a(Lcjo$a;)V

    .line 26840
    sget-object v0, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->FLUENCY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->S:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    .line 26841
    const-string/jumbo v0, "focus_key_projection_mode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v0

    .line 26842
    if-ltz v0, :cond_1

    .line 26843
    sget-object v1, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->FLUENCY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    invoke-virtual {v1}, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 26844
    sget-object v0, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->FLUENCY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->S:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    .line 26850
    :cond_1
    :goto_0
    invoke-static {}, Lehv;->a()Lehv;

    move-result-object v0

    .line 28120
    iget-object v0, v0, Lehv;->a:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .line 26850
    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->R:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .line 26852
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "projection_mode_change"

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->an:Z

    .line 26853
    const-string/jumbo v0, "media_projection"

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->O:Landroid/media/projection/MediaProjectionManager;

    .line 26854
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->P:Landroid/view/Display;

    .line 26855
    invoke-static {}, Lali/mmpc/pwp/PwpClient;->getInstance()Lali/mmpc/pwp/PwpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q:Lali/mmpc/pwp/PwpClient;

    .line 26856
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q:Lali/mmpc/pwp/PwpClient;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$21;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$21;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v0, v1}, Lali/mmpc/pwp/PwpClient;->setJavaLogcallback(Lali/mmpc/pwp/LogCallback;)V

    .line 26867
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q:Lali/mmpc/pwp/PwpClient;

    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->P:Landroid/view/Display;

    invoke-virtual {v0, p0, v1, v2}, Lali/mmpc/pwp/PwpClient;->init(Lali/mmpc/pwp/PwpClientCallback;Landroid/content/Context;Landroid/view/Display;)V
    :try_end_0
    .catch Lali/mmpc/interfaces/ConferenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26871
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q:Lali/mmpc/pwp/PwpClient;

    invoke-virtual {v0}, Lali/mmpc/pwp/PwpClient;->getNativeLogDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aj:Ljava/lang/String;

    .line 26873
    new-instance v0, Lehw;

    invoke-direct {v0}, Lehw;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->T:Lehw;

    .line 26875
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Landroid/content/Intent;)V

    .line 26877
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ae:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26878
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ad:J

    .line 26879
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-nez v0, :cond_2

    .line 26880
    new-instance v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-direct {v0}, Lcom/alibaba/android/projection/data/FocusDeviceObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 26881
    invoke-static {}, Legr;->a()Legr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 29044
    iput-object v1, v0, Legr;->b:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 26883
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ae:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ae:Ljava/lang/String;

    .line 26884
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ae:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 26885
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    if-eqz v0, :cond_3

    .line 26886
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    sget-object v1, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->EDITABLE:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    iput-object v1, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    .line 26887
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v1, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->setCastCode(Ljava/lang/String;)V

    .line 26888
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a(Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    .line 29907
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->af:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->af:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29908
    iput-object v4, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ae:Ljava/lang/String;

    .line 29909
    iput-object v4, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->af:Ljava/lang/String;

    .line 29910
    iput-boolean v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ah:Z

    .line 29911
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "Focus_set_focus_code"

    const-string/jumbo v2, "focus_quick_projection_start"

    invoke-interface {v0, v1, v2, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 29912
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-direct {p0, v0, v5}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/data/FocusDeviceObject;Z)V

    .line 26891
    :cond_4
    :goto_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "Focus_set_focus_code"

    const-string/jumbo v2, "focus_quick_projection"

    invoke-interface {v0, v1, v2, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 31796
    :cond_5
    :goto_3
    return-void

    .line 26846
    :cond_6
    sget-object v0, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->CLARITY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->S:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    goto/16 :goto_0

    .line 26868
    :catch_0
    move-exception v0

    .line 26869
    invoke-virtual {v0}, Lali/mmpc/interfaces/ConferenceException;->printStackTrace()V

    goto/16 :goto_1

    .line 29913
    :cond_7
    invoke-static {p0}, Lcms;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 29915
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 29916
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 30027
    :cond_8
    const-string/jumbo v0, "key_focus_first_enter_projection_home"

    invoke-static {v0, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 30028
    if-eqz v0, :cond_9

    .line 30029
    const-string/jumbo v1, "key_focus_first_enter_projection_home"

    invoke-static {v1, v5}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 26894
    :cond_9
    if-eqz v0, :cond_c

    .line 26895
    iput-boolean v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->l:Z

    .line 30518
    if-eqz p0, :cond_5

    .line 30521
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30522
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;)V

    .line 30524
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30525
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 30526
    invoke-static {}, Lcms;->k()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 30527
    const-string/jumbo v3, "resource"

    sget v4, Legm$b;->focus_projecter_hint_icon:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30533
    :goto_4
    const-string/jumbo v3, "title"

    sget v4, Legm$e;->dt_focus_projection_hint_title:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30534
    sget v3, Legm$e;->dt_focus_projection_hint_content:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 30535
    const-string/jumbo v4, "content"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30537
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30538
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Ljava/util/List;)V

    .line 30539
    sget v1, Legm$e;->dt_common_i_know:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31079
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 30540
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$39;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$39;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 31095
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    .line 30547
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$40;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$40;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 31099
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->g:Landroid/view/View$OnClickListener;

    .line 30555
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setCanceledOnTouchOutside(Z)V

    .line 30556
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$41;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$41;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    invoke-virtual {v1, v2, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 30528
    :cond_a
    invoke-static {}, Lcms;->l()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 30529
    const-string/jumbo v3, "resource"

    sget v4, Legm$b;->focus_projecter_hint_icon_tw:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    .line 30531
    :cond_b
    const-string/jumbo v3, "resource"

    sget v4, Legm$b;->focus_projecter_hint_icon_en:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    .line 26898
    :cond_c
    iput-boolean v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->l:Z

    .line 26899
    invoke-static {p0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcms;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 31795
    if-eqz p0, :cond_5

    .line 31798
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31799
    new-instance v0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    .line 31800
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$b;->wifi_turnoff_english:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 32122
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->h:Landroid/graphics/drawable/Drawable;

    .line 31801
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    sget v1, Legm$e;->dt_focus_wifi_not_connect_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 33110
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->e:Ljava/lang/String;

    .line 31802
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    sget v1, Legm$e;->dt_focus_wifi_setting_warn:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 33114
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->f:Ljava/lang/String;

    .line 31803
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    sget v1, Legm$e;->dt_focus_wifi_set:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 34098
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->d:Ljava/lang/String;

    .line 31804
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$2;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    .line 34102
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->a:Landroid/view/View$OnClickListener;

    .line 31813
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    sget v1, Legm$e;->dt_common_cancel:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 34106
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->c:Ljava/lang/String;

    .line 31814
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$3;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    .line 34126
    iput-object v1, v0, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->b:Landroid/view/View$OnClickListener;

    .line 31821
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 31823
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$4;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v0, v1, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3
.end method

.method static synthetic r(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    .line 34311
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ai:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 34312
    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$60;

    invoke-direct {v0, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$60;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ai:Landroid/content/BroadcastReceiver;

    .line 34368
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.workapp.projection.choose.device"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34369
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ai:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 172
    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    .line 35396
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 35397
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 35398
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35399
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 35400
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35402
    :cond_0
    invoke-static {}, Leht;->a()Leht;

    move-result-object v3

    const-string/jumbo v0, "EVENTBUTLER"

    .line 35403
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$16;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$16;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v1, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 36039
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35451
    :cond_1
    :goto_1
    invoke-static {}, Leht;->a()Leht;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 35452
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$17;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$17;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    const-class v3, Lcma;

    invoke-interface {v0, v1, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 36091
    const-class v1, Lcom/alibaba/android/projection/idl/service/OpenDeviceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/projection/idl/service/OpenDeviceIService;

    .line 36092
    if-eqz v1, :cond_2

    .line 36093
    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Leht$3;

    invoke-direct {v4, v2, v0}, Leht$3;-><init>(Leht;Lcma;)V

    invoke-interface {v1, v3, v4}, Lcom/alibaba/android/projection/idl/service/OpenDeviceIService;->userHasRelatedDevices(Ljava/lang/Integer;Liyv;)V

    .line 34549
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e()V

    .line 172
    return-void

    .line 36042
    :cond_3
    const-class v1, Lcom/alibaba/android/dingtalk/userbase/service/DeviceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/service/DeviceIService;

    .line 36043
    if-eqz v1, :cond_1

    .line 36044
    const-string/jumbo v4, "touyingyi"

    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Leht$1;

    invoke-direct {v6, v3, v0}, Leht$1;-><init>(Leht;Lcma;)V

    invoke-interface {v1, v2, v4, v5, v6}, Lcom/alibaba/android/dingtalk/userbase/service/DeviceIService;->listDevices(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    goto :goto_1
.end method

.method static synthetic t(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionRecordView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->M:Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ao:Z

    return v0
.end method

.method static synthetic v(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Y:Ljava/util/List;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionEditItemView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->as:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->k()V

    return-void
.end method

.method static synthetic z(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->r:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 572
    const/4 v5, 0x0

    .line 574
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "www.dingtalk.com"

    .line 575
    .local v3, "ip":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ping -c 3 -w 3 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 577
    .local v4, "p":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 578
    .local v2, "input":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 579
    .local v1, "in":Ljava/io/BufferedReader;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 581
    .local v7, "stringBuffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v7, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 594
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v3    # "ip":Ljava/lang/String;
    .end local v4    # "p":Ljava/lang/Process;
    .end local v7    # "stringBuffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catch_0
    move-exception v8

    const-string/jumbo v5, "failed~ IOException"

    .line 598
    const-string/jumbo v8, "focus"

    sget-object v9, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "result = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :goto_1
    const/4 v8, 0x1

    :goto_2
    return v8

    .line 584
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v3    # "ip":Ljava/lang/String;
    .restart local v4    # "p":Ljava/lang/Process;
    .restart local v7    # "stringBuffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_0
    :try_start_1
    const-string/jumbo v8, "focus"

    sget-object v9, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "result content : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v6

    .line 587
    .local v6, "status":I
    if-nez v6, :cond_1

    .line 588
    const-string/jumbo v5, "successful~"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    const-string/jumbo v8, "focus"

    sget-object v9, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "result = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 590
    :cond_1
    :try_start_2
    const-string/jumbo v5, "failed~ cannot reach the IP address"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 598
    const-string/jumbo v8, "focus"

    sget-object v9, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "result = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_2

    .line 596
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v3    # "ip":Ljava/lang/String;
    .end local v4    # "p":Ljava/lang/Process;
    .end local v6    # "status":I
    .end local v7    # "stringBuffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catch_1
    move-exception v8

    const-string/jumbo v5, "failed~ Exception"

    .line 598
    const-string/jumbo v8, "focus"

    sget-object v9, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "result = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v8

    const-string/jumbo v9, "focus"

    sget-object v10, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "result = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v8
.end method

.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1049
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 1050
    invoke-static {}, Legr;->a()Legr;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 10036
    iput-object v1, v0, Legr;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 1051
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    .line 1052
    return-void
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3567
    const-string/jumbo v0, "Focus_set_focus_code"

    return-object v0
.end method

.method protected getPageSpmCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3562
    const-string/jumbo v0, "a2q0r.11900331.0.0"

    return-object v0
.end method

.method public onAcceptProjection()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 977
    const-string/jumbo v2, "focus"

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v4, "onAcceptProjection"

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 979
    .local v1, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "resolution"

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->S:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    sget-object v4, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->FLUENCY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    if-ne v2, v4, :cond_1

    const-string/jumbo v2, "1"

    :goto_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    const-string/jumbo v2, "is_succ"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    const-string/jumbo v2, "_field_event_id"

    const-string/jumbo v3, "2101"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    const-string/jumbo v2, "log_ding_version"

    const-string/jumbo v3, "1.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    const-string/jumbo v2, "succ"

    const-string/jumbo v3, "a2q0r.11900331.1.succ"

    invoke-static {v6, v2, v1, v3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 985
    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 986
    invoke-static {}, Legr;->a()Legr;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 9036
    iput-object v3, v2, Legr;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 9661
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$48;

    invoke-direct {v3, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$48;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 988
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->as:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 989
    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_ShareComplete:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    iput-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ab:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    .line 991
    const/4 v2, 0x1

    invoke-direct {p0, v2, v6, v5}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(ZLjava/lang/String;Z)V

    .line 993
    const/4 v0, 0x1

    .line 994
    .local v0, "num":I
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v2, v3, :cond_0

    .line 995
    add-int/lit8 v0, v0, 0x1

    .line 997
    :cond_0
    invoke-direct {p0, v0, v5}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(IZ)V

    .line 998
    return-void

    .line 979
    .end local v0    # "num":I
    :cond_1
    const-string/jumbo v2, "2"

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 910
    const-string/jumbo v1, "focus"

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onActivityResult, requestCode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", resultCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const/16 v1, 0x64

    if-ne p1, v1, :cond_4

    .line 913
    const/4 v1, -0x1

    if-ne p2, v1, :cond_7

    .line 914
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "focus_start_click_success"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 916
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q:Lali/mmpc/pwp/PwpClient;

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q:Lali/mmpc/pwp/PwpClient;

    invoke-virtual {v1, p3}, Lali/mmpc/pwp/PwpClient;->startScreenCapture(Landroid/content/Intent;)V

    .line 919
    :cond_0
    const-string/jumbo v1, "focus"

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "startScreenCapture really end"

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 923
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "focus_add_remote_share"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 924
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-direct {p0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    .line 931
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)V

    .line 7524
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->am:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_6

    .line 935
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 936
    .local v0, "castCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v1, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 937
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v0, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 939
    :cond_3
    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Ljava/lang/String;)V

    .line 957
    .end local v0    # "castCode":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 927
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 928
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 7527
    :cond_6
    const-string/jumbo v1, "focus"

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "start screen on"

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7529
    :try_start_0
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->al:Landroid/os/PowerManager;

    .line 7530
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->al:Landroid/os/PowerManager;

    const v2, 0x2000000a

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->am:Landroid/os/PowerManager$WakeLock;

    .line 7531
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->am:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7532
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->am:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7534
    :catch_0
    move-exception v1

    .line 7535
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 941
    :cond_7
    const-string/jumbo v1, "request startScreenCapture really fail"

    invoke-direct {p0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;)V

    .line 943
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h()V

    .line 944
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->T:Lehw;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    .line 945
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 946
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->T:Lehw;

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-virtual {v1, v2}, Lehw;->a(Ljava/util/List;)V

    .line 947
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 949
    :cond_8
    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 950
    invoke-static {}, Legr;->a()Legr;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 8036
    iput-object v2, v1, Legr;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 951
    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 952
    const-string/jumbo v1, "screenCapture fail"

    invoke-direct {p0, v5, v1, v5}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(ZLjava/lang/String;Z)V

    .line 953
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->i()V

    .line 954
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Z)V

    goto/16 :goto_2
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 887
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v0, v1, :cond_1

    .line 889
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->k()V

    .line 893
    :goto_0
    return-void

    .line 891
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConnectFailed()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 962
    const-string/jumbo v0, "focus"

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "onConnectFailed"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$5;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 972
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 616
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 617
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Legm$b;->background:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 618
    sget v0, Legm$d;->layout_activity_focus_projection_v2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->setContentView(I)V

    .line 620
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_focus_projection_status_store"

    .line 4083
    invoke-virtual {v0, v1, v6}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 620
    if-eqz v0, :cond_0

    .line 621
    invoke-static {}, Legr;->a()Legr;

    move-result-object v0

    .line 5032
    iget-object v0, v0, Legr;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 621
    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 622
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v0, v1, :cond_4

    .line 623
    invoke-static {}, Legr;->a()Legr;

    move-result-object v0

    .line 5040
    iget-object v0, v0, Legr;->b:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 623
    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 5055
    :cond_0
    :goto_0
    sget v0, Legm$c;->focus_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f:Landroid/view/View;

    .line 5056
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$6;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5069
    sget v0, Legm$c;->egg_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->r:Landroid/widget/TextView;

    .line 5070
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->r:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5071
    sget v0, Legm$c;->focus_loading_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->s:Landroid/view/View;

    .line 5072
    sget v0, Legm$c;->focus_so_loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->t:Landroid/widget/ProgressBar;

    .line 5074
    sget v0, Legm$c;->focus_title_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->g:Landroid/view/View;

    .line 5075
    sget v0, Legm$c;->wifi_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h:Landroid/widget/TextView;

    .line 5076
    sget v0, Legm$c;->wifi_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->i:Landroid/widget/TextView;

    .line 5078
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_1

    .line 5079
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v0, v1, :cond_2

    .line 5080
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->g:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 5114
    :cond_2
    sget v0, Legm$c;->focus_main_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->m:Landroid/view/View;

    .line 5115
    sget v0, Legm$c;->focus_no_devices_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->o:Landroid/view/View;

    .line 5116
    sget v0, Legm$c;->focus_devices_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->n:Landroid/view/View;

    .line 5117
    sget v0, Legm$c;->focus_sysver_invalid_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->p:Landroid/view/View;

    .line 5118
    sget v0, Legm$c;->focus_cast_code_input:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->u:Landroid/view/View;

    .line 5119
    sget v0, Legm$c;->focus_no_devices_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->q:Landroid/widget/ImageView;

    .line 5120
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->u:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5154
    sget v0, Legm$c;->focus_main_device_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    .line 5155
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->setTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5199
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$10;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->setKeyListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 5214
    sget v0, Legm$c;->focus_external_list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->w:Landroid/view/View;

    .line 5215
    sget v0, Legm$c;->focus_ext_device_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->x:Landroid/widget/ListView;

    .line 5216
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->x:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$11;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5234
    sget v0, Legm$c;->focus_add_external_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->z:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 5235
    sget v0, Legm$c;->focus_add_external_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->A:Landroid/widget/TextView;

    .line 5236
    sget v0, Legm$c;->focus_add_external_device:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->y:Landroid/view/View;

    .line 5237
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->y:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5271
    sget v0, Legm$c;->focus_start_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->J:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 5272
    sget v0, Legm$c;->focus_start_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->K:Landroid/widget/TextView;

    .line 5273
    sget v0, Legm$c;->focus_start:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    .line 5274
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->au:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5276
    sget v0, Legm$c;->focus_mode_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->D:Landroid/widget/TextView;

    .line 5277
    sget v0, Legm$c;->focus_mode_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->E:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 5278
    sget v0, Legm$c;->focus_mode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->B:Landroid/view/View;

    .line 5279
    sget v0, Legm$c;->focus_mode_line:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->C:Landroid/view/View;

    .line 5280
    sget v0, Legm$c;->focus_mode_extra:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->F:Landroid/view/View;

    .line 5281
    sget v0, Legm$c;->focus_mode_extra_line:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->G:Landroid/view/View;

    .line 5282
    sget v0, Legm$c;->focus_mode_extra_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->H:Landroid/widget/TextView;

    .line 5283
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->B:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->av:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5284
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->F:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->av:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5286
    sget v0, Legm$c;->focus_ad_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->L:Landroid/view/View;

    .line 5287
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->L:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$14;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5296
    new-instance v0, Legp;

    invoke-direct {v0, p0}, Legp;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->N:Legp;

    .line 5297
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->x:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->N:Legp;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5299
    sget v0, Legm$c;->focus_ext_history:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->M:Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    .line 5300
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->M:Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$15;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->setRecordListener(Lcom/alibaba/android/projection/widget/ProjectionRecordView$a;)V

    .line 631
    invoke-direct {p0, v7}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Z)V

    .line 5551
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5552
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5553
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aw:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5554
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$54;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$54;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$64;

    invoke-direct {v0, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$64;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5641
    invoke-static {}, Legq;->a()Z

    move-result v1

    .line 5642
    if-eqz v1, :cond_6

    .line 5643
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v1

    const-string/jumbo v2, "pwp_client"

    invoke-virtual {v1, v2}, Lcjn;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 5644
    const-string/jumbo v1, "focus"

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "checkSoReady --> so not ready"

    aput-object v4, v3, v7

    .line 5645
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5644
    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5647
    invoke-static {p0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 5648
    const-string/jumbo v1, "focus"

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "checkSoReady --> is not wifi"

    aput-object v4, v3, v7

    .line 5649
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5648
    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5650
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$19;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$19;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcma;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 658
    :cond_3
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v7

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v6

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ar:Z

    .line 659
    return-void

    .line 625
    :cond_4
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    goto/16 :goto_0

    .line 5690
    :cond_5
    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcma;)V

    goto :goto_1

    .line 5692
    :cond_6
    if-eqz v1, :cond_7

    .line 5693
    if-eqz v0, :cond_3

    .line 5694
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_1

    .line 5697
    :cond_7
    if-eqz v0, :cond_3

    .line 5698
    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "Invalid android version"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 849
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 850
    const-string/jumbo v2, "focus"

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v4, "onDestroy"

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6373
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ai:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    .line 6374
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ai:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 6375
    iput-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ai:Landroid/content/BroadcastReceiver;

    .line 853
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aw:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 855
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Unknown:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-eq v2, v3, :cond_1

    .line 6880
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_focus_projection_status_store"

    .line 7083
    invoke-virtual {v2, v3, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 6880
    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v2, v3, :cond_5

    .line 857
    :goto_0
    if-eqz v0, :cond_4

    .line 858
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->j()V

    .line 860
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q:Lali/mmpc/pwp/PwpClient;

    if-eqz v0, :cond_2

    .line 861
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q:Lali/mmpc/pwp/PwpClient;

    invoke-virtual {v0}, Lali/mmpc/pwp/PwpClient;->stopScreenCapture()I

    .line 862
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q:Lali/mmpc/pwp/PwpClient;

    invoke-virtual {v0}, Lali/mmpc/pwp/PwpClient;->terminate()V

    .line 863
    iput-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q:Lali/mmpc/pwp/PwpClient;

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 867
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ak:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 868
    const-string/jumbo v0, "mmpc_pwp"

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ak:Ljava/lang/String;

    .line 870
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aj:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ak:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Leia;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 874
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->l()V

    .line 876
    sput-object v5, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c:Landroid/app/Activity;

    .line 877
    return-void

    :cond_5
    move v0, v1

    .line 6880
    goto :goto_0
.end method

.method public onHeartbeatTimeout()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1025
    const-string/jumbo v0, "focus"

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "onHeartbeatTimeout"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->g(Z)V

    .line 1027
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 687
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 688
    invoke-direct {p0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Landroid/content/Intent;)V

    .line 689
    return-void
.end method

.method public onPeerBusy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1009
    const-string/jumbo v0, "focus"

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "onPeerBusy"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->as:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1011
    const-string/jumbo v0, "peer_busy"

    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Ljava/lang/String;)V

    .line 1012
    return-void
.end method

.method public onReconnectInfo(ZII)V
    .locals 4
    .param p1, "is_reconnect"    # Z
    .param p2, "reconnect_times"    # I
    .param p3, "reconnect_result"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1037
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1038
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "reconnect_ret"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    const-string/jumbo v1, "reconnect_times"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    const-string/jumbo v2, "reconnect"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    const-string/jumbo v1, "_field_event_id"

    const-string/jumbo v2, "2101"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    const-string/jumbo v1, "device_type"

    const-string/jumbo v2, "focus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    const-string/jumbo v1, "log_ding_version"

    const-string/jumbo v2, "1.9.3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Page_Focus_set_focus_code"

    const-string/jumbo v3, "Page_Focus_set_focus_code_relink"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1045
    return-void

    .line 1040
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRejectProjection()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1002
    const-string/jumbo v0, "focus"

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "onRejectProjection"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->as:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1004
    const-string/jumbo v0, "peer_reject"

    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Ljava/lang/String;)V

    .line 1005
    return-void
.end method

.method protected onRestart()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 693
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onRestart()V

    .line 694
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ae:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v0, v1, :cond_3

    .line 696
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Legm$e;->dt_focus_projection_ongoing_wraning:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;I)V

    .line 705
    :cond_1
    :goto_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "Focus_set_focus_code"

    const-string/jumbo v2, "focus_quick_projection_renter"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 706
    iput-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ae:Ljava/lang/String;

    .line 707
    iput-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->af:Ljava/lang/String;

    .line 708
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->dismiss()V

    .line 712
    :cond_2
    return-void

    .line 697
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v0, v1, :cond_1

    .line 698
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->ae:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 700
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    sget-object v1, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->EDITABLE:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    iput-object v1, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->showType:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    .line 701
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v1, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->setCastCode(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a(Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 682
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 683
    return-void
.end method

.method public onServerDisconnect()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1031
    const-string/jumbo v0, "focus"

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "onServerDisconnect"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->g(Z)V

    .line 1033
    return-void
.end method

.method public onServerStopProjection()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1017
    const-string/jumbo v0, "focus"

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "onStopProjection"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->g(Z)V

    .line 1019
    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 748
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 749
    invoke-direct {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->j()V

    .line 750
    invoke-static {}, Legq;->a()Z

    move-result v1

    .line 752
    .local v1, "validVersion":Z
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v2

    const-string/jumbo v3, "pwp_client"

    invoke-virtual {v2, v3}, Lcjn;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 754
    invoke-direct {p0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Z)V

    .line 765
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v2, v3, :cond_2

    .line 767
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v3, v3, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->setCastCode(Ljava/lang/String;)V

    .line 770
    :cond_2
    if-eqz v1, :cond_6

    iget-boolean v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->l:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v2, v3, :cond_6

    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "castCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v2, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 774
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->V:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v0, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 776
    :cond_3
    invoke-static {p0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lcms;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 777
    :cond_4
    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 778
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->o:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 779
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->n:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 780
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$66;

    invoke-direct {v3, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$66;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 791
    .end local v0    # "castCode":Ljava/lang/String;
    :cond_6
    return-void

    .line 756
    :cond_7
    if-nez v1, :cond_0

    .line 757
    invoke-direct {p0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 836
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 837
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Z:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v1, v2, :cond_2

    .line 839
    :cond_0
    const/4 v0, 0x1

    .line 840
    .local v0, "num":I
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->aa:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v1, v2, :cond_1

    .line 841
    add-int/lit8 v0, v0, 0x1

    .line 843
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(IZ)V

    .line 845
    .end local v0    # "num":I
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 898
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 902
    :cond_0
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 903
    .local v0, "mInputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    .line 905
    .end local v0    # "mInputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method
