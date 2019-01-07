.class public Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lied$c;
.implements Lied$d;
.implements Lied$e;
.implements Lied$f;
.implements Lied$h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;,
        Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:J

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private aA:Landroid/view/View$OnClickListener;

.field private aB:Landroid/view/View$OnClickListener;

.field private aC:Leys$a;

.field private aD:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;

.field private aa:Z

.field private ab:Levs;

.field private ac:Ljava/lang/Runnable;

.field private ad:Landroid/content/BroadcastReceiver;

.field private ae:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private af:Landroid/widget/TextView;

.field private ag:Landroid/widget/TextView;

.field private ah:Landroid/widget/TextView;

.field private ai:Landroid/widget/TextView;

.field private aj:Landroid/widget/TextView;

.field private ak:Landroid/view/View;

.field private al:Landroid/widget/TextView;

.field private am:Landroid/view/View;

.field private an:Landroid/support/v7/app/AlertDialog;

.field private ao:Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

.field private ap:Lewj;

.field private aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

.field private ar:Landroid/view/View;

.field private as:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

.field private at:Ljava/lang/Runnable;

.field private au:Landroid/view/View$OnClickListener;

.field private av:Landroid/view/View$OnClickListener;

.field private aw:Landroid/view/View$OnClickListener;

.field private ax:Landroid/view/View$OnClickListener;

.field private ay:Landroid/view/View$OnClickListener;

.field private az:Landroid/view/View$OnClickListener;

.field public b:Landroid/content/Context;

.field public c:Liee;

.field public d:Lcom/alibaba/wukong/openav/external/IAVSession;

.field private e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

.field private f:Landroid/hardware/SensorManager;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const-class v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 184
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->j:Z

    .line 197
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->v:Z

    .line 198
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->w:Z

    .line 199
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->x:Z

    .line 200
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->y:Z

    .line 201
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->z:Z

    .line 202
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->A:Z

    .line 205
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->C:Z

    .line 206
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->D:Z

    .line 207
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->E:Z

    .line 208
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->F:Z

    .line 209
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->M:Z

    .line 210
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->N:Z

    .line 211
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->O:Z

    .line 217
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->T:Z

    .line 218
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->U:Z

    .line 219
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->V:Z

    .line 220
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->W:Z

    .line 221
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->X:Z

    .line 222
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->Y:Z

    .line 223
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->Z:Z

    .line 224
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aa:Z

    .line 249
    sget-object v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;->Preparation:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->as:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    .line 251
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->at:Ljava/lang/Runnable;

    .line 279
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$12;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->au:Landroid/view/View$OnClickListener;

    .line 311
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$23;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->av:Landroid/view/View$OnClickListener;

    .line 359
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$27;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$27;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aw:Landroid/view/View$OnClickListener;

    .line 368
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ax:Landroid/view/View$OnClickListener;

    .line 416
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ay:Landroid/view/View$OnClickListener;

    .line 509
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->az:Landroid/view/View$OnClickListener;

    .line 572
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$32;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$32;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aA:Landroid/view/View$OnClickListener;

    .line 600
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$2;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aB:Landroid/view/View$OnClickListener;

    .line 618
    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->j()V

    return-void
.end method

.method static synthetic C(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    return-object v0
.end method

.method static synthetic D(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p()V

    return-void
.end method

.method static synthetic E(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->g()V

    return-void
.end method

.method static synthetic F(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    .line 28839
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 131
    goto :goto_0
.end method

.method static synthetic G(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d()V

    return-void
.end method

.method static synthetic H(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic I(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    .line 29668
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29669
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29694
    :cond_0
    :goto_0
    return-void

    .line 29672
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->an:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_2

    .line 29673
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29674
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->and_conf_voip_record_permission_warn_tip:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29675
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$24;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$24;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 29676
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_nav_to_settings:I

    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$22;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$22;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 29683
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 29692
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 29693
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->an:Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 29695
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->an:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29696
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->an:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic J(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->O:Z

    return v0
.end method

.method static synthetic K(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic L(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ag:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic M(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic N(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ah:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic O(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->Q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic P(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->R:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Q(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic R(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->k:Z

    return v0
.end method

.method static synthetic S(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic T(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->F:Z

    return v0
.end method

.method static synthetic U(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Levs;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ab:Levs;

    return-object v0
.end method

.method static synthetic V(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ai:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic W(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aj:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic X(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ak:Landroid/view/View;

    return-object v0
.end method

.method static synthetic Y(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ae:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method

.method static synthetic Z(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->af:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/IAVSession;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Lcom/alibaba/wukong/openav/external/IAVSession;)Lcom/alibaba/wukong/openav/external/IAVSession;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Lcom/alibaba/wukong/openav/external/IAVSession;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    return-object p1
.end method

.method private a(ILjava/lang/Runnable;)V
    .locals 5
    .param p1, "errCode"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2261
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Really destroy UI: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    sget v0, Leuj$l;->dt_conference_voip_call_ended_title:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b(I)V

    .line 2263
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->j()V

    .line 2264
    if-eqz p2, :cond_0

    .line 2265
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    invoke-virtual {v0, p2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2267
    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errCode"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "extraMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2376
    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v2}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v2

    if-ne p1, v2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2377
    const-string/jumbo v1, ""

    .line 2379
    .local v1, "rejectMsgID":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2380
    .local v0, "msgObj":Lorg/json/JSONObject;
    const-string/jumbo v2, "REJMsgID"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2384
    .end local v0    # "msgObj":Lorg/json/JSONObject;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2385
    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$17;

    invoke-direct {v3, p0, p1, p2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$17;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ILjava/lang/String;)V

    .line 18069
    if-nez v3, :cond_1

    .line 18070
    .end local v1    # "rejectMsgID":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 18073
    .restart local v1    # "rejectMsgID":Ljava/lang/String;
    :cond_1
    const-class v2, Lcom/alibaba/android/teleconf/sdk/idl/service/AvGeneralMgrIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/sdk/idl/service/AvGeneralMgrIService;

    .line 18074
    if-eqz v2, :cond_0

    .line 18075
    new-instance v4, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryMedusaTextModel;

    invoke-direct {v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryMedusaTextModel;-><init>()V

    .line 18076
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryMedusaTextModel;->textIds:Ljava/util/List;

    .line 18077
    iget-object v5, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryMedusaTextModel;->textIds:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18078
    new-instance v5, Lewd$2;

    invoke-direct {v5, v3, v1}, Lewd$2;-><init>(Leyo$d;Ljava/lang/String;)V

    invoke-interface {v2, v4, v5}, Lcom/alibaba/android/teleconf/sdk/idl/service/AvGeneralMgrIService;->queryMedusaTextContents(Lcom/alibaba/android/teleconf/sdk/idl/model/QueryMedusaTextModel;Liyv;)V

    goto :goto_1

    .line 2400
    .end local v1    # "rejectMsgID":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, ""

    invoke-direct {p0, p1, p2, v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .restart local v1    # "rejectMsgID":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 8
    .param p1, "ringMode"    # I
    .param p2, "isVibrating"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 2732
    const/4 v2, 0x0

    .line 2733
    .local v2, "vibrateFlag":I
    const/4 v5, 0x0

    .line 2734
    .local v5, "isForcePlay":Z
    const/4 v3, 0x0

    .line 2735
    .local v3, "isLoopPlay":Z
    const/4 v4, 0x0

    .line 2736
    .local v4, "isRingerMode":Z
    const/4 v1, 0x0

    .line 2738
    .local v1, "resId":I
    if-nez p1, :cond_3

    .line 2739
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->T:Z

    if-eqz v0, :cond_1

    .line 2740
    sget v1, Leuj$k;->calling_pre:I

    .line 2748
    :goto_0
    const/4 v5, 0x1

    .line 2749
    const/4 v3, 0x1

    .line 2769
    :cond_0
    :goto_1
    if-nez v1, :cond_9

    .line 2770
    const-string/jumbo v0, "tele_conf"

    sget-object v6, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v7, "Ring res invalid"

    invoke-static {v0, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    :goto_2
    return-void

    .line 2742
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2743
    sget v1, Leuj$k;->calling_suf:I

    goto :goto_0

    .line 2745
    :cond_2
    sget v1, Leuj$k;->calling:I

    goto :goto_0

    .line 2750
    :cond_3
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4

    .line 2751
    sget v1, Leuj$k;->calling_suf:I

    .line 2752
    const/4 v5, 0x1

    .line 2753
    const/4 v3, 0x1

    goto :goto_1

    .line 2754
    :cond_4
    const/4 v6, 0x3

    if-ne p1, v6, :cond_7

    .line 2755
    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v6}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v6

    sget-object v7, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v6, v7, :cond_5

    .line 2757
    const/4 v2, 0x6

    .line 2759
    :cond_5
    sget v1, Leuj$k;->incoming:I

    .line 2760
    const/4 v3, 0x1

    .line 2761
    invoke-static {}, Lewx;->g()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v6}, Liee;->m()Z

    move-result v6

    if-nez v6, :cond_6

    move v4, v0

    :goto_3
    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 2762
    :cond_7
    if-ne p1, v0, :cond_0

    .line 2763
    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    sget-object v6, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->HANGUP:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v6, :cond_8

    .line 2764
    const/4 v2, 0x2

    .line 2766
    :cond_8
    sget v1, Leuj$k;->hangup_dudu:I

    .line 2767
    const/4 v5, 0x1

    goto :goto_1

    .line 2774
    :cond_9
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p()V

    .line 2775
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-nez v0, :cond_a

    .line 2776
    new-instance v0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 2778
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a(IIZZZLcom/alibaba/wukong/openav/external/utils/VoipRinger$a;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ILjava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Runnable;

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;IZ)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Lied$b;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Lied$b;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b(Lied$b;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 131
    .line 26208
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "End the call and the UI 2 switch"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26209
    const/4 v0, 0x0

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZILjava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZI)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ZLcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZLcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    return-void
.end method

.method private a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V
    .locals 4
    .param p1, "alarmType"    # Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;
    .param p2, "errCode"    # I
    .param p3, "errReason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2850
    if-eqz p1, :cond_0

    .line 2851
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2871
    :cond_0
    :goto_0
    return-void

    .line 2854
    :cond_1
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;-><init>()V

    .line 2855
    .local v0, "alarmAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    iput-object p1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->b:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 2856
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v2, :cond_2

    .line 2857
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v1

    .line 2858
    .local v1, "callId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2859
    iput-object v1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->a:Ljava/lang/String;

    .line 2862
    .end local v1    # "callId":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->d:J

    .line 2863
    if-lez p2, :cond_3

    .line 2864
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->e:Ljava/lang/String;

    .line 2866
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2867
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->c:Ljava/lang/String;

    .line 2869
    :cond_4
    iput-object p3, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->f:Ljava/lang/String;

    .line 2870
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)V

    goto :goto_0
.end method

.method private a(ZI)V
    .locals 5
    .param p1, "vibrating"    # Z
    .param p2, "errCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2213
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "destroy UI with "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 2214
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2213
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZILjava/lang/Runnable;)V

    .line 2216
    return-void
.end method

.method private a(ZILjava/lang/Runnable;)V
    .locals 7
    .param p1, "vibrating"    # Z
    .param p2, "errCode"    # I
    .param p3, "callback"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 2219
    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->w:Z

    if-eqz v2, :cond_0

    .line 2258
    :goto_0
    return-void

    .line 2222
    :cond_0
    iput-boolean v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->w:Z

    .line 17586
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17587
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->dt_conference_voip_call_ended_title:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p:Ljava/lang/String;

    .line 17589
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->o()V

    .line 17590
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aj:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 17591
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aj:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17592
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aj:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17594
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ai:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 17595
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ai:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2225
    :cond_3
    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aa:Z

    if-nez v2, :cond_4

    .line 2226
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d()V

    .line 2228
    :cond_4
    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->M:Z

    if-eqz v2, :cond_5

    .line 2229
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->S:Ljava/lang/String;

    .line 18025
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    if-nez v3, :cond_8

    .line 2232
    :cond_5
    :goto_1
    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aa:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v2}, Liee;->k()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2233
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v2}, Liee;->i()V

    .line 2236
    :cond_6
    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aa:Z

    if-nez v2, :cond_7

    .line 2238
    invoke-direct {p0, v6, p1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(IZ)V

    .line 2240
    :cond_7
    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->A:Z

    if-eqz v2, :cond_c

    .line 2241
    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 18028
    :cond_8
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v5, "Hangup call START"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18029
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v3, :cond_b

    .line 18030
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v3, p2}, Lcom/alibaba/wukong/openav/external/IAVSession;->a(I)V

    .line 18031
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v3, v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->h(Ljava/lang/String;)V

    .line 18033
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v2

    .line 18034
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v2, v3, :cond_a

    .line 18035
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v2}, Liee;->c()I

    .line 18045
    :cond_9
    :goto_2
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v4, "Hangup call END"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 18037
    :cond_a
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->IDLE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v2, v3, :cond_9

    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CLOSE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v2, v3, :cond_9

    .line 18039
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v2}, Liee;->b()I

    goto :goto_2

    .line 18043
    :cond_b
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v2}, Liee;->b()I

    goto :goto_2

    .line 2244
    :cond_c
    const-wide/16 v0, 0x258

    .line 2245
    .local v0, "delayTime":J
    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v2}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v2

    if-eq p2, v2, :cond_d

    .line 2246
    const-wide/16 v0, 0x7d0

    .line 2248
    :cond_d
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$16;

    invoke-direct {v3, p0, p2, p3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$16;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ILjava/lang/Runnable;)V

    invoke-virtual {v2, v3, v0, v1}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private a(ZLcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V
    .locals 10
    .param p1, "playAnimation"    # Z
    .param p2, "callState"    # Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x4

    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 2102
    if-nez p2, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v5, :cond_0

    .line 2103
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v5}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object p2

    .line 2105
    :cond_0
    if-nez p2, :cond_2

    .line 2205
    :cond_1
    :goto_0
    return-void

    .line 2108
    :cond_2
    sget-object v5, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$26;->a:[I

    invoke-virtual {p2}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 2110
    :pswitch_0
    iget-boolean v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->i:Z

    if-nez v4, :cond_1

    .line 2111
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    sget-object v5, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_ACCEPTING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;)V

    .line 2112
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aj:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2113
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aj:Landroid/widget/TextView;

    sget v4, Leuj$l;->conf_txt_video_joining_conf:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2114
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->n()V

    goto :goto_0

    .line 2118
    :pswitch_1
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->q:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2119
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->al:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2121
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Leuj$l;->and_conf_voip_state_calling_network_note:I

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->q:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2122
    .local v1, "networkState":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->al:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2124
    .end local v1    # "networkState":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    sget-object v6, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_CALLING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;)V

    .line 2125
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ai:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2126
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aj:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2127
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ak:Landroid/view/View;

    iget-boolean v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->X:Z

    if-eqz v6, :cond_4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2128
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ae:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->o:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->af:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2130
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aj:Landroid/widget/TextView;

    sget v4, Leuj$l;->and_conf_voip_state_connecting:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2131
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->n()V

    goto/16 :goto_0

    :cond_4
    move v3, v4

    .line 2127
    goto :goto_1

    .line 2134
    :pswitch_2
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    sget-object v6, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_CALLED:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;)V

    .line 2135
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ai:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2136
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aj:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2137
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ak:Landroid/view/View;

    iget-boolean v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->X:Z

    if-eqz v6, :cond_5

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2138
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ae:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->o:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->af:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2141
    invoke-static {}, Lewx;->f()Z

    move-result v3

    if-eqz v3, :cond_6

    sget v2, Leuj$l;->and_conf_voip_state_incoming_invite_ext:I

    .line 2143
    .local v2, "resId":I
    :goto_3
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aj:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2144
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->m()V

    goto/16 :goto_0

    .end local v2    # "resId":I
    :cond_5
    move v3, v4

    .line 2137
    goto :goto_2

    .line 2141
    :cond_6
    sget v2, Leuj$l;->and_conf_voip_state_incoming_invite:I

    goto :goto_3

    .line 2147
    :pswitch_3
    if-eqz p1, :cond_7

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->am:Landroid/view/View;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->am:Landroid/view/View;

    instance-of v4, v4, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    if-eqz v4, :cond_7

    .line 2150
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->am:Landroid/view/View;

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    .line 2151
    .local v0, "animationLayout":Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;
    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$15;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$15;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->setAnimationListener(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;)V

    .line 2185
    invoke-virtual {v0, v7}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->a(Z)V

    goto/16 :goto_0

    .line 2187
    .end local v0    # "animationLayout":Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;
    :cond_7
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    sget-object v5, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_TALKING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;)V

    .line 2188
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ai:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2189
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aj:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2190
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ak:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2191
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ae:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->o:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->af:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2193
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->o()V

    .line 2194
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->m()V

    .line 2195
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->k()V

    .line 2196
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->l()V

    goto/16 :goto_0

    .line 2200
    :pswitch_4
    sget-object v3, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v3}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v3

    invoke-direct {p0, v7, v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZI)V

    goto/16 :goto_0

    .line 2108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(ILcom/alibaba/wukong/openav/external/utils/VoipRinger$a;)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "callback"    # Lcom/alibaba/wukong/openav/external/utils/VoipRinger$a;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2782
    .line 18791
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInPSTN:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInConference:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 18792
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInBusinessConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 18793
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVideoConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 18794
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVoIP:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 18795
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalBusy:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 18796
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 18797
    :cond_0
    sget v1, Leuj$k;->in_busy:I

    .line 18811
    :goto_0
    if-lez v1, :cond_6

    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->q()Z

    move-result v0

    if-nez v0, :cond_6

    .line 18814
    iput-boolean v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->y:Z

    .line 18816
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p()V

    .line 18817
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-nez v0, :cond_1

    .line 18818
    new-instance v0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 18820
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    move v3, v2

    move v4, v2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a(IIZZZLcom/alibaba/wukong/openav/external/utils/VoipRinger$a;)V

    .line 18822
    :goto_1
    return v5

    .line 18798
    :cond_2
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInLive:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 18799
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalRemoteDoNotDisturb:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 18800
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 18801
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallingTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 18802
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalInconvenience:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 18803
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalArriveImmediately:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 18804
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallbackLater:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 18805
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 18806
    :cond_3
    sget v1, Leuj$k;->not_connected:I

    goto :goto_0

    .line 18807
    :cond_4
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_PhoneInInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 18808
    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 18809
    :cond_5
    sget v1, Leuj$k;->on_phone:I

    goto :goto_0

    :cond_6
    move v5, v2

    .line 2782
    goto :goto_1

    :cond_7
    move v1, v2

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->z:Z

    return v0
.end method

.method static synthetic aa(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->o()V

    return-void
.end method

.method static synthetic ab(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->m()V

    return-void
.end method

.method static synthetic ac(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    .line 30529
    sget v0, Leuj$l;->conf_txt_video_connected:I

    .line 30530
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->g:Z

    if-eqz v1, :cond_1

    .line 30531
    sget v0, Leuj$l;->dt_conference_accept_by_headset:I

    .line 30535
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b(I)V

    .line 31441
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$19;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$19;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    return-void

    .line 30532
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->D:Z

    if-eqz v1, :cond_0

    .line 30533
    sget v0, Leuj$l;->dt_conference_accept_by_bluetooth_headset:I

    goto :goto_0
.end method

.method static synthetic ad(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->E:Z

    return v0
.end method

.method static synthetic ae(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->x:Z

    return v0
.end method

.method static synthetic af(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->B:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->al:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->S:Ljava/lang/String;

    return-object p1
.end method

.method private b(I)V
    .locals 2
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2574
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2575
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d(Ljava/lang/String;)V

    .line 2576
    return-void
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errCode"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "rejectMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2405
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2429
    :goto_0
    return-void

    .line 2408
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->A:Z

    .line 2409
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "VoIP go to fail activity"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/conference/voip_fail.html"

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$18;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$18;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lied$b;)V
    .locals 3
    .param p1, "errorInfo"    # Lied$b;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2364
    if-nez p1, :cond_1

    .line 2373
    :cond_0
    :goto_0
    return-void

    .line 2368
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->i:Z

    if-nez v0, :cond_2

    iget v0, p1, Lied$b;->a:I

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_PhoneInInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 2369
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget v0, p1, Lied$b;->a:I

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 2370
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2371
    :cond_2
    iget v0, p1, Lied$b;->a:I

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p:Ljava/lang/String;

    iget-object v2, p1, Lied$b;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->M:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->P:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 28098
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZLcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 131
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->z:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->r:Ljava/lang/String;

    return-object p1
.end method

.method private static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 2579
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2583
    :goto_0
    return-void

    .line 2582
    :cond_0
    const/16 v0, 0x11

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-static {p0, v0, v1, v2}, Lcms;->a(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->y:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->D:Z

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->s:Ljava/lang/String;

    return-object p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2702
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2703
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2704
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2720
    :cond_0
    :goto_0
    return-void

    .line 2707
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2708
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->dt_common_i_know:I

    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$25;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$25;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 2709
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2716
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2717
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2718
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->g:Z

    return p1
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    .line 19091
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->dt_conference_voip_local_reject_title:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p:Ljava/lang/String;

    .line 19093
    const/4 v0, 0x0

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZI)V

    .line 19094
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "Reject the call"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->v:Z

    return v0
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    if-eqz v0, :cond_1

    .line 1722
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v0, p0}, Liee;->b(Lied$e;)V

    .line 1723
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v0, p0}, Liee;->b(Lied$c;)V

    .line 1724
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v0, p0}, Liee;->b(Lied$d;)V

    .line 1725
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v0, p0}, Liee;->b(Lied$h;)V

    .line 1726
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v0, p0}, Liee;->b(Lied$f;)V

    .line 1727
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1728
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v0}, Liee;->f()V

    .line 1730
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    .line 1733
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "Reset av sdk"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->l()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aa:Z

    return v0
.end method

.method private h()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1926
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v2, :cond_1

    .line 1927
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 1928
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v2, v0, :cond_0

    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v2, v0, :cond_0

    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1932
    .end local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    :cond_1
    return v1
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->v:Z

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ar:Landroid/view/View;

    return-object v0
.end method

.method private i()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 2270
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2280
    :cond_0
    :goto_0
    return v1

    .line 2273
    :cond_1
    const-wide/16 v2, 0x0

    .line 2275
    .local v2, "uid":J
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 2280
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2276
    :catch_0
    move-exception v0

    .line 2277
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2326
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2327
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2328
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2330
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    .line 20066
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$14;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$14;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    invoke-static {p0, v0}, Leyx;->a(Landroid/support/v4/app/Fragment;Lcpi$a;)V

    .line 131
    return-void
.end method

.method private k()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2469
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2500
    :cond_0
    :goto_0
    return-void

    .line 2472
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    if-eqz v4, :cond_0

    .line 2473
    const/4 v0, 0x0

    .line 2476
    .local v0, "audioMode":Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v4}, Liee;->q()Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v3

    .line 2477
    .local v3, "mode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    iget-boolean v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->g:Z

    if-eqz v4, :cond_3

    .line 2478
    const/4 v2, 0x0

    .line 2479
    .local v2, "enable":Z
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    .line 2496
    :cond_2
    :goto_1
    iput-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 2498
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    invoke-virtual {v4, v0, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;Z)V

    goto :goto_0

    .line 2481
    .end local v2    # "enable":Z
    :cond_3
    iget-boolean v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->Y:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->D:Z

    if-eqz v4, :cond_4

    .line 2482
    const/4 v2, 0x0

    .line 2483
    .restart local v2    # "enable":Z
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    goto :goto_1

    .line 2485
    .end local v2    # "enable":Z
    :cond_4
    const/4 v2, 0x1

    .line 2486
    .restart local v2    # "enable":Z
    iget-boolean v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->Y:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->D:Z

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    .line 2487
    .local v1, "bluetoothHeadsetValid":Z
    :goto_2
    sget-object v4, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v3, v4, :cond_7

    .line 2488
    if-eqz v1, :cond_6

    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_S_SPEAKER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    :goto_3
    goto :goto_1

    .line 2486
    .end local v1    # "bluetoothHeadsetValid":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 2488
    .restart local v1    # "bluetoothHeadsetValid":Z
    :cond_6
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_SPEAKER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    goto :goto_3

    .line 2489
    :cond_7
    sget-object v4, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v3, v4, :cond_9

    .line 2490
    if-eqz v1, :cond_8

    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_S_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    :goto_4
    goto :goto_1

    :cond_8
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    goto :goto_4

    .line 2491
    :cond_9
    sget-object v4, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->BluetoothHeadset:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v3, v4, :cond_2

    .line 2492
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_S_BLUETOOTH:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    goto :goto_1
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->Y:Z

    return v0
.end method

.method private l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2506
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2513
    :cond_0
    :goto_0
    return-void

    .line 2509
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    if-eqz v0, :cond_0

    .line 2510
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v0}, Liee;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->v:Z

    .line 2511
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->v:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Z)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->D:Z

    return v0
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->al:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2525
    :goto_0
    return-void

    .line 2519
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2520
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->al:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2521
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->al:Landroid/widget/TextView;

    sget v1, Leuj$l;->and_conf_voip_network_flow_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2523
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->al:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    .line 20614
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20617
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ap:Lewj;

    if-nez v0, :cond_0

    .line 20618
    new-instance v0, Lewj;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lewj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ap:Lewj;

    .line 20620
    :cond_0
    sget v0, Leuj$l;->dt_conference_voip_speaker_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Leuj$l;->icon_speaker_fill:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lewj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v3

    .line 20621
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    sget-object v4, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v0, v4, :cond_3

    move v0, v1

    .line 21093
    :goto_0
    iput-boolean v0, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->f:Z

    .line 20622
    sget v0, Leuj$l;->dt_conference_voip_receiver_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v4, Leuj$l;->icon_mobilephone_fill:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lewj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v4

    .line 20623
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    sget-object v5, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v0, v5, :cond_4

    move v0, v1

    .line 22093
    :goto_1
    iput-boolean v0, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->f:Z

    .line 20624
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->P:Ljava/lang/String;

    .line 20625
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 20626
    sget v0, Leuj$l;->dt_conference_voip_bluetooth_headset_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 20628
    :cond_1
    sget v5, Leuj$l;->icon_voip_bluetooth_fill:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lewj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v0

    .line 20629
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    sget-object v6, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->BluetoothHeadset:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v5, v6, :cond_5

    .line 23093
    :goto_2
    iput-boolean v1, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->f:Z

    .line 20631
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20632
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20633
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20634
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20636
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ap:Lewj;

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$21;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$21;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    .line 24079
    iput-object v2, v0, Lewj;->c:Lewj$b;

    .line 20664
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ap:Lewj;

    sget v2, Leuj$l;->dt_conference_voip_have_bluetooth_input:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lewj;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 131
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 20621
    goto :goto_0

    :cond_4
    move v0, v2

    .line 20623
    goto :goto_1

    :cond_5
    move v1, v2

    .line 20629
    goto :goto_2
.end method

.method static synthetic n(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->as:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    return-object v0
.end method

.method private n()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ao:Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    if-eqz v0, :cond_0

    .line 2601
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ao:Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->setVisibility(I)V

    .line 2602
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ao:Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a()V

    .line 2604
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    return-object v0
.end method

.method private o()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ao:Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    if-eqz v0, :cond_0

    .line 2608
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ao:Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->b()V

    .line 2609
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ao:Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->setVisibility(I)V

    .line 2611
    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_0

    .line 2844
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c()V

    .line 2845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 2847
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->k()V

    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    return-object v0
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    invoke-static {v0}, Lewp;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2879
    const/4 v1, 0x0

    .line 2880
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    if-nez v2, :cond_0

    .line 2881
    const/4 v2, 0x0

    .line 2887
    :goto_0
    return-object v2

    .line 2883
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v2}, Liee;->n()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2884
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 2885
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 2887
    goto :goto_0
.end method

.method static synthetic r(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    .line 25049
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    .line 25050
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v1, :cond_0

    .line 25051
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v1

    .line 25052
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v1, v2, :cond_1

    .line 25053
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->dt_conference_voip_local_cancel_title:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p:Ljava/lang/String;

    .line 25054
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "tele_invite_voip_cancel_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 25055
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "Cancel the call"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25056
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCancel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    .line 25062
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZI)V

    .line 131
    return-void

    .line 25057
    :cond_1
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v1, v2, :cond_0

    .line 25058
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "Hang-up the call"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25059
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic s(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    const-wide/16 v2, 0x0

    .line 131
    .line 25472
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h:Ljava/lang/String;

    .line 26109
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 25473
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 25476
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$30;

    invoke-direct {v4, p0, v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$30;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;J)V

    invoke-virtual {v2, v3, v4}, Lewh;->a(ZLcma;)V

    .line 131
    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    .line 26432
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26435
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Create syscall "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26437
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h:Ljava/lang/String;

    .line 27109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 26437
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->n:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->m:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 131
    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->at:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/utils/VoipRinger;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "duration"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ai:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ai:Landroid/widget/TextView;

    div-int/lit16 v1, p1, 0x3e8

    invoke-static {v1}, Leyr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 3
    .param p1, "localLevel"    # I
    .param p2, "remoteLevel"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x32

    .line 1156
    const-string/jumbo v0, ""

    .line 1157
    .local v0, "message":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->x:Z

    if-eqz v1, :cond_4

    .line 1158
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-lt p1, v2, :cond_1

    if-le p1, v2, :cond_2

    if-ge p2, v2, :cond_2

    .line 1161
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_local_bad_network:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1166
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1167
    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d(Ljava/lang/String;)V

    .line 1169
    :cond_3
    return-void

    .line 1164
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_local_bad_network:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1405
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Phone number:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    packed-switch p1, :pswitch_data_0

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1408
    :pswitch_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Phone incoming: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->C:Z

    if-nez v0, :cond_0

    .line 1410
    iput-boolean v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->C:Z

    .line 1411
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->N:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a(Z)V

    goto :goto_0

    .line 1415
    :pswitch_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Phone hang-up:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->C:Z

    if-eqz v0, :cond_1

    .line 1417
    iput-boolean v7, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->C:Z

    .line 1418
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d()V

    .line 1420
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v0}, Liee;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->k()V

    .line 1422
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 1423
    .local v6, "audioManager":Landroid/media/AudioManager;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v0}, Liee;->i()V

    goto/16 :goto_0

    .line 1429
    .end local v6    # "audioManager":Landroid/media/AudioManager;
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->C:Z

    if-eqz v0, :cond_2

    .line 1430
    iput-boolean v7, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->C:Z

    .line 1431
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d()V

    .line 17333
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 1435
    :goto_1
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_PhoneInInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    invoke-direct {p0, v7, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZI)V

    .line 1436
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Phone offhook: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17336
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->and_conf_voip_call_by_system_call:I

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->n:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 17337
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 17338
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 17339
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->o:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 17340
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->m:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 17341
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->n:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 17343
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->cancel:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 17344
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v2, Leuj$l;->dt_conf_callselect_btn_make_call:I

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 17346
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->q:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;)V

    goto :goto_1

    .line 1406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1220
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$5;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1230
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "errCode"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "extraDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1234
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Hang up callback "

    aput-object v4, v3, v6

    .line 1235
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    const-string/jumbo v5, ": "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1234
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_PhoneInInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1237
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1238
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_MediaInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1239
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p2, v1, :cond_6

    .line 1240
    :cond_0
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-eq p2, v1, :cond_1

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_MediaInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1241
    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 1242
    :cond_1
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v3, "Remote device init failed"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_fail_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p:Ljava/lang/String;

    .line 1248
    :goto_0
    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;

    invoke-direct {v1, p0, p2, p4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ILjava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ILcom/alibaba/wukong/openav/external/utils/VoipRinger$a;)Z

    move-result v0

    .line 1267
    .local v0, "ringValid":Z
    if-eqz v0, :cond_3

    .line 1283
    .end local v0    # "ringValid":Z
    :goto_1
    return-void

    .line 1245
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_remote_interrupt_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p:Ljava/lang/String;

    goto :goto_0

    .line 1270
    .restart local v0    # "ringValid":Z
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p:Ljava/lang/String;

    invoke-direct {p0, p2, v1, p4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1277
    .end local v0    # "ringValid":Z
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    if-eqz v1, :cond_5

    .line 1278
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->d(Z)V

    .line 1281
    :cond_5
    iput-boolean v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->M:Z

    .line 1282
    invoke-direct {p0, v7, p2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZI)V

    goto :goto_1

    .line 1271
    :cond_6
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCancel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p2, v1, :cond_7

    .line 1272
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_remote_cancel_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p:Ljava/lang/String;

    goto :goto_2

    .line 1273
    :cond_7
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_RecvDataTimeoutWarning:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    if-ne p2, v1, :cond_4

    .line 1274
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Callee data-timeout warning "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_EXCEPTION:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    invoke-direct {p0, v1, p2, p3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;Z)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "avCallState"    # Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .param p3, "b"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1183
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1184
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v3, "onAnswer Vibrator running"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    const-wide/16 v2, 0x64

    invoke-static {v1, v2, v3}, Lcms;->a(Landroid/content/Context;J)V

    .line 1188
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d()V

    .line 1190
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    if-eqz v1, :cond_2

    .line 1191
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v1}, Liee;->q()Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v0

    .line 1192
    .local v0, "mode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->g:Z

    if-nez v1, :cond_3

    .line 1196
    sget-object v1, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-eq v0, v1, :cond_3

    .line 1198
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->as:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    sget-object v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;->Running:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    if-ne v1, v2, :cond_1

    .line 1199
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    invoke-static {v1}, Lien;->a(Landroid/content/Context;)V

    .line 1206
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->Y:Z

    if-eqz v1, :cond_2

    .line 1207
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v1, v0}, Liee;->a(Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;)V

    .line 1210
    .end local v0    # "mode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    invoke-static {v1}, Lewp;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1211
    const/4 v1, 0x1

    .line 13098
    invoke-direct {p0, v1, v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZLcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 1215
    :goto_1
    return-void

    .line 1203
    .restart local v0    # "mode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    :cond_3
    invoke-static {}, Lien;->a()V

    goto :goto_0

    .line 1213
    .end local v0    # "mode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    :cond_4
    const/4 v1, 0x0

    .line 14098
    invoke-direct {p0, v1, v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZLcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "extraMsg"    # Ljava/lang/String;
    .param p2, "needPlayLocalRingtone"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1308
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aj:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1309
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aj:Landroid/widget/TextView;

    sget v3, Leuj$l;->and_conf_voip_state_be_answer:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1311
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->T:Z

    if-eqz v2, :cond_3

    .line 1312
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d()V

    .line 1313
    if-eqz p2, :cond_1

    .line 1314
    const/4 v2, 0x2

    invoke-direct {p0, v2, v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(IZ)V

    .line 1316
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v2, :cond_1

    .line 1317
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual {v2, v3, v4}, Lewr;->a(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;Z)V

    .line 1326
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1328
    const-string/jumbo v2, "[0-9]+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16109
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1330
    .local v0, "errCode":J
    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalSpeakerMuted:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v2}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 1332
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->al:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1333
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->al:Landroid/widget/TextView;

    sget v3, Leuj$l;->dt_conference_single_other_mute:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1337
    .end local v0    # "errCode":J
    :cond_2
    return-void

    .line 1322
    :cond_3
    if-nez p2, :cond_1

    .line 1323
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4
    .param p1, "connected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1351
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "network change "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->x:Z

    .line 1354
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v1, :cond_0

    .line 1355
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->m()V

    .line 1358
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->x:Z

    if-nez v0, :cond_2

    .line 16541
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ac:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 16542
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$20;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$20;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ac:Ljava/lang/Runnable;

    .line 16568
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ac:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16569
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ac:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->B:J

    .line 1361
    :cond_2
    return-void
.end method

.method public final a(ZZ)V
    .locals 8
    .param p1, "isPlugin"    # Z
    .param p2, "isEarPhone"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1366
    if-eqz p1, :cond_2

    .line 1367
    iput-boolean v7, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->g:Z

    .line 1368
    invoke-static {}, Lien;->a()V

    .line 1369
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_headset_in:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, "toast":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v2, :cond_0

    .line 1390
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 1391
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v2, :cond_0

    .line 1392
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->k()V

    .line 1393
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v2, :cond_0

    .line 1394
    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d(Ljava/lang/String;)V

    .line 1398
    .end local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    :cond_0
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Earphone plug state: "

    aput-object v5, v4, v6

    .line 1399
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ","

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1398
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    .end local v1    # "toast":Ljava/lang/String;
    :cond_1
    return-void

    .line 1371
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->g:Z

    if-eqz v2, :cond_1

    .line 1374
    iput-boolean v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->g:Z

    .line 1375
    if-eqz p2, :cond_3

    .line 1377
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->as:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    sget-object v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;->Running:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    if-ne v2, v3, :cond_3

    .line 1378
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    invoke-static {v2}, Lien;->a(Landroid/content/Context;)V

    .line 1381
    :cond_3
    if-eqz p2, :cond_4

    .line 1382
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_headset_out_ear_mode:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "toast":Ljava/lang/String;
    goto :goto_0

    .line 1384
    .end local v1    # "toast":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_voip_headset_out_speaker_mode:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "toast":Ljava/lang/String;
    goto :goto_0
.end method

.method public final a(ZZZ)V
    .locals 8
    .param p1, "bluetoothConnected"    # Z
    .param p2, "headsetConnected"    # Z
    .param p3, "audioConnected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1443
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Bluetooth headset: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 1444
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ","

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 1445
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, ","

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 1446
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1443
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->D:Z

    if-eq v3, p2, :cond_2

    .line 1448
    iput-boolean p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->D:Z

    .line 1451
    if-nez p2, :cond_3

    .line 1453
    sget-object v1, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 1454
    .local v1, "voiceMode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_conference_bluetooth_headset_out:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1460
    .local v2, "warnToast":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    if-eqz v3, :cond_0

    .line 1461
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->Y:Z

    if-eqz v3, :cond_4

    .line 1462
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v3, v1}, Liee;->a(Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;)V

    .line 1468
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->as:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    sget-object v4, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;->Running:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    if-ne v3, v4, :cond_1

    .line 1469
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    invoke-static {v3}, Lien;->a(Landroid/content/Context;)V

    .line 1472
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v3, :cond_2

    .line 1473
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v3}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 1474
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v3, :cond_2

    .line 1475
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->k()V

    .line 1476
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v3, :cond_2

    .line 1478
    invoke-direct {p0, v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Ljava/lang/String;)V

    .line 1483
    .end local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .end local v1    # "voiceMode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    .end local v2    # "warnToast":Ljava/lang/String;
    :cond_2
    iput-boolean p3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->E:Z

    .line 1485
    return-void

    .line 1456
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->r()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->P:Ljava/lang/String;

    .line 1457
    sget-object v1, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->BluetoothHeadset:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 1458
    .restart local v1    # "voiceMode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_conference_bluetooth_headset_in:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "warnToast":Ljava/lang/String;
    goto :goto_0

    .line 1464
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v3}, Liee;->h()V

    goto :goto_1
.end method

.method public final a(Lied$b;)Z
    .locals 17
    .param p1, "errorInfo"    # Lied$b;

    .prologue
    .line 981
    if-nez p1, :cond_0

    .line 982
    const/4 v11, 0x0

    .line 1134
    :goto_0
    return v11

    .line 985
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lied$b;->a:I

    .line 986
    .local v2, "errCode":I
    const-string/jumbo v3, ""

    .line 987
    .local v3, "message":Ljava/lang/String;
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "Error code "

    aput-object v15, v11, v14

    const/4 v14, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, " cause "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lied$b;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 988
    .local v10, "traceLog":Ljava/lang/String;
    const-string/jumbo v11, "tele_conf"

    sget-object v14, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    invoke-static {v11, v14, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_1

    .line 990
    const/16 v11, 0x9

    move-object/from16 v0, p1

    iget-object v14, v0, Lied$b;->b:Ljava/lang/String;

    invoke-static {v11, v14}, Lewc;->a(ILjava/lang/String;)V

    .line 992
    :cond_1
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalArriveImmediately:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_2

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallbackLater:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 993
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_2

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalInconvenience:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 994
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_2

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 995
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_2

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallingTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 996
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_2

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 997
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_2

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalRemoteDoNotDisturb:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 998
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_2

    .line 999
    sget-object v11, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_EXCEPTION:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    move-object/from16 v0, p1

    iget-object v14, v0, Lied$b;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2, v14}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V

    .line 1002
    :cond_2
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalBusy:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_3

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1003
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_3

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalRemoteDoNotDisturb:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1004
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_3

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInLive:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1005
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_8

    .line 1006
    :cond_3
    const-string/jumbo v11, "tele_conf"

    sget-object v14, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Call failed, errorCode:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->dt_conference_voip_remote_is_reject_title:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1079
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p:Ljava/lang/String;

    .line 12284
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalBusy:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12285
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalRemoteDoNotDisturb:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12286
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInLive:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12287
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12288
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallingTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12289
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetConnectFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12290
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRecvDataTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12291
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetConnectFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12292
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetDisconnect:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12293
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRemoteRecvDataTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12294
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRemoteMediaTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12295
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_MediaInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12296
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12297
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_PhoneInInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12298
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12299
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNoMicAuth:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12300
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalInconvenience:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12301
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalArriveImmediately:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12302
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_5

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallbackLater:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12303
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_1c

    :cond_5
    const/4 v4, 0x1

    .line 12307
    .local v4, "needEnterFailPage":Z
    :goto_2
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInPSTN:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_6

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInConference:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12308
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_6

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInBusinessConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12309
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_6

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVideoConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12310
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_6

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVoIP:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12311
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_6

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalBusy:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12312
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_6

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalReject:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12313
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_6

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInLive:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12314
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_6

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalRemoteDoNotDisturb:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12315
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_6

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12316
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_6

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallingTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12317
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_6

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalInconvenience:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12318
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_6

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalArriveImmediately:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12319
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_6

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallbackLater:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12320
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_6

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_PhoneInInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12321
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_6

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 12322
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_1d

    :cond_6
    const/4 v5, 0x1

    .line 1082
    .local v5, "needPlayRinger":Z
    :goto_3
    if-nez v4, :cond_7

    if-eqz v5, :cond_20

    .line 1083
    :cond_7
    if-eqz v5, :cond_21

    .line 1085
    new-instance v11, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v2, v4, v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;IZLied$b;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ILcom/alibaba/wukong/openav/external/utils/VoipRinger$a;)Z

    move-result v7

    .line 1113
    .local v7, "ringValid":Z
    invoke-static {}, Lewx;->k()Z

    move-result v11

    if-nez v11, :cond_1e

    if-eqz v7, :cond_1e

    .line 1114
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1008
    .end local v4    # "needEnterFailPage":Z
    .end local v5    # "needPlayRinger":Z
    .end local v7    # "ringValid":Z
    :cond_8
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInPSTN:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_9

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInConference:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1009
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_9

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInBusinessConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1010
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_9

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVideoConf:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1011
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_9

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalLocalInVoIP:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1012
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_a

    .line 1013
    :cond_9
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->dt_conference_voip_remote_busy_title:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1014
    :cond_a
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_b

    .line 1015
    const-string/jumbo v11, "tele_conf"

    sget-object v14, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Call failed, errorCode:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->i:Z

    if-eqz v11, :cond_4

    .line 1017
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->dt_conference_voip_remote_no_accept_title:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1019
    :cond_b
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallingTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_c

    .line 1020
    const-string/jumbo v11, "tele_conf"

    sget-object v14, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Call failed no ring, errorCode:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->i:Z

    if-eqz v11, :cond_4

    .line 1022
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->dt_conference_voip_remote_no_ring_title:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1024
    :cond_c
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetDisconnect:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_d

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRemoteRecvDataTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1025
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_d

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRemoteMediaTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1026
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_e

    .line 1027
    :cond_d
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->dt_conference_voip_local_badnet_title:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1028
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetDisconnect:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_4

    .line 1029
    sget-object v11, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_CONNECT_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    move-object/from16 v0, p1

    iget-object v14, v0, Lied$b;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2, v14}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1031
    :cond_e
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetConnectFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_f

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NetRecvDataTimeout:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1032
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_10

    .line 1033
    :cond_f
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->dt_conference_voip_local_badnet_title:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1034
    :cond_10
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_PhoneInInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_11

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1035
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_12

    .line 1036
    :cond_11
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->dt_conference_voip_remote_interrupt_title:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1037
    :cond_12
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_DeviceInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-eq v2, v11, :cond_13

    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_MediaInitFailed:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 1038
    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_14

    .line 1039
    :cond_13
    const-string/jumbo v11, "tele_conf"

    sget-object v14, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v15, "Device init failed"

    invoke-static {v11, v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->dt_conference_voip_fail_title:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1042
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v11

    invoke-virtual {v11}, Lccr;->c()J

    move-result-wide v12

    .line 1043
    .local v12, "uid":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1045
    .local v8, "time":J
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1046
    .local v6, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v11, "uid"

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    const-string/jumbo v11, "time"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v11

    const-string/jumbo v14, "phone_voip_device_init_fail"

    invoke-interface {v11, v14, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1050
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->F:Z

    .line 1052
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v11, :cond_4

    .line 1053
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v11}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v11

    sget-object v14, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v11, v14, :cond_4

    .line 1054
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1057
    .end local v6    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "time":J
    .end local v12    # "uid":J
    :cond_14
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalInconvenience:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_15

    .line 1058
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->and_conf_voip_remote_reject_tip:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1059
    :cond_15
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalArriveImmediately:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_16

    .line 1060
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->and_conf_voip_remote_reject_tip:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1061
    :cond_16
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallbackLater:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_17

    .line 1062
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->and_conf_voip_remote_reject_tip:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1063
    :cond_17
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalTopManagementModel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_18

    .line 1064
    const-string/jumbo v11, "tele_conf"

    sget-object v14, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v15, "The user is top manager."

    invoke-static {v11, v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->dt_conference_voip_remote_is_manager_title:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1066
    :cond_18
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalHidenInAddressList:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_19

    .line 1067
    const-string/jumbo v11, "tele_conf"

    sget-object v14, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v15, "The user is hide in address."

    invoke-static {v11, v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->dt_conference_voip_remote_limit_title:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1069
    :cond_19
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNoAuthorization:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_1a

    .line 1070
    const-string/jumbo v11, "tele_conf"

    sget-object v14, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v15, "The user is black list no auth"

    invoke-static {v11, v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->dt_conference_voip_remote_is_blacked_title_v2:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1072
    :cond_1a
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNonFriend:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_1b

    .line 1073
    const-string/jumbo v11, "tele_conf"

    sget-object v14, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v15, "The user is black list no friend"

    invoke-static {v11, v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->dt_conference_voip_remote_is_blacked_title:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1075
    :cond_1b
    sget-object v11, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNoMicAuth:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v11

    if-ne v2, v11, :cond_4

    .line 1076
    const-string/jumbo v11, "tele_conf"

    sget-object v14, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v15, "The remote mic is no auth."

    invoke-static {v11, v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Leuj$l;->dt_conference_voip_remote_no_mic_authority_title:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 12303
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 12322
    .restart local v4    # "needEnterFailPage":Z
    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1117
    .restart local v5    # "needPlayRinger":Z
    .restart local v7    # "ringValid":Z
    :cond_1e
    if-eqz v7, :cond_1f

    if-nez v4, :cond_1f

    .line 1119
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1122
    :cond_1f
    if-eqz v4, :cond_20

    .line 1123
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aa:Z

    .line 1125
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b(Lied$b;)V

    .line 1132
    .end local v7    # "ringValid":Z
    :cond_20
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->d(Z)V

    .line 1133
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZI)V

    .line 1134
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1129
    :cond_21
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b(Lied$b;)V

    goto :goto_4
.end method

.method public final b(ILjava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # I
    .param p2, "errReason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1504
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_RecvDataTimeoutWarning:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1505
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Caller data-timeout warning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    sget-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_EXCEPTION:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V

    .line 1508
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1287
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    if-nez v0, :cond_0

    .line 1304
    :goto_0
    return-void

    .line 1290
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "Answer the call complete"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->Y:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->D:Z

    if-nez v0, :cond_2

    .line 1293
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v0}, Liee;->h()V

    .line 1296
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->as:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;->Running:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    if-ne v0, v1, :cond_3

    .line 1297
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    invoke-static {v0}, Lien;->a(Landroid/content/Context;)V

    .line 1299
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    invoke-static {v0}, Lewp;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1300
    const/4 v0, 0x1

    .line 15098
    invoke-direct {p0, v0, v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZLcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    goto :goto_0

    .line 1302
    :cond_4
    const/4 v0, 0x0

    .line 16098
    invoke-direct {p0, v0, v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZLcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1490
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 1491
    .local v0, "callstate":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v1, v0, :cond_0

    .line 1492
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$7;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1500
    :cond_0
    return-void
.end method

.method public final c(ILjava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # I
    .param p2, "errReason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1512
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Abnorm warning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    sget-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_EXCEPTION:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V

    .line 1514
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1342
    return-void
.end method

.method public d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    if-eqz v0, :cond_0

    .line 2833
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "Stop ring"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b()V

    .line 2836
    :cond_0
    return-void
.end method

.method public final d(ILjava/lang/String;)V
    .locals 6
    .param p1, "errCode"    # I
    .param p2, "errReason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 1518
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "No notification callback "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    .line 1519
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ": "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1518
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    sget-object v0, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalRemoteCloseNotify:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->al:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1523
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->al:Landroid/widget/TextView;

    sget v1, Leuj$l;->dt_conference_voip_remote_no_notify_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1525
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .prologue
    .line 912
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 702
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 9878
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9879
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 9884
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 9888
    invoke-static {}, Leyb;->a()Leyb;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 9889
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$11;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$11;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    const-class v4, Leyo$d;

    .line 9922
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 9889
    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 9888
    invoke-virtual {v2, v1, v0}, Leyb;->a(Ljava/lang/Long;Leyo$d;)V

    .line 706
    :cond_0
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    .line 9936
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    if-nez v1, :cond_3

    .line 9937
    if-eqz v0, :cond_1

    .line 9938
    invoke-interface {v0, v6}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 9964
    :cond_1
    :goto_1
    return-void

    .line 9882
    :catch_0
    move-exception v0

    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v4, "Uid is invalid"

    invoke-static {v0, v1, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-wide v0, v2

    goto :goto_0

    .line 9942
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h:Ljava/lang/String;

    invoke-interface {v1, v2}, Liee;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v1

    .line 9943
    if-eqz v1, :cond_7

    .line 9944
    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v2

    .line 9945
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v2, v3, :cond_5

    .line 9947
    :cond_4
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Call is on "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9948
    if-eqz v0, :cond_1

    .line 9949
    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_1

    .line 9953
    :cond_5
    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->f()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->i:Z

    if-nez v2, :cond_7

    .line 9954
    :cond_6
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Call from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9955
    if-eqz v0, :cond_1

    .line 9956
    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_1

    .line 9961
    :cond_7
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->i:Z

    if-eqz v1, :cond_8

    .line 9962
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v3, "Make call for permission check"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9964
    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$13;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Lcma;)V

    invoke-static {p0, v1}, Leyx;->a(Landroid/support/v4/app/Fragment;Lcpi$a;)V

    goto/16 :goto_1

    .line 10018
    :cond_8
    if-eqz v0, :cond_1

    .line 10019
    invoke-interface {v0, v6}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 894
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 895
    instance-of v0, p1, Levs;

    if-eqz v0, :cond_0

    .line 896
    check-cast p1, Levs;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ab:Levs;

    .line 898
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 672
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3578
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 3579
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "user_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h:Ljava/lang/String;

    .line 3580
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "user_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->n:Ljava/lang/String;

    .line 3581
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "media_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->o:Ljava/lang/String;

    .line 3582
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "user_mobile"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->m:Ljava/lang/String;

    .line 3583
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3585
    const-string/jumbo v3, "conf_caller"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3586
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "conf_voip_to_pstn"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->j:Z

    .line 3587
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "conf_voip_call_to_pstn"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->k:Z

    .line 3588
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "conf_voip_extra"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->l:Ljava/lang/String;

    .line 3589
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "conf_voip_other_net"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->q:Ljava/lang/String;

    .line 3590
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "conversation_id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->t:Ljava/lang/String;

    .line 3591
    iput-boolean v7, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->i:Z

    .line 3599
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "conf_voip_effective_caller_id"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->Q:Ljava/lang/String;

    .line 3600
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "conf_voip_user_to_user"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->R:Ljava/lang/String;

    .line 675
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->i()Z

    move-result v0

    .line 677
    .local v0, "invalidUser":Z
    invoke-static {}, Leve;->a()Leve;

    move-result-object v2

    .line 4140
    iget-boolean v1, v2, Leve;->g:Z

    .line 678
    .local v1, "isFromUser":Z
    if-eqz v1, :cond_1

    if-eqz v0, :cond_4

    .line 679
    :cond_1
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "The call is from auto/user invalid: "

    aput-object v5, v4, v6

    .line 680
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ","

    aput-object v6, v4, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 679
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->j()V

    .line 7692
    :goto_1
    return-void

    .line 3592
    .end local v0    # "invalidUser":Z
    .end local v1    # "isFromUser":Z
    :cond_2
    const-string/jumbo v3, "conf_callee"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3593
    iput-boolean v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->i:Z

    goto :goto_0

    .line 3596
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "from"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->i:Z

    .line 3597
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "conf_voip_to_pstn"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->j:Z

    goto :goto_0

    .line 685
    .restart local v0    # "invalidUser":Z
    .restart local v1    # "isFromUser":Z
    :cond_4
    invoke-static {}, Leve;->a()Leve;

    move-result-object v2

    .line 5136
    iput-boolean v6, v2, Leve;->g:Z

    .line 5670
    const-string/jumbo v2, "tele_conf"

    invoke-static {v2}, Leyu;->a(Ljava/lang/String;)V

    .line 5671
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    .line 6050
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "voip_ringtone_update"

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 5672
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->T:Z

    .line 5673
    invoke-static {}, Lewx;->b()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->X:Z

    .line 6059
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-string/jumbo v3, "voip"

    const-string/jumbo v4, "voip_opt_p563_enable"

    .line 6060
    invoke-static {v4}, Lewx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6059
    invoke-virtual {v2, v3, v4, v6}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 5674
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->U:Z

    .line 6068
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-string/jumbo v3, "voip"

    const-string/jumbo v4, "voip_opt_RNNNoise_enable"

    .line 6069
    invoke-static {v4}, Lewx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6068
    invoke-virtual {v2, v3, v4, v6}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 5675
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->V:Z

    .line 6077
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "voip_weak_network_audio_tips_enable"

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 5676
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->W:Z

    .line 5677
    invoke-static {}, Lewx;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->Y:Z

    .line 6087
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-string/jumbo v3, "voip"

    const-string/jumbo v4, "voip_opt_agc_enable"

    .line 6088
    invoke-static {v4}, Lewx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6087
    invoke-virtual {v2, v3, v4, v6}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 5678
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->Z:Z

    .line 5679
    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;

    invoke-direct {v2, p0, v6}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;B)V

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aD:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;

    .line 5680
    new-instance v2, Lewj;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lewj;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ap:Lewj;

    .line 6737
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    if-eqz v2, :cond_5

    .line 6741
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    const-string/jumbo v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f:Landroid/hardware/SensorManager;

    .line 6742
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f:Landroid/hardware/SensorManager;

    if-nez v2, :cond_6

    .line 7687
    :cond_5
    :goto_2
    invoke-static {}, Liec;->b()Z

    move-result v2

    if-nez v2, :cond_8

    .line 7688
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v4, "AVEngine not initialized"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7689
    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_REG_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v3, "AVEngine not initialized"

    invoke-direct {p0, v2, v6, v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V

    .line 7691
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->j()V

    goto/16 :goto_1

    .line 6745
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 6747
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f:Landroid/hardware/SensorManager;

    const/4 v4, 0x3

    invoke-virtual {v3, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6752
    :goto_3
    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$9;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$9;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ad:Landroid/content/BroadcastReceiver;

    .line 6804
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 6805
    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6806
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6807
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6808
    const-string/jumbo v3, "com.alibaba.dingtalk.telebase.action.CONF_ENDING"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6809
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 6810
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ad:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6812
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ad:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 6814
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aC:Leys$a;

    if-nez v2, :cond_7

    .line 6815
    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$10;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aC:Leys$a;

    .line 6835
    :cond_7
    invoke-static {}, Leys;->a()Leys;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aC:Leys$a;

    invoke-virtual {v2, v3}, Leys;->a(Leys$a;)V

    goto :goto_2

    .line 6748
    :catch_0
    move-exception v2

    .line 6749
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 7694
    :cond_8
    const-class v2, Lier;

    invoke-static {v2}, Liec;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liee;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    .line 7696
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v2, p0}, Liee;->a(Lied$e;)V

    .line 7697
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v2, p0}, Liee;->a(Lied$c;)V

    .line 7698
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v2, p0}, Liee;->a(Lied$d;)V

    .line 7699
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v2, p0}, Liee;->a(Lied$h;)V

    .line 7700
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v2, p0}, Liee;->a(Lied$f;)V

    .line 7702
    invoke-static {}, Lewh;->a()Lewh;

    invoke-static {}, Lewh;->k()Z

    move-result v2

    .line 7703
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v3, v2}, Liee;->b(Z)V

    .line 7704
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->T:Z

    invoke-interface {v2, v3}, Liee;->c(Z)V

    .line 7705
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->U:Z

    invoke-interface {v2, v3}, Liee;->d(Z)V

    .line 7706
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->V:Z

    invoke-interface {v2, v3}, Liee;->e(Z)V

    .line 7707
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->W:Z

    invoke-interface {v2, v3}, Liee;->f(Z)V

    .line 7708
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->Z:Z

    invoke-interface {v2, v3}, Liee;->g(Z)V

    .line 7709
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v2}, Liee;->j()V

    .line 7710
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    .line 7711
    invoke-static {}, Lcpi;->d()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->N:Z

    .line 7713
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v4, "init av sdk"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 695
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 696
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->I:Landroid/view/View;

    .line 8605
    if-eqz v3, :cond_0

    .line 8608
    sget v0, Leuj$i;->voip_parent_view:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->am:Landroid/view/View;

    .line 8609
    sget v0, Leuj$i;->usr_avatar:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ae:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 8610
    sget v0, Leuj$i;->user_nick:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->af:Landroid/widget/TextView;

    .line 8611
    sget v0, Leuj$i;->user_position_name:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ag:Landroid/widget/TextView;

    .line 8612
    sget v0, Leuj$i;->user_company_name:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ah:Landroid/widget/TextView;

    .line 8613
    sget v0, Leuj$i;->usr_call_time:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ai:Landroid/widget/TextView;

    .line 8614
    sget v0, Leuj$i;->voip_call_state_txt:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aj:Landroid/widget/TextView;

    .line 8615
    sget v0, Leuj$i;->voip_call_state_dots:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ao:Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    .line 8617
    sget v0, Leuj$i;->voip_call_back:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ak:Landroid/view/View;

    .line 8618
    sget v0, Leuj$i;->voip_call_back_btn:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8619
    new-instance v4, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8645
    sget v0, Leuj$i;->voip_second_state_tv:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->al:Landroid/widget/TextView;

    .line 8647
    sget v0, Leuj$i;->voip_control_btns:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    .line 8648
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->au:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setLeftOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8649
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setMiddleClickListener(Landroid/view/View$OnClickListener;)V

    .line 8650
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->av:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setRightClickListener(Landroid/view/View$OnClickListener;)V

    .line 8651
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-boolean v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->i:Z

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setCaller(Z)V

    .line 8652
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ax:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setNormalCallListener(Landroid/view/View$OnClickListener;)V

    .line 8653
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->az:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setReplyMsgListener(Landroid/view/View$OnClickListener;)V

    .line 8654
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 9346
    :goto_0
    iput-boolean v0, v4, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a:Z

    .line 9347
    iget-boolean v0, v4, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a:Z

    if-eqz v0, :cond_2

    .line 9348
    iget-object v0, v4, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 9349
    iget-object v0, v4, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->c:Landroid/widget/ImageView;

    sget v5, Leuj$h;->voip_normal_call_recommend:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9350
    iget-object v0, v4, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->voip_operation_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8655
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aA:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setMsgListener(Landroid/view/View$OnClickListener;)V

    .line 8656
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aq:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setDingListener(Landroid/view/View$OnClickListener;)V

    .line 8658
    sget v0, Leuj$i;->voip_reject_with_message:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ar:Landroid/view/View;

    .line 8659
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ar:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ay:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8660
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ar:Landroid/view/View;

    .line 9717
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->i:Z

    if-nez v3, :cond_3

    invoke-static {}, Lewx;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8660
    :goto_2
    if-eqz v1, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8662
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->J:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 8663
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;

    if-eqz v0, :cond_0

    .line 8664
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->hideToolbar()V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->I:Landroid/view/View;

    return-object v0

    :cond_1
    move v0, v2

    .line 8654
    goto :goto_0

    .line 9352
    :cond_2
    iget-object v0, v4, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 9353
    iget-object v0, v4, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->c:Landroid/widget/ImageView;

    sget v5, Leuj$h;->voip_normal_call_unavailable:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9354
    iget-object v0, v4, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->uidic_global_color_6_7:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 9717
    goto :goto_2

    .line 8660
    :cond_4
    const/16 v2, 0x8

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 852
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 853
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v3, "VoIP frg destroy START"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->isLogin()Z

    move-result v0

    .line 856
    .local v0, "isLogin":Z
    if-nez v0, :cond_0

    .line 858
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VOIP:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v1, v2}, Lewv;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 860
    :cond_0
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v1

    invoke-virtual {v1, v4}, Lewv;->a(Liei$a;)V

    .line 861
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->at:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 862
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->at:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 863
    iput-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->at:Ljava/lang/Runnable;

    .line 11839
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 11844
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11849
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ad:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 11851
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ad:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11852
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ad:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 11856
    :goto_1
    iput-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ad:Landroid/content/BroadcastReceiver;

    .line 11859
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aC:Leys$a;

    if-eqz v1, :cond_3

    .line 11860
    invoke-static {}, Leys;->a()Leys;

    move-result-object v1

    invoke-virtual {v1}, Leys;->b()V

    .line 11861
    iput-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aC:Leys$a;

    .line 867
    :cond_3
    invoke-static {}, Lien;->a()V

    .line 869
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h()Z

    move-result v1

    if-nez v1, :cond_6

    .line 870
    :cond_4
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aa:Z

    if-nez v1, :cond_5

    .line 871
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->p()V

    .line 872
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v1

    invoke-virtual {v1}, Lewr;->b()V

    .line 11872
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aD:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;

    invoke-static {v1}, Leyz;->b(Liei$a;)V

    .line 877
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    const/16 v2, 0x2711

    invoke-static {v1, v2}, Lewp;->c(Landroid/content/Context;I)V

    .line 878
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v3, "ending really"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :cond_6
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aa:Z

    if-nez v1, :cond_7

    .line 882
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->g()V

    .line 884
    :cond_7
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v3, "VoIP frg destroy"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    return-void

    .line 11845
    :catch_0
    move-exception v1

    .line 11846
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 11853
    :catch_1
    move-exception v1

    .line 11854
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 902
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDetach()V

    .line 903
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ab:Levs;

    .line 904
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 818
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onPause()V

    .line 819
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 812
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onResume()V

    .line 813
    const/4 v0, 0x0

    .line 11098
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZLcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 814
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 917
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    if-nez v3, :cond_1

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v3, v4

    .line 922
    .local v1, "distance":F
    const-string/jumbo v5, "tele_conf"

    sget-object v6, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onSensorChanged distance: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "; "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 923
    invoke-virtual {v3}, Landroid/hardware/Sensor;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 922
    invoke-static {v5, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    sget-object v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;->Preparation:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->as:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    if-ne v3, v5, :cond_3

    .line 925
    sget-object v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;->Ready:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    iput-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->as:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    .line 927
    const/4 v3, 0x0

    cmpl-float v3, v3, v1

    if-nez v3, :cond_3

    .line 928
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v5, "onSensorChanged proximity sensor disabled ."

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    sget-object v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;->Preparation:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    iput-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->as:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    goto :goto_0

    .line 923
    :cond_2
    const-string/jumbo v3, ""

    goto :goto_1

    .line 935
    :cond_3
    sget-object v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;->Ready:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->as:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    if-ne v3, v5, :cond_5

    .line 936
    const-string/jumbo v3, "tele_conf"

    sget-object v5, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v6, "onSensorChanged proximity sensor startup."

    invoke-static {v3, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    sget-object v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;->Running:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    iput-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->as:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$SensorStatus;

    .line 940
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v3}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 941
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v3, :cond_4

    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v3, :cond_5

    .line 943
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    invoke-static {v3}, Lien;->a(Landroid/content/Context;)V

    .line 946
    .end local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    :cond_5
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    .line 947
    .local v2, "maxRange":F
    float-to-double v6, v1

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_6

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_6

    cmpg-float v3, v1, v2

    if-gez v3, :cond_6

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->O:Z

    goto/16 :goto_0

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method public onStart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 804
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onStart()V

    .line 10867
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aD:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;

    invoke-static {v0}, Leyz;->a(Liei$a;)V

    .line 807
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VOIP:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lewv;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 808
    return-void
.end method

.method public onStop()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 823
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onStop()V

    .line 824
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "VoIP frg STOP"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->w:Z

    if-nez v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    invoke-static {v0}, Lewp;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->h:Ljava/lang/String;

    .line 830
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->o:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->i:Z

    iget-boolean v7, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->j:Z

    .line 829
    invoke-virtual/range {v1 .. v7}, Lewv;->a(JLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 835
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->aD:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;

    invoke-virtual {v0, v1}, Lewv;->a(Liei$a;)V

    .line 836
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VOIP:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lewv;->a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 837
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "Show floating view in onStop"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VOIP:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lewv;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 841
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "Stop floating view in onStop"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ap:Lewj;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ap:Lewj;

    invoke-virtual {v0}, Lewj;->a()V

    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->ap:Lewj;

    goto :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 889
    sget v0, Leuj$j;->teleconf_waiting_for_voip_call_v2:I

    return v0
.end method
