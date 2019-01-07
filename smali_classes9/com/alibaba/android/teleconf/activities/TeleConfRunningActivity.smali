.class public Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleConfRunningActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$b;,
        Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;,
        Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/view/View;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/view/View;

.field private H:Landroid/view/View;

.field private I:Landroid/widget/TextView;

.field private J:Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

.field private K:Landroid/widget/RelativeLayout;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/RelativeLayout;

.field private N:Landroid/view/View;

.field private O:Landroid/view/View;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/view/View;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/view/View;

.field private V:Landroid/view/View;

.field private W:Landroid/view/View;

.field private X:Leze;

.field private Y:Landroid/view/View;

.field private Z:Landroid/widget/TextView;

.field private aA:Z

.field private aB:I

.field private aC:Ljava/lang/String;

.field private aD:J

.field private aE:I

.field private aF:Z

.field private aG:Z

.field private aH:Z

.field private aI:Z

.field private aJ:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

.field private aK:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

.field private aL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

.field private aM:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

.field private aN:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

.field private aO:Ldq;

.field private aP:Landroid/content/BroadcastReceiver;

.field private aQ:Landroid/content/BroadcastReceiver;

.field private aR:Landroid/content/BroadcastReceiver;

.field private aS:Landroid/content/BroadcastReceiver;

.field private aT:Landroid/content/BroadcastReceiver;

.field private aU:Landroid/os/Handler;

.field private aV:Ljava/lang/Runnable;

.field private aW:Ljava/lang/Runnable;

.field private aX:Ljava/lang/Runnable;

.field private aY:Ljava/lang/Runnable;

.field private aa:Landroid/widget/TextView;

.field private ab:Landroid/view/View;

.field private ac:Landroid/widget/ImageView;

.field private ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

.field private ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

.field private af:Leuv;

.field private ag:Levv;

.field private ah:Lewk;

.field private ai:Z

.field private aj:J

.field private ak:J

.field private al:Ljava/util/Timer;

.field private am:Ljava/lang/String;

.field private an:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private ao:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private ap:I

.field private aq:I

.field private ar:Z

.field private as:Z

.field private at:Z

.field private volatile au:Z

.field private av:Z

.field private aw:Z

.field private ax:Z

.field private ay:Ljava/lang/String;

.field private az:Z

.field public b:Landroid/widget/RelativeLayout;

.field public c:Landroid/view/View;

.field public d:Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/TextView;

.field public j:Lezd;

.field public k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:I

.field public o:Z

.field private p:Landroid/widget/GridView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ai:Z

    .line 213
    iput v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap:I

    .line 214
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n:I

    .line 215
    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aq:I

    .line 216
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ar:Z

    .line 218
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->at:Z

    .line 227
    iput v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aB:I

    .line 230
    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aE:I

    .line 231
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aF:Z

    .line 232
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aG:Z

    .line 233
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aH:Z

    .line 234
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aI:Z

    .line 249
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aU:Landroid/os/Handler;

    .line 251
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aW:Ljava/lang/Runnable;

    .line 266
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$12;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aX:Ljava/lang/Runnable;

    .line 274
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$21;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$21;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aY:Ljava/lang/Runnable;

    .line 3364
    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->B:Landroid/view/View;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k()V

    return-void
.end method

.method static synthetic D(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aE:I

    return v0
.end method

.method static synthetic E(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aM:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    return-object v0
.end method

.method static synthetic F(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ar:Z

    return v0
.end method

.method static synthetic G(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic H(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    const/16 v7, 0x8

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 117
    .line 22609
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22610
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 22611
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v3

    move v0, v1

    .line 22612
    :goto_0
    if-ge v0, v3, :cond_1

    .line 22613
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v4

    .line 22614
    if-eqz v4, :cond_0

    iget-object v5, v4, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v5, :cond_0

    .line 22615
    iget-object v4, v4, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22612
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22620
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->X:Leze;

    if-eqz v0, :cond_2

    .line 22621
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->X:Leze;

    .line 23190
    iget-object v0, v0, Leze;->b:Lezd;

    .line 22622
    if-eqz v0, :cond_2

    iget-object v3, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_2

    .line 22623
    iget-object v0, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22627
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    if-nez v0, :cond_3

    .line 22628
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    .line 22630
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    sget v3, Leuj$l;->conf_txt_notepad_minutes:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 24130
    iput-object v3, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->e:Ljava/lang/String;

    .line 22631
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3, v6}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->a(Ljava/lang/String;Z)V

    .line 22632
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    sget v3, Leuj$l;->and_conf_pwd_share_by_sms:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 24139
    iput-object v3, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->f:Ljava/lang/String;

    .line 22633
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$17;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$17;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 24163
    iput-object v3, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->a:Landroid/view/View$OnClickListener;

    .line 22641
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    .line 25155
    iput-boolean v6, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->h:Z

    .line 22642
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$18;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$18;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 25159
    iput-object v3, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->b:Landroid/view/View$OnClickListener;

    .line 22649
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    .line 26151
    iput-boolean v6, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->j:Z

    .line 22650
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    sget v3, Leuj$l;->conf_txt_notepad_send_msg_toself:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 27147
    iput-object v3, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->g:Ljava/lang/String;

    .line 22651
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$19;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$19;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 27167
    iput-object v3, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->c:Landroid/view/View$OnClickListener;

    .line 22665
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    sget v3, Leuj$l;->conf_txt_notepad_send_msg_togroup:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 28139
    iput-object v3, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->f:Ljava/lang/String;

    .line 22666
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    .line 28143
    iput-boolean v6, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->i:Z

    .line 22667
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$20;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$20;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/util/List;)V

    .line 28171
    iput-object v3, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->d:Landroid/view/View$OnClickListener;

    .line 22680
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 22706
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->setCanceledOnTouchOutside(Z)V

    .line 22708
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 22709
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ay:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 22710
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->a(Ljava/lang/String;)V

    .line 22711
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22712
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22714
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->show()V

    .line 22715
    iput-boolean v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ax:Z

    .line 117
    :cond_5
    return-void
.end method

.method static synthetic I(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ac:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic J(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->am:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic K(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->j()V

    return-void
.end method

.method static synthetic L(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic M(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O:Landroid/view/View;

    return-object v0
.end method

.method static synthetic N(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d:Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;

    return-object v0
.end method

.method static synthetic O(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lezd;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->j:Lezd;

    return-object v0
.end method

.method public static synthetic P(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aY:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic Q(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aN:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    return-object v0
.end method

.method static synthetic R(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic S(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    return-object v0
.end method

.method static synthetic T(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aA:Z

    return v0
.end method

.method static synthetic U(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic V(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->u:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic W(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->y:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic X(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    return-object v0
.end method

.method static synthetic Y(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Z(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aJ:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # J

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aj:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aK:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leuv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(JLjava/lang/String;)V
    .locals 11
    .param p1, "toUid"    # J
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 2182
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2220
    :goto_0
    return-void

    .line 2185
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2186
    .local v7, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2187
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, v7, v9}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    .line 2188
    .local v3, "icon":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, v7, v9}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v2

    .line 2189
    .local v2, "title":Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2190
    .local v8, "uid":Ljava/lang/Long;
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "To "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    .line 2192
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$41;

    invoke-direct {v4, p0, p3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$41;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v4, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    const/4 v4, 0x0

    new-array v6, v5, [Ljava/lang/Long;

    aput-object v8, v6, v9

    .line 2191
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 2882
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 2883
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2884
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2885
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 2886
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2890
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :goto_0
    return-void

    .line 2888
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # I

    .prologue
    .line 117
    .line 22472
    if-lez p1, :cond_1

    .line 22473
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 22474
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->A:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22475
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->A:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    .line 22478
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 22479
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->A:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;JLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;JZ)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 117
    const-wide/16 v0, 0x12c

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(JZ)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Landroid/view/View;ZJ[F)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z
    .param p3, "x3"    # J
    .param p5, "x4"    # [F

    .prologue
    .line 117
    .line 41462
    const-string/jumbo v0, "scaleX"

    invoke-static {p1, v0, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 41463
    const-string/jumbo v1, "scaleY"

    invoke-static {p1, v1, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 41464
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 41465
    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$b;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$b;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 41466
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 41467
    invoke-virtual {v2, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 41468
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    .line 28727
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28730
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    if-nez v0, :cond_0

    .line 28731
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    .line 28733
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    sget v1, Leuj$l;->and_conf_pwd_share_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29130
    iput-object v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->e:Ljava/lang/String;

    .line 28734
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    invoke-virtual {v0, p1, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->a(Ljava/lang/String;Z)V

    .line 28735
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    sget v1, Leuj$l;->and_conf_pwd_share_by_sms:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29139
    iput-object v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->f:Ljava/lang/String;

    .line 28736
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    .line 29143
    iput-boolean v3, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->i:Z

    .line 28737
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$23;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$23;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 29171
    iput-object v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->d:Landroid/view/View$OnClickListener;

    .line 28748
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    sget v1, Leuj$l;->and_conf_pwd_share_by_dingtalk:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 30147
    iput-object v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->g:Ljava/lang/String;

    .line 28749
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$24;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$24;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 30167
    iput-object v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->c:Landroid/view/View$OnClickListener;

    .line 28761
    const/4 v0, 0x0

    invoke-static {v0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28762
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    .line 31151
    iput-boolean v2, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->j:Z

    .line 28767
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    .line 32155
    iput-boolean v2, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->h:Z

    .line 28768
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$25;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$25;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 32163
    iput-object v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->a:Landroid/view/View$OnClickListener;

    .line 28775
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->setCanceledOnTouchOutside(Z)V

    .line 28777
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28778
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->show()V

    .line 28779
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->az:Z

    .line 117
    :cond_1
    return-void

    .line 28764
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    .line 32151
    iput-boolean v3, v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->j:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 117
    .line 39908
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ai:Z

    if-eqz v0, :cond_1

    .line 39911
    :cond_0
    :goto_0
    return-void

    .line 39913
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39914
    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 39916
    if-eqz p3, :cond_3

    .line 39918
    invoke-static {}, Lewx;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Leuj$l;->dt_conference_create_audio_conf_ext:I

    .line 39924
    :goto_1
    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$33;

    invoke-direct {v2, p0, v1, p3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$33;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 39939
    sget v0, Leuj$l;->and_conference_dialog_go_recharge:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$34;

    invoke-direct {v2, p0, v1, p2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$34;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 39950
    sget v0, Leuj$l;->login_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$35;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$35;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 39961
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 39962
    if-eqz v0, :cond_0

    .line 39963
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 39966
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "call_telconf_balance_out_alert"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 39968
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 39918
    :cond_2
    sget v0, Leuj$l;->dt_conference_create_audio_conf:I

    goto :goto_1

    .line 39922
    :cond_3
    sget v0, Leuj$l;->dt_conference_create_video_conf:I

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 117
    .line 39023
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ai:Z

    if-eqz v0, :cond_1

    .line 39026
    :cond_0
    :goto_0
    return-void

    .line 39028
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39030
    if-eqz p2, :cond_3

    .line 39032
    invoke-static {}, Lewx;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Leuj$l;->dt_conference_create_audio_conf_ext:I

    .line 39038
    :goto_1
    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 39039
    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$38;

    invoke-direct {v2, p0, v1, p2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$38;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 39052
    sget v0, Leuj$l;->login_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$39;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$39;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 39062
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 39063
    if-eqz v0, :cond_0

    .line 39064
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 39067
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "call_telconf_emp_balance_out_alert"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 39069
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 39032
    :cond_2
    sget v0, Leuj$l;->dt_conference_create_audio_conf:I

    goto :goto_1

    .line 39036
    :cond_3
    sget v0, Leuj$l;->dt_conference_create_video_conf:I

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/util/List;)V
    .locals 13
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 117
    .line 19378
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 19379
    :cond_0
    :goto_0
    return-void

    .line 19381
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Z)V

    .line 19382
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aq:I

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 19383
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_6

    .line 19384
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 19386
    :goto_1
    new-instance v4, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    move v2, v3

    .line 19387
    :goto_2
    if-ge v2, v1, :cond_3

    .line 19388
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 19389
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v5

    if-nez v5, :cond_2

    .line 19392
    invoke-static {}, Levi;->p()Levi;

    move-result-object v5

    invoke-virtual {v5}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v5

    .line 19393
    iget-object v6, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19394
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    .line 19395
    invoke-static {}, Levi;->p()Levi;

    move-result-object v6

    iget-object v7, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Levi;->a(Ljava/lang/Long;)V

    .line 19396
    invoke-static {}, Levi;->p()Levi;

    move-result-object v6

    iget-object v7, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-virtual {v6, v7}, Levi;->a(Ljava/util/List;)V

    .line 19398
    iget-object v6, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 19402
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v6, v0, v3, v12}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZI)V

    .line 19403
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ah:Lewk;

    invoke-virtual {v6, v0}, Lewk;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 19404
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    sget v7, Leuj$l;->conf_txt_connecting:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    iget-object v5, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->c(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 20034
    invoke-virtual {v6, v8, v9, v5, v3}, Leuv;->a(JLjava/lang/String;I)V

    .line 19406
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 19407
    add-int/lit8 v0, v1, -0x1

    if-ge v2, v0, :cond_2

    .line 19408
    const-string/jumbo v0, ","

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 19387
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 19412
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aq:I

    if-ge v0, v1, :cond_4

    .line 19413
    invoke-static {}, Lewg;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19414
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "addTail false"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19416
    sget v0, Leuj$l;->conf_txt_guide_add_member_tip:I

    new-array v1, v12, [Ljava/lang/Object;

    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19417
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/String;Z)V

    .line 19420
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    .line 20041
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->notifyDataSetChanged()V

    .line 19422
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19423
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Add mems: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19424
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aK:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    if-nez v1, :cond_5

    .line 19425
    new-instance v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aK:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    .line 19427
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aK:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_MEMADD_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->b:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 19428
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aK:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->a:Ljava/lang/String;

    .line 19429
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aK:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->d:J

    .line 19430
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aK:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    const-string/jumbo v2, "add"

    iput-object v2, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->e:Ljava/lang/String;

    .line 19431
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aK:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    iput-object v0, v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->c:Ljava/lang/String;

    .line 19432
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aU:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 19433
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aU:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aX:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_6
    move v1, v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 117
    .line 32223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 32245
    :cond_0
    :goto_0
    return-void

    .line 32227
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 32228
    const/4 v0, 0x2

    if-gt v3, v0, :cond_5

    .line 32229
    const/4 v1, 0x0

    .line 32230
    :goto_1
    if-ge v2, v3, :cond_4

    .line 32231
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 32232
    if-nez v0, :cond_3

    move-object v0, v1

    .line 32230
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_1

    .line 32236
    :cond_3
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 32240
    :cond_4
    if-eqz v1, :cond_0

    .line 32243
    iget-wide v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-direct {p0, v0, v1, p2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 32246
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 32247
    :goto_3
    if-ge v1, v3, :cond_8

    .line 32248
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 32249
    if-nez v0, :cond_6

    .line 32247
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 32254
    :cond_6
    invoke-static {}, Levi;->p()Levi;

    move-result-object v5

    invoke-virtual {v5}, Levi;->h()J

    move-result-wide v6

    .line 32255
    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_7

    .line 32256
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 32258
    :cond_7
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 32262
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 32265
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "To "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32266
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aJ:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    if-nez v0, :cond_9

    .line 32267
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aJ:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    .line 32269
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aJ:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_MINUTES_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->b:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 32270
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aJ:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    invoke-virtual {v1}, Levi;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->a:Ljava/lang/String;

    .line 32271
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aJ:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->d:J

    .line 32273
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    .line 32274
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$42;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$42;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 32273
    invoke-virtual {v1, v4, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0
.end method

.method private a(Z)V
    .locals 3
    .param p1, "isSend"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    if-eqz v0, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ay:Ljava/lang/String;

    .line 2168
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ay:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2179
    :goto_0
    return-void

    .line 2173
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ay:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aH:Z

    return v0
.end method

.method static synthetic aa(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->K:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic ab(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->L:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic ac(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 117
    .line 33932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33933
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aj:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ak:J

    .line 33934
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ak:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 33935
    iput-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aj:J

    .line 33936
    iput-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ak:J

    .line 33937
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Levi;->a(J)V

    .line 33940
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q()V

    .line 34599
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n()Z

    move-result v0

    if-nez v0, :cond_3

    .line 34600
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c()V

    .line 34601
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d()V

    .line 33943
    :goto_0
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ak:J

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    .line 33945
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Q:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 33946
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Q:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 33947
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->P:Landroid/widget/TextView;

    invoke-static {v0}, Leyr;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33949
    :cond_1
    int-to-long v2, v0

    const-wide/16 v4, 0x3c

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 33950
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "Duration: "

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_2
    return-void

    .line 34603
    :cond_3
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    .line 35047
    iget-boolean v0, v0, Levi;->r:Z

    .line 34603
    if-eqz v0, :cond_4

    .line 34604
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    .line 36043
    iput-boolean v6, v0, Levi;->r:Z

    .line 34605
    iput-boolean v7, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->as:Z

    .line 34607
    :cond_4
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    .line 36055
    iget-boolean v0, v0, Levi;->s:Z

    .line 34607
    if-eqz v0, :cond_5

    .line 34608
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    .line 37051
    iput-boolean v6, v0, Levi;->s:Z

    .line 34611
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;)I

    move-result v0

    .line 34612
    invoke-static {}, Lewg;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 34613
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->X:Leze;

    invoke-virtual {v0}, Leze;->b()I

    move-result v0

    .line 34615
    :cond_6
    if-nez v0, :cond_7

    .line 34616
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c()V

    .line 34617
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d()V

    goto :goto_0

    .line 34618
    :cond_7
    if-ne v0, v8, :cond_8

    .line 34619
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b()V

    .line 34620
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e()V

    goto/16 :goto_0

    .line 34625
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c()V

    .line 34626
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e()V

    goto/16 :goto_0
.end method

.method static synthetic ad(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r()V

    return-void
.end method

.method static synthetic ae(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 117
    .line 37819
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ai:Z

    if-eqz v0, :cond_1

    .line 37822
    :cond_0
    :goto_0
    return-void

    .line 38025
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 38026
    if-eqz v0, :cond_3

    .line 38027
    iget-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isOrgUser:Z

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 38028
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 38029
    if-eqz v0, :cond_2

    .line 38032
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v5, :cond_2

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->authLevel:I

    if-ne v0, v1, :cond_2

    :cond_3
    move v1, v3

    .line 37826
    :cond_4
    :goto_1
    if-ne v3, v1, :cond_6

    .line 37827
    sget v0, Leuj$l;->dt_conference_org_time_over:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37831
    :goto_2
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37832
    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 37833
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$28;

    invoke-direct {v0, p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$28;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 37841
    if-ne v3, v1, :cond_7

    .line 37842
    sget v0, Leuj$l;->dt_common_i_know:I

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$29;

    invoke-direct {v1, p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$29;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 37883
    :goto_3
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 38038
    goto :goto_1

    .line 37829
    :cond_6
    sget v0, Leuj$l;->dt_conference_team_time_over:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 37851
    :cond_7
    sget v0, Leuj$l;->conf_txt_conference_add_more_time:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$30;

    invoke-direct {v3, p0, v4, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$30;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;I)V

    invoke-virtual {v4, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 37873
    sget v0, Leuj$l;->cancel:I

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$31;

    invoke-direct {v1, p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$31;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_3
.end method

.method static synthetic af(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    .line 39887
    const-string/jumbo v1, ""

    .line 39888
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ao:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v0, :cond_1

    .line 39889
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ao:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 39890
    if-eqz v0, :cond_1

    .line 39891
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 39892
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v3, :cond_0

    .line 39893
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 39894
    if-eqz v0, :cond_1

    .line 39895
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    .line 117
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic ag(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->p()V

    return-void
.end method

.method static synthetic ah(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->s()V

    return-void
.end method

.method static synthetic ai(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic aj(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d()V

    return-void
.end method

.method public static synthetic ak(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aX:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic al(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aH:Z

    return v0
.end method

.method public static synthetic am(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b()V

    return-void
.end method

.method static synthetic an(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic ao(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->M:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic ap(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->N:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aB:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aD:J

    return-wide v0
.end method

.method public static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ay:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1486
    invoke-static {}, Lewg;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1487
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1488
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1489
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ar:Z

    .line 1490
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ar:Z

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_cancel_mute:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1492
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->conf_call_and_video_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1493
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q:Landroid/widget/TextView;

    sget v1, Leuj$h;->conf_panel_unmute_bg_shape:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1503
    :goto_0
    return-void

    .line 1495
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_mute_everyone:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1496
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->pure_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1497
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q:Landroid/widget/TextView;

    sget v1, Leuj$h;->conf_panel_mute_bg_shape:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1500
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1501
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 117
    .line 39973
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ai:Z

    if-eqz v0, :cond_1

    .line 39976
    :cond_0
    :goto_0
    return-void

    .line 39980
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39982
    if-eqz p2, :cond_3

    .line 39984
    invoke-static {}, Lewx;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Leuj$l;->dt_conference_create_audio_conf_ext:I

    .line 39990
    :goto_1
    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 39991
    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$36;

    invoke-direct {v2, p0, v1, p2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$36;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 40003
    sget v0, Leuj$l;->login_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$37;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$37;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 40013
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 40014
    if-eqz v0, :cond_0

    .line 40015
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 40017
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "call_teleconf_no_privilege_alert"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 40018
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 39984
    :cond_2
    sget v0, Leuj$l;->dt_conference_create_audio_conf:I

    goto :goto_1

    .line 39988
    :cond_3
    sget v0, Leuj$l;->dt_conference_create_video_conf:I

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 117
    .line 20320
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 20321
    :cond_0
    :goto_0
    return-void

    .line 20324
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    if-nez v0, :cond_3

    .line 20325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    .line 20330
    :goto_1
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 20331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20332
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 20333
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 20334
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 20337
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20339
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 20340
    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 20327
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 20343
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20344
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Z)V

    .line 20345
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v9, v8, v3}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/util/List;ZZI)V

    .line 20346
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v0

    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aq:I

    if-ge v0, v2, :cond_5

    .line 20347
    const-string/jumbo v0, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "addTail false"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20349
    sget v0, Leuj$l;->conf_txt_guide_add_member_tip:I

    new-array v2, v9, [Ljava/lang/Object;

    iget v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20350
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v2, v0, v8}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/String;Z)V

    .line 20352
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    .line 21041
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->notifyDataSetChanged()V

    .line 20354
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 20355
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$16;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$16;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 20368
    :cond_6
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aF:Z

    if-nez v0, :cond_7

    .line 20369
    iput-boolean v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aF:Z

    .line 20370
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    sget v2, Leuj$l;->conf_txt_make_conf_prompt:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    .line 22034
    invoke-virtual {v0, v4, v5, v2, v8}, Leuv;->a(JLjava/lang/String;I)V

    .line 20373
    :cond_7
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20374
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Add mems for create: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 12
    .param p1, "addMem"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 2381
    .line 13432
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ao:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-nez v1, :cond_3

    move v0, v3

    .line 2382
    .local v0, "getData":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 14388
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aU:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 14389
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aU:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aW:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14390
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aU:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aW:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7530

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14393
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aD:J

    .line 14394
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    .line 15075
    iput-boolean v3, v1, Levi;->v:Z

    .line 14395
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ah:Lewk;

    .line 15081
    const-string/jumbo v2, "tele_conf"

    sget-object v4, Lewk;->a:Ljava/lang/String;

    const-string/jumbo v6, "createConference"

    invoke-static {v2, v4, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15082
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v2

    .line 15086
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcms;->e(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 15087
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lewb;->b(Landroid/content/Context;)V

    .line 15088
    invoke-virtual {v1, v5}, Lewk;->b(Z)V

    .line 14397
    :cond_1
    :goto_1
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aE:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aE:I

    .line 14399
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k()V

    .line 14401
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Q:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14402
    invoke-static {p0}, Lewp;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 14403
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    sget v2, Leuj$l;->conf_txt_created:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 17034
    invoke-virtual {v1, v6, v7, v2, v3}, Leuv;->a(JLjava/lang/String;I)V

    .line 14404
    iput-boolean v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->au:Z

    :cond_2
    :goto_2
    return-void

    .line 13435
    .end local v0    # "getData":Z
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 13436
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ao:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 13438
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 13439
    const v4, 0x7fffffff

    move v2, v3

    .line 13440
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_d

    .line 13441
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_6

    .line 13446
    :goto_4
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 13447
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13449
    :cond_4
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "createConference, cid "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", users number "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13452
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 13453
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13461
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    invoke-virtual {v1}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v4

    .line 13462
    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    .line 13463
    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    .line 13464
    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callHost:Ljava/lang/Long;

    .line 13465
    iget-object v1, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v1, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerNick:Ljava/lang/String;

    .line 13466
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l:Ljava/lang/String;

    iput-object v1, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conversationId:Ljava/lang/String;

    .line 13467
    iget-object v1, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 13468
    iget-object v1, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 13469
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 13470
    iget-object v8, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v10, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13469
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    .line 13440
    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_3

    .line 13455
    :cond_7
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    sget v2, Levh;->c:I

    invoke-virtual {v1, v2}, Levi;->a(I)V

    .line 13456
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "getDataFromConversation, exitActivity 1"

    invoke-static {v1, v2, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13457
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->i()V

    move v0, v3

    .line 13458
    goto/16 :goto_0

    .line 13473
    :cond_8
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    iget-object v2, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Levi;->b(J)V

    .line 13474
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    iget-object v2, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Levi;->a(Ljava/util/List;)V

    .line 13475
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    iget-object v2, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Levi;->c(J)V

    .line 13476
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    iget-object v2, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callHost:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Levi;->d(J)V

    .line 13477
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    iget-object v2, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Levi;->d(Ljava/lang/String;)V

    .line 13478
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    iget-object v2, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerNick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Levi;->b(Ljava/lang/String;)V

    .line 13479
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap:I

    invoke-virtual {v1, v2}, Levi;->b(I)V

    .line 13482
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R:Landroid/widget/TextView;

    iget-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13483
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->X:Leze;

    invoke-static {v7}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v5}, Leze;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;IZ)V

    .line 13484
    if-eqz p1, :cond_a

    .line 13486
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v1, v6, v5, v3, v5}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/util/List;ZZI)V

    .line 13488
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aq:I

    if-ge v1, v2, :cond_9

    .line 13489
    invoke-static {}, Lewg;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 13490
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "addTail true, from getDataFromConversation"

    invoke-static {v1, v2, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13492
    sget v1, Leuj$l;->conf_txt_guide_add_member_tip:I

    new-array v2, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13493
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v2, v1, v5}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/String;Z)V

    :cond_9
    :goto_6
    move v0, v5

    .line 13500
    goto/16 :goto_0

    .line 13498
    :cond_a
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v1, v5, v5}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(ZI)V

    goto :goto_6

    .line 15091
    .restart local v0    # "getData":Z
    :cond_b
    const-string/jumbo v4, "tele_conf"

    const-string/jumbo v6, "conference_call"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "create conference at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Leyr;->c(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 15091
    invoke-static {v4, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15093
    invoke-static {}, Levi;->p()Levi;

    move-result-object v4

    invoke-virtual {v4, v3}, Levi;->a(I)V

    .line 15094
    iget-object v4, v1, Lewk;->d:Leyc;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v2

    iget-object v6, v1, Lewk;->e:Leyo$c;

    .line 16074
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 16076
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 16080
    new-instance v7, Leyc$1;

    invoke-direct {v7, v4, v6}, Leyc$1;-><init>(Leyc;Leyo$c;)V

    invoke-interface {v1, v2, v7}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->createConference(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V

    goto/16 :goto_1

    .line 14406
    :cond_c
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    sget v2, Leuj$l;->conf_wait_calling_minor:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 18034
    invoke-virtual {v1, v4, v5, v2, v3}, Leuv;->a(JLjava/lang/String;I)V

    .line 14407
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->au:Z

    goto/16 :goto_2

    .end local v0    # "getData":Z
    :cond_d
    move v2, v4

    goto/16 :goto_4
.end method

.method public static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aK:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aM:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    return-object p1
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 1506
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1507
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1508
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    .line 33153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33154
    const-string/jumbo v0, "?corpid=%s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 33158
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/telconfcharge"

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33160
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void

    .line 33156
    :cond_0
    const-string/jumbo v0, "?corpid=%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aG:Z

    return v0
.end method

.method public static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aN:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    return-object p1
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1573
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1574
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r:Landroid/widget/TextView;

    sget v1, Leuj$l;->join_immediately:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1579
    :cond_0
    :goto_0
    return-void

    .line 1576
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_conference_restart_conf:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ar:Z

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aJ:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1585
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    .line 40791
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ai:Z

    if-nez v0, :cond_0

    .line 40794
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40795
    :cond_0
    :goto_0
    return-void

    .line 40797
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40798
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 40799
    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$26;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$26;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 40807
    sget v1, Leuj$l;->sure:I

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$27;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$27;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 40815
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aA:Z

    return p1
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Y:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Y:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1606
    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    .line 33078
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v0

    .line 33079
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    .line 33081
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33082
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33083
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33084
    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33086
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 33087
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$40;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$40;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 33086
    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 33145
    :goto_0
    return-void

    .line 33146
    :cond_0
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    sget v1, Levh;->c:I

    invoke-virtual {v0, v1}, Levi;->a(I)V

    .line 33147
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->i()V

    goto :goto_0
.end method

.method public static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aU:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->cancel()V

    .line 1722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ax:Z

    .line 1724
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z

    return v0
.end method

.method public static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aW:Ljava/lang/Runnable;

    return-object v0
.end method

.method private h()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 2412
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->au:Z

    .line 2413
    const-string/jumbo v1, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "enterConference, conference info is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2414
    invoke-static {}, Levi;->p()Levi;

    move-result-object v6

    invoke-virtual {v6}, Levi;->h()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2415
    invoke-static {}, Levi;->p()Levi;

    move-result-object v6

    invoke-virtual {v6}, Levi;->e()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2413
    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ah:Lewk;

    .line 18239
    invoke-static {}, Levi;->p()Levi;

    move-result-object v4

    invoke-virtual {v4}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v4

    .line 18240
    if-eqz v4, :cond_0

    .line 18241
    const-string/jumbo v5, "tele_conf"

    sget-object v6, Lewk;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "pullMembers "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18242
    iget-object v5, v1, Lewk;->d:Leyc;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v4

    iget-object v1, v1, Lewk;->f:Leyo$e;

    invoke-virtual {v5, v4, v1}, Leyc;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$e;)V

    .line 2418
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2419
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    if-eqz v1, :cond_2

    .line 2420
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    invoke-virtual {v1}, Leuv;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 2421
    sget v1, Leuj$l;->conf_txt_starting:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2422
    .local v0, "firstRecord":Ljava/lang/String;
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    invoke-virtual {v1}, Levi;->d()J

    move-result-wide v2

    .line 2423
    .local v2, "startTime":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 2424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2426
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    .line 19034
    invoke-virtual {v1, v2, v3, v0, v9}, Leuv;->a(JLjava/lang/String;I)V

    .line 2429
    .end local v0    # "firstRecord":Ljava/lang/String;
    .end local v2    # "startTime":J
    :cond_2
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m:Z

    return p1
.end method

.method private declared-synchronized i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2504
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "exitActivity, isActivityExiting, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2524
    :goto_0
    monitor-exit p0

    return-void

    .line 2508
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z

    .line 2510
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l()V

    .line 2512
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g()V

    .line 2515
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Z)V

    .line 2517
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$44;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$44;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ax:Z

    return v0
.end method

.method private declared-synchronized j()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2530
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "exitActivitySlowly, isActivityExiting, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 2569
    :goto_0
    monitor-exit p0

    return-void

    .line 2534
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z

    .line 2536
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l()V

    .line 2538
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g()V

    .line 2540
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Z)V

    .line 2541
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Q:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2542
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->D:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 2543
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->v:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2544
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->w:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2545
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->K:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2546
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e()V

    .line 2547
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->s()V

    .line 2549
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    if-eqz v2, :cond_3

    .line 2550
    invoke-static {}, Lewg;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2551
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v1

    .line 2552
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 2553
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v2

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v2, :cond_1

    .line 2554
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(IIZ)V

    .line 2552
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2558
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    .line 2562
    :cond_3
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$45;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$45;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2530
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g()V

    return-void
.end method

.method private k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->G:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2573
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->J:Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a()V

    .line 2574
    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ai:Z

    return v0
.end method

.method private l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->G:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2578
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->J:Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->b()V

    .line 2579
    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z

    return v0
.end method

.method static synthetic m(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    return-object v0
.end method

.method private m()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2582
    invoke-static {}, Lewg;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->am:Ljava/lang/String;

    .line 2583
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2584
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "Conf pwd enter show"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->V:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2586
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ab:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2587
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    .line 19087
    iget-boolean v0, v1, Levi;->w:Z

    .line 2588
    .local v0, "dotHide":Z
    if-eqz v0, :cond_0

    .line 2589
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ac:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2596
    .end local v0    # "dotHide":Z
    :goto_0
    return-void

    .line 2591
    .restart local v0    # "dotHide":Z
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ac:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2594
    .end local v0    # "dotHide":Z
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ab:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lewk;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ah:Lewk;

    return-object v0
.end method

.method private n()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->X:Leze;

    .line 2685
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Leze;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2686
    :cond_0
    const/4 v0, 0x1

    .line 2688
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2893
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->au:Z

    if-nez v0, :cond_1

    .line 2894
    const-class v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    monitor-enter v1

    .line 2895
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->au:Z

    if-nez v0, :cond_0

    .line 2896
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->au:Z

    .line 2897
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r()V

    .line 2899
    :cond_0
    monitor-exit v1

    .line 2902
    :cond_1
    return-void

    .line 2899
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic o(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q()V

    return-void
.end method

.method private p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2925
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aV:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2926
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aU:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aV:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aV:Ljava/lang/Runnable;

    .line 2929
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->i()V

    return-void
.end method

.method private q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2955
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2983
    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f()V

    return-void
.end method

.method static synthetic r(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leze;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->X:Leze;

    return-object v0
.end method

.method private r()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2987
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->al:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 2988
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->al:Ljava/util/Timer;

    .line 2989
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->al:Ljava/util/Timer;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$48;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$48;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 3002
    :cond_0
    return-void
.end method

.method private s()V
    .locals 1

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->al:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3006
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->al:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3007
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->al:Ljava/util/Timer;

    .line 3009
    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic t(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aq:I

    return v0
.end method

.method static synthetic u(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n:I

    return v0
.end method

.method static synthetic v(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e()V

    return-void
.end method

.method static synthetic w(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->D:Landroid/view/View;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->F:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(JZ)V
    .locals 7
    .param p1, "duration"    # J
    .param p3, "show"    # Z

    .prologue
    .line 1441
    monitor-enter p0

    :try_start_0
    iput-boolean p3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->av:Z

    .line 1442
    if-eqz p3, :cond_0

    .line 1443
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->M:Landroid/widget/RelativeLayout;

    const-string/jumbo v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1444
    .local v1, "scaleXAnimator":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->M:Landroid/widget/RelativeLayout;

    const-string/jumbo v4, "scaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1445
    .local v2, "scaleYAnimator":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1446
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1447
    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;

    invoke-direct {v3, p0, p3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1448
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1449
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1459
    :goto_0
    monitor-exit p0

    return-void

    .line 1451
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "scaleXAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "scaleYAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->N:Landroid/view/View;

    const-string/jumbo v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1452
    .restart local v1    # "scaleXAnimator":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->N:Landroid/view/View;

    const-string/jumbo v4, "scaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1453
    .restart local v2    # "scaleYAnimator":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1454
    .restart local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1455
    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;

    invoke-direct {v3, p0, p3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$c;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1456
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1457
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1441
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "scaleXAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "scaleYAnimator":Landroid/animation/ObjectAnimator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1443
    .line 1444
    .line 1451
    .line 1452
    nop

    :array_0
    .array-data 4
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z

    if-eqz v0, :cond_0

    .line 551
    :goto_0
    return-void

    .line 548
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ai:Z

    .line 549
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 521
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z

    if-eqz v0, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "onBackPressed"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f()V

    .line 526
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->av:Z

    if-eqz v0, :cond_2

    .line 527
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(JZ)V

    goto :goto_0

    .line 531
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ax:Z

    if-eqz v0, :cond_3

    .line 532
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g()V

    goto :goto_0

    .line 535
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->az:Z

    if-eqz v0, :cond_4

    .line 12784
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12785
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae:Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->dismiss()V

    .line 12786
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->az:Z

    goto :goto_0

    .line 539
    :cond_4
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "meeting_back_to_im"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 540
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/16 v7, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 285
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 286
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Leuj$f;->conf_call_and_video_bg_color:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 287
    sget v0, Leuj$j;->activity_teleconf_business_conference_running:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->setContentView(I)V

    .line 3554
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3555
    if-eqz v0, :cond_0

    .line 3556
    const-string/jumbo v1, "conference_from_home"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->o:Z

    .line 3557
    const-string/jumbo v1, "isFromService"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->at:Z

    .line 3558
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l:Ljava/lang/String;

    .line 3559
    const-string/jumbo v1, "conf_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap:I

    .line 3561
    const-string/jumbo v1, "choose_user_identities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    .line 3562
    const-string/jumbo v1, "conf_next_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aC:Ljava/lang/String;

    .line 3563
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->am:Ljava/lang/String;

    .line 3574
    :cond_0
    iput-object v11, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->al:Ljava/util/Timer;

    .line 3575
    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->as:Z

    .line 3576
    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aw:Z

    .line 3577
    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->av:Z

    .line 3578
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aj:J

    .line 3579
    iput-boolean v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m:Z

    .line 3580
    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ax:Z

    .line 3581
    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->az:Z

    .line 3582
    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ai:Z

    .line 3583
    invoke-static {p0}, Lewp;->f(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aI:Z

    .line 3585
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3586
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap:I

    if-gez v0, :cond_1

    .line 3587
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->f()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap:I

    .line 3588
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap:I

    if-gez v0, :cond_1

    .line 3589
    iput v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap:I

    .line 3592
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3593
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aC:Ljava/lang/String;

    .line 3595
    :cond_2
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l:Ljava/lang/String;

    .line 3596
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->am:Ljava/lang/String;

    .line 3606
    :cond_3
    :goto_0
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->d()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n:I

    .line 3607
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aq:I

    .line 3608
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " init type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", max num "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3609
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ao:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 3610
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ao:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-nez v0, :cond_4

    .line 3611
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ao:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 3612
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ao:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 3613
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ao:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    .line 3614
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ao:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    .line 3615
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ao:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    .line 3620
    :cond_4
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$32;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$32;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aP:Landroid/content/BroadcastReceiver;

    .line 3652
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$43;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$43;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aQ:Landroid/content/BroadcastReceiver;

    .line 3665
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aR:Landroid/content/BroadcastReceiver;

    .line 3713
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$50;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$50;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aS:Landroid/content/BroadcastReceiver;

    .line 3722
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$51;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$51;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aT:Landroid/content/BroadcastReceiver;

    .line 4632
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4633
    const-string/jumbo v1, "com.workapp.conversation.msg.add"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4634
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    if-nez v1, :cond_5

    .line 4635
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    .line 4637
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aQ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4641
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4642
    const-string/jumbo v1, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4643
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4644
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    if-nez v1, :cond_6

    .line 4645
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    .line 4647
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aP:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4651
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4652
    const-string/jumbo v1, "com.workapp.teleonf.hangup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4653
    const-string/jumbo v1, "com.workapp.teleonf.phonecall.ringing"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4654
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    if-nez v1, :cond_7

    .line 4655
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    .line 4657
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4670
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4671
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4673
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aS:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5661
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5662
    const-string/jumbo v1, "com.workapp.conf.conferencepanel.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5663
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    if-nez v1, :cond_8

    .line 5664
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    .line 5666
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aT:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5741
    sget v0, Leuj$i;->grid_avatars:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->p:Landroid/widget/GridView;

    .line 5742
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    if-nez v0, :cond_9

    .line 5743
    new-instance v0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    .line 5745
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->p:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5747
    sget v0, Leuj$i;->conf_list_record:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->z:Landroid/widget/ListView;

    .line 5748
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 5749
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    if-nez v0, :cond_a

    .line 5750
    new-instance v0, Leuv;

    invoke-direct {v0, p0}, Leuv;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    .line 5752
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->z:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5755
    sget v0, Leuj$i;->conf_owner_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->W:Landroid/view/View;

    .line 5756
    new-instance v0, Leze;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->W:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Leze;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->X:Leze;

    .line 5757
    sget v0, Leuj$i;->conf_owner_nick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R:Landroid/widget/TextView;

    .line 5758
    sget v0, Leuj$i;->conf_subtitle_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->V:Landroid/view/View;

    .line 5759
    sget v0, Leuj$i;->conf_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->S:Landroid/widget/TextView;

    .line 5760
    sget v0, Leuj$i;->conf_time_prefix:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->T:Landroid/widget/TextView;

    .line 5761
    sget v0, Leuj$i;->conf_time_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->U:Landroid/view/View;

    .line 5764
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R:Landroid/widget/TextView;

    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    invoke-virtual {v1}, Levi;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5765
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap:I

    if-ne v10, v0, :cond_12

    .line 5767
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->U:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5783
    :cond_c
    :goto_1
    new-instance v0, Levv;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->X:Leze;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    invoke-direct {v5, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Levv;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Leze;Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;Leuv;Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ag:Levv;

    .line 5784
    new-instance v0, Lewk;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->X:Leze;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lewk;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Leze;Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ah:Lewk;

    .line 5787
    sget v0, Leuj$i;->conf_guide_layer:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Y:Landroid/view/View;

    .line 5788
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Y:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$52;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$52;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5794
    sget v0, Leuj$i;->conf_guide_first_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Z:Landroid/widget/TextView;

    .line 5795
    sget v0, Leuj$i;->conf_guide_second_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aa:Landroid/widget/TextView;

    .line 5797
    sget v0, Leuj$i;->conf_duration_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Q:Landroid/view/View;

    .line 5798
    sget v0, Leuj$i;->conf_duration:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->P:Landroid/widget/TextView;

    .line 5807
    sget v0, Leuj$i;->btn_mute:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q:Landroid/widget/TextView;

    .line 5808
    sget v0, Leuj$i;->ll_join_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->s:Landroid/view/View;

    .line 5809
    sget v0, Leuj$i;->ll_join:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r:Landroid/widget/TextView;

    .line 5811
    sget v0, Leuj$i;->ll_mute_notepad_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->v:Landroid/view/View;

    .line 5812
    sget v0, Leuj$i;->ll_notepad_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->t:Landroid/view/View;

    .line 5813
    sget v0, Leuj$i;->btn_notepad_drift_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->u:Landroid/widget/ImageView;

    .line 5814
    sget v0, Leuj$i;->ll_notepad_single_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->w:Landroid/view/View;

    .line 5815
    sget v0, Leuj$i;->btn_single_notepad:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->x:Landroid/view/View;

    .line 5816
    sget v0, Leuj$i;->btn_single_notepad_drift_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->y:Landroid/widget/ImageView;

    .line 5817
    sget v0, Leuj$i;->conf_pwd_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ab:Landroid/view/View;

    .line 5818
    sget v0, Leuj$i;->conf_pwd_share_red_dot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ac:Landroid/widget/ImageView;

    .line 5820
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5942
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5974
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->t:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5982
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->x:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5990
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ab:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$6;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6003
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m()V

    .line 6007
    sget v0, Leuj$i;->conf_conversation_unread:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->A:Landroid/widget/TextView;

    .line 6008
    sget v0, Leuj$i;->conf_control_hangup:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->D:Landroid/view/View;

    .line 6009
    sget v0, Leuj$i;->conf_control_hangup_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E:Landroid/widget/TextView;

    .line 6010
    sget v0, Leuj$i;->conf_control_hangup_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->F:Landroid/widget/ImageView;

    .line 6011
    sget v0, Leuj$i;->conf_go_back_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->C:Landroid/widget/TextView;

    .line 6012
    sget v0, Leuj$i;->conf_go_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->B:Landroid/view/View;

    .line 6014
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->C:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$7;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6025
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->B:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6046
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->D:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$9;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6105
    invoke-static {}, Lewg;->c()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6106
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_terminate:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6107
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6113
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->hideToolbar()V

    .line 6117
    sget v0, Leuj$i;->layout_animation:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b:Landroid/widget/RelativeLayout;

    .line 6118
    sget v0, Leuj$i;->layout_animation_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->M:Landroid/widget/RelativeLayout;

    .line 6119
    sget v0, Leuj$i;->layout_net_exception:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->K:Landroid/widget/RelativeLayout;

    .line 6120
    sget v0, Leuj$i;->layout_member_loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->L:Landroid/widget/LinearLayout;

    .line 6121
    sget v0, Leuj$i;->action_panel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->N:Landroid/view/View;

    .line 6122
    sget v0, Leuj$i;->ll_layout_mute:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c:Landroid/view/View;

    .line 6123
    sget v0, Leuj$i;->ll_layout_kickout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O:Landroid/view/View;

    .line 6125
    sget v0, Leuj$i;->iv_conf_action_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d:Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;

    .line 6126
    sget v0, Leuj$i;->tv_conf_action_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e:Landroid/widget/TextView;

    .line 6128
    sget v0, Leuj$i;->iv_right:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f:Landroid/widget/ImageView;

    .line 6129
    sget v0, Leuj$i;->tv_right_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g:Landroid/widget/TextView;

    .line 6131
    sget v0, Leuj$i;->iv_left:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->h:Landroid/widget/ImageView;

    .line 6132
    sget v0, Leuj$i;->tv_left_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->i:Landroid/widget/TextView;

    .line 6134
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d:Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$10;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6141
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$11;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6157
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$13;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6232
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->O:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$14;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6279
    sget v0, Leuj$i;->layout_conf_waiting_for_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->G:Landroid/view/View;

    .line 6280
    sget v0, Leuj$i;->layout_waiting_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->H:Landroid/view/View;

    .line 6281
    sget v0, Leuj$i;->tv_conf_waiting_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->I:Landroid/widget/TextView;

    .line 6282
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->G:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$15;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6288
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->H:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6289
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6291
    sget v0, Leuj$i;->dots_progress_bar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->J:Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    .line 6292
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->J:Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->setDotsCount(I)V

    .line 6294
    sget v0, Leuj$l;->dt_official_mobile_conference_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6295
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap:I

    if-ne v1, v10, :cond_d

    .line 6296
    sget v0, Leuj$l;->dt_conf_voip_conf_caller_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6298
    :cond_d
    sget v1, Leuj$l;->and_conference_wating_for_calling:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6299
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6300
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 6301
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 6302
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->text_color_blue:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 6303
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 6304
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6306
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l()V

    .line 291
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 292
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->n()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 293
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    invoke-virtual {v1}, Levi;->n()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Leuv;->c(Ljava/util/List;)V

    .line 295
    :cond_e
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->h()V

    .line 345
    :cond_f
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 346
    iput-boolean v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->o:Z

    .line 351
    :goto_4
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q()V

    .line 352
    return-void

    .line 3598
    :cond_10
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap:I

    if-gez v0, :cond_11

    .line 3599
    iput v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap:I

    .line 3602
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3603
    sget v0, Leuj$l;->conf_txt_conference_theme_input_hint:I

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aC:Ljava/lang/String;

    goto/16 :goto_0

    .line 5768
    :cond_12
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ap:I

    if-ne v9, v0, :cond_c

    .line 5771
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->d()J

    move-result-wide v2

    .line 5772
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->j()J

    move-result-wide v4

    .line 5773
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_14

    .line 5774
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->V:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 5775
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->U:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 5776
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->T:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aI:Z

    if-eqz v0, :cond_13

    move v0, v7

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5777
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->S:Landroid/widget/TextView;

    add-long/2addr v4, v2

    invoke-static {v2, v3, v4, v5, v8}, Leyr;->a(JJZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_13
    move v0, v8

    .line 5776
    goto :goto_5

    .line 5779
    :cond_14
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->U:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 6109
    :cond_15
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_video_hangup:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6110
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 297
    :cond_16
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->an:Ljava/util/List;

    if-nez v0, :cond_20

    .line 299
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Levi;->c(J)V

    .line 301
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d()V

    .line 302
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    if-eqz v0, :cond_17

    .line 303
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aq:I

    if-ge v0, v1, :cond_17

    .line 305
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "addTail before conf starting"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget v0, Leuj$l;->conf_txt_guide_add_member_tip:I

    new-array v1, v9, [Ljava/lang/Object;

    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0, v6, v9}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/String;Z)V

    .line 310
    .end local v6    # "name":Ljava/lang/String;
    :cond_17
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->X:Leze;

    if-eqz v0, :cond_18

    .line 311
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->X:Leze;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ao:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v9}, Leze;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;IZ)V

    .line 314
    :cond_18
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 315
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R:Landroid/widget/TextView;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :cond_19
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->D:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 318
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setClickable(Z)V

    .line 321
    :cond_1a
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->B:Landroid/view/View;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    .line 322
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    :cond_1b
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    if-eqz v0, :cond_1c

    .line 326
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    sget v1, Leuj$l;->conf_txt_select_member_prompt:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 7034
    invoke-virtual {v0, v2, v3, v1, v8}, Leuv;->a(JLjava/lang/String;I)V

    .line 328
    :cond_1c
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    .line 329
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    :cond_1d
    iput-boolean v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aG:Z

    .line 7588
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Y:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aG:Z

    if-eqz v0, :cond_f

    .line 8310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "conf_first_enter_confready_panel"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8311
    invoke-static {p0, v0, v9}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 8312
    if-eqz v1, :cond_1e

    .line 8313
    invoke-static {p0, v0, v8}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 7589
    :cond_1e
    if-eqz v1, :cond_f

    .line 7590
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Y:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 7591
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aq:I

    if-ge v0, v1, :cond_1f

    .line 7592
    sget v0, Leuj$l;->conf_txt_guide_hint_tip_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7593
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7594
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 7596
    :cond_1f
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 336
    :cond_20
    invoke-direct {p0, v9}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b(Z)V

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->D:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 338
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_terminate:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 348
    :cond_21
    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->o:Z

    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ai:Z

    .line 476
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->s()V

    .line 478
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aQ:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aQ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aP:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aP:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aR:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aT:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aO:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aT:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ag:Levv;

    if-eqz v0, :cond_4

    .line 494
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ag:Levv;

    .line 11079
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v1

    iget-object v2, v0, Levv;->a:Lcjo$a;

    invoke-virtual {v1, v2}, Leyn;->b(Lcjo$a;)V

    .line 11080
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v1

    iget-object v2, v0, Levv;->b:Lcjo$a;

    invoke-virtual {v1, v2}, Leyn;->b(Lcjo$a;)V

    .line 11081
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v1

    iget-object v2, v0, Levv;->c:Lcjo$a;

    invoke-virtual {v1, v2}, Leyn;->b(Lcjo$a;)V

    .line 11082
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v1

    iget-object v0, v0, Levv;->d:Lcjo$a;

    invoke-virtual {v1, v0}, Leyn;->b(Lcjo$a;)V

    .line 497
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aU:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 498
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aU:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aV:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 499
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aU:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 500
    iput-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aV:Ljava/lang/Runnable;

    .line 501
    iput-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aW:Ljava/lang/Runnable;

    .line 11677
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aS:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 11678
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aS:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11679
    iput-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aS:Landroid/content/BroadcastReceiver;

    .line 507
    :cond_6
    sget v0, Levh;->c:I

    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    invoke-virtual {v1}, Levi;->b()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 508
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    .line 12155
    invoke-virtual {v0}, Levi;->r()V

    .line 510
    const/16 v0, 0x2710

    invoke-static {v3, v0}, Lewp;->c(Landroid/content/Context;I)V

    .line 512
    :cond_7
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aB:I

    if-ltz v0, :cond_8

    .line 513
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aB:I

    invoke-static {v3, v0}, Lewp;->a(Landroid/content/Context;I)V

    .line 515
    :cond_8
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, " onDestroy "

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 517
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 356
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 357
    if-eqz p1, :cond_8

    .line 358
    const-string/jumbo v3, "isFromService"

    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->at:Z

    .line 362
    :goto_0
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " onNewIntent conf from service "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->at:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->at:Z

    if-eqz v3, :cond_9

    .line 365
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->o()V

    .line 374
    :goto_1
    invoke-static {}, Levi;->p()Levi;

    move-result-object v3

    .line 9047
    iget-boolean v3, v3, Levi;->r:Z

    .line 374
    if-eqz v3, :cond_1

    .line 375
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e()V

    .line 376
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b()V

    .line 378
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v0

    .line 379
    .local v0, "myId":J
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;)I

    move-result v2

    .line 380
    .local v2, "status":I
    if-eq v2, v10, :cond_0

    .line 381
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    sget v4, Leuj$l;->conf_txt_enter_prompt:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7, v8}, Leuv;->a(Ljava/lang/String;JI)V

    .line 383
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v10, v9}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    .line 386
    .end local v0    # "myId":J
    .end local v2    # "status":I
    :cond_1
    invoke-static {}, Levi;->p()Levi;

    move-result-object v3

    .line 9055
    iget-boolean v3, v3, Levi;->s:Z

    .line 386
    if-eqz v3, :cond_3

    .line 387
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d()V

    .line 388
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c()V

    .line 390
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v0

    .line 391
    .restart local v0    # "myId":J
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;)I

    move-result v2

    .line 392
    .restart local v2    # "status":I
    if-eqz v2, :cond_2

    .line 393
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    sget v4, Leuj$l;->conf_txt_leave_prompt:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7, v8}, Leuv;->a(Ljava/lang/String;JI)V

    .line 395
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    .line 398
    .end local v0    # "myId":J
    .end local v2    # "status":I
    :cond_3
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aG:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aH:Z

    if-eqz v3, :cond_b

    .line 399
    :cond_4
    invoke-static {}, Levi;->p()Levi;

    move-result-object v3

    invoke-virtual {v3}, Levi;->c()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 401
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 402
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R:Landroid/widget/TextView;

    invoke-static {}, Levi;->p()Levi;

    move-result-object v4

    invoke-virtual {v4}, Levi;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    :cond_5
    invoke-static {}, Lewg;->c()Z

    move-result v3

    if-nez v3, :cond_6

    .line 405
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->D:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 406
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->D:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setClickable(Z)V

    .line 407
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->D:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E:Landroid/widget/TextView;

    sget v4, Leuj$l;->conf_txt_exit:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 412
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->h()V

    .line 418
    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aG:Z

    .line 424
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q()V

    .line 425
    return-void

    .line 360
    :cond_8
    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->at:Z

    goto/16 :goto_0

    .line 367
    :cond_9
    invoke-static {}, Levi;->p()Levi;

    move-result-object v3

    invoke-virtual {v3}, Levi;->d()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aj:J

    .line 368
    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aj:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_a

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aj:J

    .line 371
    :cond_a
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->r()V

    goto/16 :goto_1

    .line 419
    :cond_b
    invoke-static {}, Levi;->p()Levi;

    move-result-object v3

    invoke-virtual {v3}, Levi;->c()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 420
    invoke-static {}, Levi;->p()Levi;

    move-result-object v3

    invoke-virtual {v3}, Levi;->m()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->am:Ljava/lang/String;

    .line 421
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m()V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 461
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af:Leuv;

    invoke-virtual {v1}, Leuv;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Levi;->b(Ljava/util/List;)V

    .line 462
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->p()V

    .line 463
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 464
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 436
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 438
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 439
    invoke-static {v0}, Lcms;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_conference_controlpad_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 442
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onResume, conference from service "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->at:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->at:Z

    if-eqz v0, :cond_1

    .line 444
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->o()V

    .line 447
    :cond_1
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    .line 10047
    iget-boolean v0, v0, Levi;->r:Z

    .line 447
    if-eqz v0, :cond_2

    .line 448
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e()V

    .line 449
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b()V

    .line 10905
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aV:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    .line 10906
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$46;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$46;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aV:Ljava/lang/Runnable;

    .line 10918
    :cond_3
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10919
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aU:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aV:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10920
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aU:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aV:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 453
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q()V

    .line 454
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 429
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 430
    invoke-static {}, Lews;->a()Lews;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lews;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 431
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v0

    .line 9676
    invoke-virtual {v0}, Levu;->c()V

    .line 432
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 468
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 470
    invoke-static {}, Lews;->a()Lews;

    move-result-object v0

    invoke-virtual {v0}, Lews;->b()V

    .line 471
    return-void
.end method
