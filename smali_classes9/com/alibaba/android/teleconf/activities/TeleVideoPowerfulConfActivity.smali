.class public Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleVideoPowerfulConfActivity.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Landroid/view/View;

.field private B:Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/view/View;

.field private F:Levp;

.field private G:Landroid/view/View;

.field private H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

.field private I:Lcom/alibaba/android/teleconf/widget/ConfVideoAnimView;

.field private J:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private K:Landroid/view/View;

.field private L:Landroid/view/View;

.field private M:Landroid/widget/FrameLayout;

.field private N:Landroid/view/View;

.field private O:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

.field private P:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

.field private Q:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

.field private R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

.field private S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

.field private T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

.field private U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field private W:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field private X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aA:Landroid/view/View$OnClickListener;

.field private aB:Landroid/view/View$OnClickListener;

.field private aC:Levr;

.field private aD:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

.field private aE:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$b;

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:I

.field private an:I

.field private ao:J

.field private ap:I

.field private aq:Ljava/util/TimerTask;

.field private ar:Ljava/util/concurrent/ScheduledFuture;

.field private as:Ljava/util/TimerTask;

.field private at:Ljava/util/concurrent/ScheduledFuture;

.field private au:Ljava/util/TimerTask;

.field private av:Ljava/util/concurrent/ScheduledFuture;

.field private aw:I

.field private ax:Landroid/view/View$OnClickListener;

.field private ay:Landroid/view/View$OnClickListener;

.field private az:Landroid/view/View$OnClickListener;

.field private b:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

.field private c:Landroid/view/View;

.field private d:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

.field private e:Landroid/view/View;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private k:Landroid/view/View;

.field private l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 170
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_IDE:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 178
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aa:Z

    .line 179
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ab:Z

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ac:Z

    .line 180
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ad:Z

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ae:Z

    .line 181
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->af:Z

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ag:Z

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ah:Z

    .line 182
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ai:Z

    .line 183
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aj:Z

    .line 184
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ak:Z

    .line 185
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->al:Z

    .line 188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ao:J

    .line 196
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    .line 198
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ax:Landroid/view/View$OnClickListener;

    .line 245
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ay:Landroid/view/View$OnClickListener;

    .line 311
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$23;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$23;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->az:Landroid/view/View$OnClickListener;

    .line 329
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$30;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$30;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aA:Landroid/view/View$OnClickListener;

    .line 346
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aB:Landroid/view/View$OnClickListener;

    .line 440
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aC:Levr;

    .line 502
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$33;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$33;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aD:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    .line 531
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$34;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aE:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$b;

    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->G:Landroid/view/View;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->m()V

    return-void
.end method

.method static synthetic C(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/widget/ConfVideoAnimView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->I:Lcom/alibaba/android/teleconf/widget/ConfVideoAnimView;

    return-object v0
.end method

.method static synthetic D(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    return-object v0
.end method

.method static synthetic E(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    return-object v0
.end method

.method static synthetic F(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    return-object v0
.end method

.method static synthetic G(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    return-object v0
.end method

.method static synthetic H(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->W:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    return-object v0
.end method

.method static synthetic I(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    .line 38206
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38209
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38210
    sget v1, Leuj$l;->dt_conf_callselect_3g_warning_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 38211
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->login_ok:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$27;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$27;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 38218
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->login_cancel:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$28;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$28;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 38226
    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$29;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$29;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 38233
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 109
    :cond_0
    return-void
.end method

.method static synthetic J(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->s()V

    return-void
.end method

.method static synthetic K(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->l()V

    return-void
.end method

.method static synthetic L(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    .line 38366
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calleeIds:Ljava/util/List;

    if-nez v0, :cond_1

    .line 38377
    :cond_0
    :goto_0
    return-void

    .line 38369
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    if-nez v0, :cond_2

    .line 38370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    .line 38375
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;)Ljava/util/List;

    move-result-object v1

    .line 38376
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38379
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    const-class v3, Lcma;

    .line 38380
    invoke-static {v0, v3, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 38379
    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0

    .line 38372
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method static synthetic M(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic N(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic O(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->E:Landroid/view/View;

    return-object v0
.end method

.method static synthetic P(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    const-wide/16 v0, 0x0

    .line 109
    .line 38675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 38676
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ao:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 38678
    invoke-static {}, Levm;->a()Levm;

    move-result-object v2

    .line 39152
    iget-wide v2, v2, Levm;->b:J

    .line 38679
    cmp-long v6, v2, v0

    if-lez v6, :cond_2

    .line 38680
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    iput-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ao:J

    .line 38685
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ao:J

    sub-long v2, v4, v2

    .line 38686
    cmp-long v6, v2, v0

    if-gez v6, :cond_3

    .line 38687
    iput-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ao:J

    .line 38692
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->q:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 38693
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->q:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38694
    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Leyr;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 38695
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_1
    return-void

    .line 38682
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ao:J

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method static synthetic Q(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->t()V

    return-void
.end method

.method static synthetic R(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->q()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    return-object v0
.end method

.method private static a(Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;)Ljava/util/List;
    .locals 6
    .param p0, "inviteObj"    # Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2294
    if-nez p0, :cond_0

    .line 2295
    const/4 v1, 0x0

    .line 2310
    :goto_0
    return-object v1

    .line 2297
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2298
    .local v1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2299
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->hostId:J

    iget-wide v4, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 2300
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->hostId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2302
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calleeIds:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2304
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2305
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2307
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2309
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private a(J)V
    .locals 5
    .param p1, "uid"    # J

    .prologue
    .line 2531
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2532
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Invalid uid when loading caller info"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    :goto_0
    return-void

    .line 2536
    :cond_0
    invoke-static {}, Leyb;->a()Leyb;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 2537
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$9;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$9;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    const-class v4, Leyo$d;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 2536
    invoke-virtual {v1, v2, v0}, Leyb;->a(Ljava/lang/Long;Leyo$d;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    .line 35031
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35035
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35036
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 35037
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->sure:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$17;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$17;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 35045
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->cancel:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$18;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$18;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 35052
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 109
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # J

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .param p2, "x2"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->c(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Ljava/util/List;IIZ)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    const/4 v4, 0x0

    .line 109
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    .line 37909
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Ljava/util/List;IIZZ)V

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Ljava/util/List;IIZZ)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 109
    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Ljava/util/List;IIZZ)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(ZZ)V

    return-void
.end method

.method private a(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V
    .locals 14
    .param p1, "memberObject"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 1948
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1998
    :cond_0
    :goto_0
    return-void

    .line 1951
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v6

    .line 1952
    .local v6, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    const-string/jumbo v4, ""

    .line 1953
    .local v4, "nickName":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 1954
    .local v2, "micStatus":Ljava/lang/String;
    iget v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-nez v7, :cond_4

    .line 1955
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1956
    sget v7, Leuj$l;->conf_txt_enter_mute_mode:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1957
    .local v3, "muteMode":Ljava/lang/String;
    move-object v2, v3

    .line 1969
    .end local v3    # "muteMode":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .local v1, "hasNick":Z
    const/4 v0, 0x0

    .line 1970
    .local v0, "hasMicStatus":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1971
    const/4 v1, 0x1

    .line 1973
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1974
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1978
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1979
    const/4 v0, 0x1

    .line 1981
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1982
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1986
    :goto_3
    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    .line 1987
    :cond_3
    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {p0, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    .line 1989
    .local v5, "rightPadding":I
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 1990
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v7, v12, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1991
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v7, v12, v12, v5, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 1960
    .end local v0    # "hasMicStatus":Z
    .end local v1    # "hasNick":Z
    .end local v5    # "rightPadding":I
    :cond_4
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v4, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 1961
    :goto_4
    iget-wide v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->W:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    .line 1962
    sget v7, Leuj$l;->conf_txt_me_flag:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1964
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1965
    sget v7, Leuj$l;->conf_txt_enter_mute_mode:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1966
    .restart local v3    # "muteMode":Ljava/lang/String;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "("

    aput-object v8, v7, v12

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ")"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1960
    .end local v3    # "muteMode":Ljava/lang/String;
    :cond_6
    iget-object v4, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_4

    .line 1976
    .restart local v0    # "hasMicStatus":Z
    .restart local v1    # "hasNick":Z
    :cond_7
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1984
    :cond_8
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1992
    .restart local v5    # "rightPadding":I
    :cond_9
    if-eqz v0, :cond_a

    .line 1993
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v7, v12, v12, v5, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1994
    :cond_a
    if-eqz v1, :cond_0

    .line 1995
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v7, v12, v12, v5, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method private a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)V
    .locals 14
    .param p1, "windowObject"    # Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 1827
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-nez v8, :cond_1

    .line 1906
    :cond_0
    :goto_0
    return-void

    .line 1830
    :cond_1
    sget-object v8, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    new-array v12, v11, [Ljava/lang/String;

    const-string/jumbo v13, "Update sub view"

    aput-object v13, v12, v9

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted()Z

    move-result v4

    .line 1832
    .local v4, "isMicMuted":Z
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted()Z

    move-result v2

    .line 1833
    .local v2, "isCamMuted":Z
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isInConf()Z

    move-result v0

    .line 1834
    .local v0, "beInConf":Z
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a()Z

    move-result v1

    .line 1835
    .local v1, "hasWindowShare":Z
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isAudioRunning()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCallRunning()Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_2
    move v3, v11

    .line 1836
    .local v3, "isInAudioOrCall":Z
    :goto_1
    if-nez v4, :cond_3

    if-eqz v2, :cond_d

    .line 1837
    :cond_3
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->P:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    invoke-virtual {v8, v9}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->setVisibility(I)V

    .line 1838
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->P:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    invoke-virtual {v8, v4, v2}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->a(ZZ)V

    .line 1839
    if-eqz v0, :cond_c

    if-eqz v2, :cond_c

    .line 1840
    if-eqz v1, :cond_4

    .line 1841
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->P:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    invoke-virtual {v8, v4, v9}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->a(ZZ)V

    .line 1843
    :cond_4
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v8, :cond_5

    .line 1844
    iget-object v12, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v1, :cond_b

    move v8, v9

    :goto_2
    invoke-virtual {v12, v8}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    .line 1868
    :cond_5
    :goto_3
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    sget-object v12, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    if-ne v8, v12, :cond_9

    .line 1869
    if-eqz v0, :cond_10

    .line 1870
    if-nez v2, :cond_6

    if-nez v3, :cond_10

    .line 1874
    :cond_6
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v8, :cond_8

    .line 1875
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v8}, Lorg/webrtc/sdk/SophonSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 1876
    .local v5, "parent":Landroid/view/ViewParent;
    if-eqz v5, :cond_7

    .line 1877
    check-cast v5, Landroid/view/ViewGroup;

    .end local v5    # "parent":Landroid/view/ViewParent;
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1879
    :cond_7
    sget-object v8, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v12, "NEW SURFACE VIEW for sub_s window "

    invoke-static {v8, v12}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v8, v11}, Lorg/webrtc/sdk/SophonSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 1881
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->M:Landroid/widget/FrameLayout;

    iget-object v11, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1882
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v8, v9}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    .line 1885
    :cond_8
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->N:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1893
    :cond_9
    :goto_4
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->M:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->N:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 1894
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->M:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->P:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 1896
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1897
    .local v7, "windowPara":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v7, :cond_0

    .line 1898
    iget v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->an:I

    mul-int/lit8 v8, v8, 0x2

    div-int/lit8 v6, v8, 0x5

    .line 1899
    .local v6, "windowHeight":I
    iget v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-eq v6, v8, :cond_0

    .line 1900
    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1901
    mul-int/lit8 v8, v6, 0x9

    div-int/lit8 v8, v8, 0x10

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1903
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .end local v3    # "isInAudioOrCall":Z
    .end local v6    # "windowHeight":I
    .end local v7    # "windowPara":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_a
    move v3, v9

    .line 1835
    goto/16 :goto_1

    .restart local v3    # "isInAudioOrCall":Z
    :cond_b
    move v8, v10

    .line 1844
    goto :goto_2

    .line 1846
    :cond_c
    if-eqz v0, :cond_5

    .line 1847
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v8, :cond_5

    .line 1848
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v8, v9}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1852
    :cond_d
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->P:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    invoke-virtual {v8, v10}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->setVisibility(I)V

    .line 1853
    if-eqz v0, :cond_5

    .line 1854
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v8, :cond_e

    .line 1855
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v8, v9}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    .line 1857
    :cond_e
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    sget-object v12, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    if-eq v8, v12, :cond_5

    .line 1858
    if-nez v2, :cond_f

    if-eqz v3, :cond_f

    .line 1859
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-direct {p0, v9, v8}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(ZLcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    .line 1860
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->N:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1862
    :cond_f
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->N:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1888
    :cond_10
    iget-object v8, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-direct {p0, v9, v8}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(ZLcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    .line 1889
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->N:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method private a(Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;)V
    .locals 3
    .param p1, "confState"    # Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1663
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->D:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 1675
    :cond_0
    :goto_0
    return-void

    .line 1667
    :cond_1
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne p1, v1, :cond_2

    .line 1668
    sget v0, Leuj$l;->and_conf_voip_state_connecting:I

    .line 1674
    .local v0, "resId":I
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1669
    .end local v0    # "resId":I
    :cond_2
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne p1, v1, :cond_3

    .line 1670
    sget v0, Leuj$l;->conf_txt_video_joining_conf:I

    .restart local v0    # "resId":I
    goto :goto_1

    .line 1672
    .end local v0    # "resId":I
    :cond_3
    sget v0, Leuj$l;->and_conf_voip_state_calling_timeout:I

    .restart local v0    # "resId":I
    goto :goto_1
.end method

.method private a(Lcpi$a;)V
    .locals 1
    .param p1, "listener"    # Lcpi$a;

    .prologue
    .line 3182
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcpi$a;)V

    invoke-static {p0, v0}, Leyx;->a(Landroid/app/Activity;Lcpi$a;)V

    .line 3203
    return-void
.end method

.method private a(Ljava/util/List;IIZZ)V
    .locals 6
    .param p2, "startPosition"    # I
    .param p3, "windowCount"    # I
    .param p4, "audioOnly"    # Z
    .param p5, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;",
            ">;IIZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2839
    .local p1, "windowObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz p1, :cond_0

    .line 2840
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-ltz p2, :cond_0

    .line 2842
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    if-gtz p3, :cond_2

    .line 2844
    :cond_0
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "Invalid parameter when start watch sub window video"

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2868
    :cond_1
    :goto_0
    return-void

    .line 2847
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le p3, v3, :cond_3

    .line 2848
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 2850
    :cond_3
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "watchSubVideoOnScreen "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    add-int v3, p2, p3

    add-int/lit8 v0, v3, -0x1

    .line 2853
    .local v0, "endPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 2854
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 2855
    .local v2, "windowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v2, :cond_4

    if-lt v1, p2, :cond_4

    if-gt v1, v0, :cond_4

    .line 2856
    iget-boolean v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-nez v3, :cond_4

    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2859
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v3, v2, p4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V

    .line 2853
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2863
    .end local v2    # "windowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_5
    if-eqz p5, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    if-eqz v3, :cond_1

    .line 2865
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v3, p1}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b(Ljava/util/List;)V

    .line 2866
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v3, p2, p3}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemRangeChanged(II)V

    goto :goto_0
.end method

.method private a(ZLcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V
    .locals 6
    .param p1, "beMainWindow"    # Z
    .param p2, "memberObject"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1808
    if-nez p2, :cond_1

    .line 1824
    :cond_0
    :goto_0
    return-void

    .line 1812
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v3

    .line 1813
    .local v3, "userState":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    invoke-static {v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getStringByState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Ljava/lang/String;

    move-result-object v1

    .line 1814
    .local v1, "stateStr":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    .line 1815
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    .line 1816
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 1817
    .local v0, "nickName":Ljava/lang/String;
    :goto_1
    if-eqz p1, :cond_3

    .line 1818
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1816
    .end local v0    # "nickName":Ljava/lang/String;
    :cond_2
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_1

    .line 1821
    .restart local v0    # "nickName":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->O:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v1}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "darkMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2262
    :goto_0
    return-void

    .line 2250
    :cond_0
    if-eqz p1, :cond_2

    .line 2251
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2252
    if-eqz p2, :cond_1

    .line 2253
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i:Landroid/view/View;

    sget v1, Leuj$h;->conf_status_bg_circle_44_white_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2254
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_content_fg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_0

    .line 2256
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i:Landroid/view/View;

    sget v1, Leuj$h;->conf_status_bg_circle_44_small_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2257
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_content_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_0

    .line 2260
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ab:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .prologue
    .line 109
    .line 37150
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37151
    :cond_0
    :goto_0
    return-void

    .line 37153
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 37154
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 37155
    :goto_1
    sget v1, Leuj$l;->and_conf_video_conference_recall_mem_tip:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37157
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37158
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Leuj$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$25;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$25;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 37159
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Leuj$l;->dt_conf_callselect_btn_make_call:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$24;

    invoke-direct {v3, p0, v1, p1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$24;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    .line 37167
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 37178
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 37154
    :cond_2
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Ljava/util/List;IIZZ)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 109
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Ljava/util/List;IIZZ)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i(Z)V

    return-void
.end method

.method private b(Ljava/util/List;IIZZ)V
    .locals 6
    .param p2, "startPosition"    # I
    .param p3, "windowCount"    # I
    .param p4, "exceptShareMedia"    # Z
    .param p5, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;",
            ">;IIZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2875
    .local p1, "windowObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz p1, :cond_0

    .line 2876
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-ltz p2, :cond_0

    .line 2878
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    if-lez p3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-nez v3, :cond_2

    .line 2881
    :cond_0
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "Invalid parameter when stop watch sub window video"

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    :cond_1
    :goto_0
    return-void

    .line 2884
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le p3, v3, :cond_3

    .line 2885
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 2887
    :cond_3
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "stopWatchSubVideoOnScreen "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    if-eqz v3, :cond_1

    .line 2890
    add-int v3, p2, p3

    add-int/lit8 v0, v3, -0x1

    .line 2891
    .local v0, "endPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 2892
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 2893
    .local v2, "windowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v2, :cond_4

    if-lt v1, p2, :cond_4

    if-gt v1, v0, :cond_4

    .line 2894
    iget-boolean v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-nez v3, :cond_4

    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2897
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v3, v2, p4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V

    .line 2891
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2900
    .end local v2    # "windowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_5
    if-eqz p5, :cond_1

    .line 2902
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v3, p1}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b(Ljava/util/List;)V

    .line 2903
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v3, p2, p3}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemRangeChanged(II)V

    goto :goto_0
.end method

.method private b(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2607
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    add-int/lit8 v0, v0, 0x4

    if-ge p1, v0, :cond_0

    .line 2608
    const/4 v0, 0x1

    .line 2610
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)V
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2991
    if-gez p1, :cond_1

    .line 3012
    :cond_0
    :goto_0
    return-void

    .line 2995
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2996
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v1

    .line 2997
    .local v1, "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz v1, :cond_0

    .line 2998
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 2999
    .local v0, "destUser":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v0, :cond_0

    .line 3000
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 3001
    iget-boolean v2, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-eqz v2, :cond_2

    .line 3002
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->n()V

    .line 3005
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    if-eqz v2, :cond_0

    .line 3006
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b(Ljava/util/List;)V

    .line 3007
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v2, p1}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    .line 33517
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-nez v0, :cond_0

    .line 33518
    :goto_0
    return-void

    .line 33520
    :cond_0
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Reject the video-conf"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33522
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "videoconf_conf_reject_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 33524
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->u()V

    .line 33525
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->p()V

    .line 33527
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b(Z)V

    goto :goto_0
.end method

.method private declared-synchronized c(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V
    .locals 11
    .param p1, "currUserWindow"    # Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .param p2, "currIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2913
    monitor-enter p0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    :try_start_0
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 2979
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2916
    :cond_1
    :try_start_1
    iget-boolean v7, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-eqz v7, :cond_2

    .line 2917
    sget-object v7, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "Window "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " has been main window"

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2913
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 2920
    :cond_2
    :try_start_2
    sget-object v7, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "Switch to main from: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v7}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c()Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v3

    .line 2922
    .local v3, "oldWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz p1, :cond_0

    iget-object v7, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    iget-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v7, :cond_0

    .line 2924
    iget-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v7, :cond_3

    .line 2925
    iget-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v7}, Lorg/webrtc/sdk/SophonSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 2926
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_3

    .line 2927
    check-cast v6, Landroid/widget/FrameLayout;

    .end local v6    # "parent":Landroid/view/ViewParent;
    iget-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2930
    :cond_3
    iget-object v7, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v7, :cond_4

    .line 2931
    iget-object v7, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v7}, Lorg/webrtc/sdk/SophonSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 2932
    .restart local v6    # "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_4

    .line 2933
    check-cast v6, Landroid/widget/FrameLayout;

    .end local v6    # "parent":Landroid/view/ViewParent;
    iget-object v7, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2936
    :cond_4
    const-wide/16 v0, 0x0

    .line 2937
    .local v0, "destMainUid":J
    iget-object v7, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 2938
    iget-object v7, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v7

    iget-wide v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 2941
    :cond_5
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v7}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b()I

    move-result v2

    .line 2942
    .local v2, "oldMainPosition":I
    const-wide/16 v4, 0x0

    .line 2943
    .local v4, "oldMainUid":J
    iget-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 2944
    iget-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v7

    iget-wide v4, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 2946
    :cond_6
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v7, p2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 2948
    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v7, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 2949
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->n()V

    .line 2950
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->W:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v7, v0, v8

    if-eqz v7, :cond_7

    .line 2951
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k(Z)V

    .line 2953
    :cond_7
    iget v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-nez v7, :cond_8

    .line 2954
    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 2955
    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)V

    .line 2956
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->W:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v7, v4, v8

    if-eqz v7, :cond_0

    .line 2957
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    const/4 v8, 0x0

    invoke-interface {v7, v3, v8}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V

    goto/16 :goto_0

    .line 2960
    :cond_8
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    if-eqz v7, :cond_0

    .line 2961
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v8}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b(Ljava/util/List;)V

    .line 2962
    invoke-direct {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2964
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v7, v2}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemChanged(I)V

    .line 2965
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->W:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v7, v4, v8

    if-eqz v7, :cond_9

    .line 2966
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    const/4 v8, 0x0

    invoke-interface {v7, v3, v8}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V

    .line 2973
    :cond_9
    :goto_1
    invoke-direct {p0, p2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2974
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v7, p2}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemChanged(I)V

    goto/16 :goto_0

    .line 2969
    :cond_a
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->W:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v7, v4, v8

    if-eqz v7, :cond_9

    .line 2970
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    const/4 v8, 0x1

    invoke-interface {v7, v3, v8}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->af:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Z)V

    return-void
.end method

.method private d(Z)V
    .locals 6
    .param p1, "fullScreen"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, -0x1

    .line 1909
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    if-nez v4, :cond_1

    .line 1932
    :cond_0
    :goto_0
    return-void

    .line 1912
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1913
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_2

    .line 1914
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v5, :cond_0

    .line 1917
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1931
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    invoke-virtual {v4, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1919
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->G:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1922
    .local v0, "bottomControlHeight":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1923
    .local v3, "rectangle":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1925
    invoke-static {p0}, Lcms;->b(Landroid/content/Context;)I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v1, v4, v0

    .line 1926
    .local v1, "destVideoLayoutHeight":I
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v1, :cond_0

    .line 1929
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ah:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->h(Z)V

    return-void
.end method

.method private e(Z)V
    .locals 5
    .param p1, "canZoomAndDrag"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 1935
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    if-eqz v1, :cond_0

    .line 1936
    if-eqz p1, :cond_1

    .line 32208
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_conf_video_share_zoom_enable"

    .line 33083
    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 1936
    if-eqz v1, :cond_1

    .line 1937
    .local v0, "isEnabled":Z
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    .line 33128
    sget-object v2, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateZoomAndDrag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33129
    iput-boolean v0, v1, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->d:Z

    .line 33130
    iput-boolean v0, v1, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->e:Z

    .line 1939
    .end local v0    # "isEnabled":Z
    :cond_0
    return-void

    .line 1936
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d(Z)V

    return-void
.end method

.method private f(Z)V
    .locals 5
    .param p1, "notify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1942
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    .line 33134
    iget v2, v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->b:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 1942
    :goto_0
    if-eqz v0, :cond_0

    .line 1943
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    .line 33138
    sget-object v2, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "resetZoomAndDragConfig: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33139
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->k:I

    .line 33140
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->l:I

    .line 33141
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->j:F

    iput v2, v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->i:F

    .line 33142
    iput v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->g:I

    iput v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->f:I

    .line 33143
    iput v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->h:I

    .line 33144
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->c:F

    .line 33145
    if-eqz p1, :cond_0

    .line 33146
    iget-object v2, v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->m:Levr;

    if-eqz v2, :cond_0

    .line 33147
    iget-object v2, v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->m:Levr;

    sget-object v3, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;->ACTION_RESET:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;->ordinal()I

    iget v3, v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->k:I

    iget v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->l:I

    invoke-interface {v2, v1, v1, v3, v0}, Levr;->a(IIII)V

    .line 1945
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 33134
    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e(Z)V

    return-void
.end method

.method private g(Z)V
    .locals 6
    .param p1, "enterFullScreen"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2149
    if-eqz p1, :cond_1

    .line 2150
    iput-boolean v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aj:Z

    .line 2152
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d(Z)V

    .line 2153
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e(Z)V

    .line 2154
    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Z)V

    .line 2156
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->G:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2157
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Q:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->setVisibility(I)V

    .line 2158
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2159
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2160
    invoke-static {p0, v4, v4, v3}, Lewp;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;ZZZ)V

    .line 2162
    invoke-direct {p0, v4, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(ZZ)V

    .line 2196
    :cond_0
    :goto_0
    return-void

    .line 2164
    :cond_1
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aj:Z

    .line 2165
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2166
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-nez v2, :cond_3

    .line 2167
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Q:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->setVisibility(I)V

    .line 2168
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2169
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2170
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->J:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2171
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->K:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2179
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->G:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2180
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2181
    invoke-static {p0, v3, v3, v4}, Lewp;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;ZZZ)V

    .line 2183
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ak:Z

    .line 2185
    const/4 v0, 0x0

    .line 2186
    .local v0, "beShareWindow":Z
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v2, :cond_2

    .line 2187
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c()Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v1

    .line 2188
    .local v1, "mainWindow":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2189
    const/4 v0, 0x1

    .line 2192
    .end local v1    # "mainWindow":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_2
    if-eqz v0, :cond_0

    .line 2193
    invoke-direct {p0, v4, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(ZZ)V

    goto :goto_0

    .line 2173
    .end local v0    # "beShareWindow":Z
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Q:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->setVisibility(I)V

    .line 2174
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2175
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2176
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->J:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2177
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->K:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 109
    .line 36233
    if-eqz p1, :cond_0

    .line 36234
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->G:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36235
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ak:Z

    :goto_0
    return-void

    .line 36239
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36240
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36242
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ak:Z

    goto :goto_0
.end method

.method private h(Z)V
    .locals 9
    .param p1, "enterFullScreen"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 2199
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-nez v7, :cond_1

    .line 2230
    :cond_0
    :goto_0
    return-void

    .line 2202
    :cond_1
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v7}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v4

    .line 2203
    .local v4, "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2206
    iget v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-nez v7, :cond_3

    .line 2207
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 2208
    .local v3, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v3, :cond_0

    iget-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v7, :cond_0

    .line 2209
    iget-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v7, v5}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    .line 2212
    .end local v3    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 2213
    .local v2, "size":I
    iget v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    add-int/lit8 v0, v7, 0x4

    .line 2214
    .local v0, "destPos":I
    if-lt v0, v2, :cond_4

    .line 2215
    add-int/lit8 v0, v2, -0x1

    .line 2217
    :cond_4
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    .local v1, "i":I
    :goto_2
    if-gt v1, v0, :cond_0

    .line 2218
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 2219
    .restart local v3    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v3, :cond_5

    iget-boolean v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-nez v7, :cond_5

    iget-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v7, :cond_5

    iget-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-nez v7, :cond_6

    .line 2217
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2225
    :cond_6
    iget-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isInConf()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2226
    iget-object v8, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz p1, :cond_7

    move v7, v5

    :goto_4
    invoke-virtual {v8, v7}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move v7, v6

    goto :goto_4
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Levp;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->F:Levp;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Z)V

    return-void
.end method

.method private i(Z)V
    .locals 4
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2622
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->E:Landroid/view/View;

    if-nez v1, :cond_0

    .line 2657
    :goto_0
    return-void

    .line 2627
    :cond_0
    if-eqz p1, :cond_1

    .line 2628
    sget v1, Leuj$a;->conf_view_enter_from_bottom:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2629
    .local v0, "showAnimation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2634
    :goto_1
    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$11;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2656
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->E:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 2631
    .end local v0    # "showAnimation":Landroid/view/animation/Animation;
    :cond_1
    sget v1, Leuj$a;->conf_view_exit_to_bottom:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2632
    .restart local v0    # "showAnimation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_1
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    .line 34494
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$8;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcpi$a;)V

    .line 109
    return-void
.end method

.method private j(Z)V
    .locals 4
    .param p1, "refresh"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x3e9

    .line 2660
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.teleconf.control.reservation"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2661
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "conf_type"

    sget-object v3, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2662
    if-eqz p1, :cond_1

    .line 2663
    const-string/jumbo v2, "conf_reservation_action"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2670
    :cond_0
    :goto_0
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2671
    return-void

    .line 2665
    :cond_1
    const-string/jumbo v2, "conf_reservation_action"

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aa:Z

    if-eqz v3, :cond_2

    const/16 v1, 0x3ec

    :cond_2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2666
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aa:Z

    if-eqz v1, :cond_0

    .line 2667
    const-string/jumbo v1, "conf_reservation_id"

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ah:Z

    return v0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->j(Z)V

    return-void
.end method

.method private k(Z)V
    .locals 4
    .param p1, "audioOnly"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2828
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-nez v1, :cond_1

    .line 2836
    :cond_0
    :goto_0
    return-void

    .line 2831
    :cond_1
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "watchMainVideoOnScreen "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c()Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v0

    .line 2833
    .local v0, "mainWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2834
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v1, v0, p1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ab:Z

    return v0
.end method

.method static synthetic l(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->J:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method private l()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1649
    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ad:Z

    if-eqz v2, :cond_1

    .line 1650
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->j()Z

    move-result v0

    .line 1651
    .local v0, "isMuted":Z
    if-nez v0, :cond_0

    .line 1652
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->f()V

    .line 1655
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v1

    .line 1656
    .local v1, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v2, :cond_1

    .line 1657
    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ad:Z

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setMicMuted(Z)V

    .line 1660
    .end local v0    # "isMuted":Z
    .end local v1    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_1
    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
    .param p1, "x1"    # Z

    .prologue
    const/4 v4, 0x0

    .line 109
    .line 40056
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40059
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40061
    if-eqz p1, :cond_1

    .line 40062
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v2, Leuj$l;->and_conf_camera_permission_warn_tip:I

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40066
    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Leuj$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$20;

    invoke-direct {v3, p0, v1, p1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$20;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Z)V

    .line 40067
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Leuj$l;->dt_conference_nav_to_settings:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$19;

    invoke-direct {v3, p0, v1, p1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$19;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Z)V

    .line 40082
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 40098
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 40099
    if-eqz v0, :cond_0

    .line 40100
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 40101
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 40102
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 109
    :cond_0
    return-void

    .line 40064
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v2, Leuj$l;->and_conf_voip_record_permission_warn_tip:I

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private l(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2982
    if-eqz p1, :cond_0

    .line 2983
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_EXT:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lewt;->a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 2988
    :goto_0
    return-void

    .line 2985
    :cond_0
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_EXT:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lewt;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 2986
    invoke-static {p0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v0

    invoke-virtual {v0}, Levu;->d()V

    goto :goto_0
.end method

.method private m()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v12, 0x4

    const/4 v7, 0x1

    const/16 v11, 0x8

    const/4 v8, 0x0

    .line 1678
    sget-object v6, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "Update view by state "

    aput-object v10, v9, v8

    iget-object v10, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v9, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v6, v9, :cond_7

    .line 1680
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    sget-object v9, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_CALLED:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    invoke-virtual {v6, v9}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;)V

    .line 1681
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Q:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-virtual {v6, v11}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->setVisibility(I)V

    .line 1682
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->c:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1683
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->s:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1684
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->C:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1685
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->x:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1687
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v6, :cond_0

    .line 1688
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v3, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 1689
    .local v3, "nickName":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->t:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v6, v3, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1692
    .end local v3    # "nickName":Ljava/lang/String;
    :cond_0
    iget v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-nez v6, :cond_4

    .line 1693
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->B:Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;

    invoke-virtual {v6, v11}, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->setVisibility(I)V

    .line 1694
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->y:Landroid/widget/TextView;

    sget v7, Leuj$l;->dt_conference_video_invite_incoming:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1695
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->A:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1696
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1717
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->o()V

    .line 1805
    :cond_2
    :goto_2
    return-void

    .line 1688
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v3, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_0

    .line 1698
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->y:Landroid/widget/TextView;

    sget v9, Leuj$l;->dt_conference_video_conf_invite_incoming:I

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 1699
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->B:Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;

    invoke-virtual {v6, v8}, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->setVisibility(I)V

    .line 1700
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->A:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1701
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1703
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1704
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->B:Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;

    invoke-virtual {v6, v8}, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->setNickVisible(Z)V

    .line 1706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1707
    .local v0, "destCallees":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x5

    if-lt v6, v9, :cond_5

    move v2, v7

    .line 1708
    .local v2, "hasTail":Z
    :goto_3
    if-eqz v2, :cond_6

    .line 1709
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    invoke-interface {v6, v8, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 1713
    :goto_4
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->B:Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;

    invoke-virtual {v6, v0, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->a(Ljava/util/List;Z)V

    .line 1714
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->z:Landroid/widget/TextView;

    sget v9, Leuj$l;->dt_conf_video_accept_member_count:I

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {p0, v9, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v2    # "hasTail":Z
    :cond_5
    move v2, v8

    .line 1707
    goto :goto_3

    .line 1711
    .restart local v2    # "hasTail":Z
    :cond_6
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 1718
    .end local v0    # "destCallees":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v2    # "hasTail":Z
    :cond_7
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v9, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v6, v9, :cond_12

    .line 1719
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    sget-object v9, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_TALKING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    invoke-virtual {v6, v9}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;)V

    .line 1720
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->c:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1722
    iget v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-nez v6, :cond_e

    .line 1723
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Q:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-virtual {v6, v11}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->setVisibility(I)V

    .line 1724
    iget-boolean v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ai:Z

    if-eqz v6, :cond_c

    .line 1725
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->s:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1726
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Leuj$h;->conf_common_green_dot_icon:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1727
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1728
    iget-boolean v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->af:Z

    if-nez v6, :cond_8

    .line 1730
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v6}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b()I

    move-result v1

    .line 1731
    .local v1, "destIndex":I
    if-nez v1, :cond_b

    .line 1732
    const/4 v1, 0x1

    .line 1737
    :goto_5
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v6, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v4

    .line 1738
    .local v4, "subWindow":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v4, :cond_8

    .line 1739
    sget-object v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v6, v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 1740
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)V

    .line 1758
    .end local v1    # "destIndex":I
    .end local v4    # "subWindow":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_8
    :goto_6
    iget-boolean v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->af:Z

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ag:Z

    if-nez v6, :cond_a

    .line 1759
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v6}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c()Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v5

    .line 1760
    .local v5, "userWindowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v5, :cond_9

    .line 1761
    sget-object v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v6, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 1763
    :cond_9
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->n()V

    .line 1765
    .end local v5    # "userWindowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_a
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->o()V

    .line 1766
    iget-boolean v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aj:Z

    if-eqz v6, :cond_2

    .line 1767
    invoke-direct {p0, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Z)V

    .line 1768
    invoke-direct {p0, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->h(Z)V

    goto/16 :goto_2

    .line 1734
    .restart local v1    # "destIndex":I
    :cond_b
    const/4 v1, 0x0

    goto :goto_5

    .line 1744
    .end local v1    # "destIndex":I
    :cond_c
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1745
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_d

    .line 1746
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->y:Landroid/widget/TextView;

    sget v8, Leuj$l;->conf_txt_video_joining_conf:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1748
    :cond_d
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    invoke-direct {p0, v6}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;)V

    goto :goto_6

    .line 1751
    :cond_e
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->s:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1752
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Leuj$h;->conf_common_green_dot_icon:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1753
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Q:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-virtual {v6, v8}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->setVisibility(I)V

    .line 1754
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 31265
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v6, :cond_8

    .line 31270
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v6}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v6

    .line 31271
    if-eqz v6, :cond_19

    .line 31272
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v12, :cond_11

    move v6, v7

    .line 31275
    :goto_7
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r()Z

    move-result v9

    .line 31276
    if-nez v9, :cond_8

    if-eqz v6, :cond_8

    .line 31293
    const-string/jumbo v6, "conf_fir_video_control_guide_warning"

    invoke-static {v6, v7}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v6

    .line 31294
    if-eqz v6, :cond_f

    .line 31295
    const-string/jumbo v9, "conf_fir_video_control_guide_warning"

    invoke-static {v9, v8}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 31276
    :cond_f
    if-eqz v6, :cond_8

    .line 31277
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->I:Lcom/alibaba/android/teleconf/widget/ConfVideoAnimView;

    if-nez v6, :cond_10

    .line 31278
    new-instance v6, Lcom/alibaba/android/teleconf/widget/ConfVideoAnimView;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/widget/ConfVideoAnimView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->I:Lcom/alibaba/android/teleconf/widget/ConfVideoAnimView;

    .line 31280
    :cond_10
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->I:Lcom/alibaba/android/teleconf/widget/ConfVideoAnimView;

    new-instance v8, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$2;

    invoke-direct {v8, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    invoke-virtual {v6, v8}, Lcom/alibaba/android/teleconf/widget/ConfVideoAnimView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31289
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->I:Lcom/alibaba/android/teleconf/widget/ConfVideoAnimView;

    invoke-virtual {v6, v8}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_6

    :cond_11
    move v6, v8

    .line 31272
    goto :goto_7

    .line 1770
    :cond_12
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v7, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_JOINING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v6, v7, :cond_14

    .line 1771
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    sget-object v7, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_JOINING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;)V

    .line 1772
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->c:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1773
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Q:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-virtual {v6, v11}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->setVisibility(I)V

    .line 1774
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1775
    iget v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-eqz v6, :cond_13

    .line 1776
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->s:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1778
    :cond_13
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->o()V

    goto/16 :goto_2

    .line 1779
    :cond_14
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v7, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v6, v7, :cond_18

    .line 1780
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    sget-object v7, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_CALLING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;)V

    .line 1781
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->c:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1782
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Q:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-virtual {v6, v11}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->setVisibility(I)V

    .line 1783
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1784
    iget v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-nez v6, :cond_17

    .line 1785
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->s:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1786
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->C:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1787
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->x:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1788
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    invoke-direct {p0, v6}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;)V

    .line 1789
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v6, :cond_15

    .line 1790
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v3, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 1791
    .restart local v3    # "nickName":Ljava/lang/String;
    :goto_8
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->t:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1799
    .end local v3    # "nickName":Ljava/lang/String;
    :cond_15
    :goto_9
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->o()V

    goto/16 :goto_2

    .line 1790
    :cond_16
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v3, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_8

    .line 1795
    :cond_17
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->s:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1796
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->n()V

    goto :goto_9

    .line 1801
    :cond_18
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v7, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_IDE:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v6, v7, :cond_2

    .line 1803
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v8}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_19
    move v6, v8

    goto/16 :goto_7
.end method

.method static synthetic m(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->n()V

    return-void
.end method

.method private n()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 2001
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-nez v7, :cond_1

    .line 2079
    :cond_0
    :goto_0
    return-void

    .line 2004
    :cond_1
    sget-object v7, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    new-array v11, v10, [Ljava/lang/String;

    const-string/jumbo v12, "Update main view"

    aput-object v12, v11, v8

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v7}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c()Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v5

    .line 2006
    .local v5, "mainWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v5, :cond_0

    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v7, :cond_0

    .line 2007
    const/4 v2, 0x1

    .line 2008
    .local v2, "fullScreenLayoutPara":Z
    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a()Z

    move-result v3

    .line 2009
    .local v3, "hasWindowShare":Z
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isInConf()Z

    move-result v1

    .line 2010
    .local v1, "beInConf":Z
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted()Z

    move-result v0

    .line 2011
    .local v0, "beCamMuted":Z
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isAudioRunning()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCallRunning()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_2
    move v4, v10

    .line 2013
    .local v4, "isInAudioOrCall":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 2015
    iget-boolean v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aj:Z

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ak:Z

    if-nez v7, :cond_3

    iget v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-eqz v7, :cond_3

    .line 2016
    const/4 v2, 0x0

    .line 2019
    :cond_3
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-direct {p0, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    .line 2020
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 2021
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v7, :cond_4

    .line 2022
    iget-object v11, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v3, :cond_9

    move v7, v8

    :goto_2
    invoke-virtual {v11, v7}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    .line 2024
    :cond_4
    if-nez v3, :cond_c

    .line 2027
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->h:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2045
    :goto_3
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    if-ne v7, v11, :cond_5

    .line 2046
    if-eqz v1, :cond_11

    .line 2047
    if-nez v0, :cond_e

    if-eqz v4, :cond_e

    .line 2048
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-direct {p0, v10, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(ZLcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    .line 2049
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2073
    :cond_5
    :goto_4
    invoke-direct {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d(Z)V

    .line 2074
    if-eqz v3, :cond_7

    iget-boolean v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aj:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ak:Z

    if-eqz v7, :cond_7

    :cond_6
    move v8, v10

    :cond_7
    invoke-direct {p0, v8}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e(Z)V

    .line 2075
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e:Landroid/view/View;

    invoke-virtual {v7, v8}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 2076
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->h:Landroid/view/View;

    invoke-virtual {v7, v8}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 2077
    iget-boolean v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aj:Z

    invoke-direct {p0, v3, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(ZZ)V

    goto/16 :goto_0

    .end local v4    # "isInAudioOrCall":Z
    :cond_8
    move v4, v8

    .line 2011
    goto :goto_1

    .restart local v4    # "isInAudioOrCall":Z
    :cond_9
    move v7, v9

    .line 2022
    goto :goto_2

    .line 2030
    :cond_a
    if-eqz v1, :cond_c

    .line 2031
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v7, :cond_b

    .line 2032
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v7, v8}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    .line 2034
    :cond_b
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    if-eq v7, v11, :cond_c

    .line 2035
    if-nez v0, :cond_d

    if-eqz v4, :cond_d

    .line 2036
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-direct {p0, v10, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(ZLcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    .line 2037
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2043
    :cond_c
    :goto_5
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->h:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 2039
    :cond_d
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 2051
    :cond_e
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v7, :cond_10

    .line 2052
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v7}, Lorg/webrtc/sdk/SophonSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 2053
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_f

    .line 2054
    check-cast v6, Landroid/view/ViewGroup;

    .end local v6    # "parent":Landroid/view/ViewParent;
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2056
    :cond_f
    sget-object v7, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v11, "NEW SURFACE VIEW for main "

    invoke-static {v7, v11}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v7, v8}, Lorg/webrtc/sdk/SophonSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 2058
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    iget-object v11, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v7, v11}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->addView(Landroid/view/View;)V

    .line 2059
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v7, v8}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    .line 2062
    invoke-direct {p0, v8}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Z)V

    .line 2065
    :cond_10
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 2068
    :cond_11
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-direct {p0, v10, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(ZLcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    .line 2069
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2070
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->h:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method static synthetic n(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->p()V

    return-void
.end method

.method private o()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 2083
    iget v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-nez v4, :cond_2

    .line 2084
    const/4 v1, 0x1

    .line 2085
    .local v1, "isSingleCall":Z
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->G:Landroid/view/View;

    sget v5, Leuj$f;->ui_common_transparent_cell_bg_color:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2086
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->m:Landroid/widget/TextView;

    sget v5, Leuj$l;->dt_conference_start_btntitle_video:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2093
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v5, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v4, v5, :cond_7

    .line 2095
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v4, :cond_0

    .line 2096
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->m()Z

    move-result v0

    .line 2097
    .local v0, "isCameraEnabled":Z
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v4, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->b(Z)V

    .line 2098
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->j()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Z)V

    .line 2099
    if-eqz v0, :cond_4

    .line 2100
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->J:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2105
    .end local v0    # "isCameraEnabled":Z
    :cond_0
    :goto_2
    if-eqz v1, :cond_6

    .line 2106
    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ai:Z

    if-eqz v2, :cond_5

    .line 2107
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2108
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2112
    :goto_3
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->K:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2117
    :goto_4
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->c(Z)V

    .line 2146
    :cond_1
    :goto_5
    return-void

    .line 2088
    .end local v1    # "isSingleCall":Z
    :cond_2
    const/4 v1, 0x0

    .line 2089
    .restart local v1    # "isSingleCall":Z
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->G:Landroid/view/View;

    sget v5, Leuj$f;->conf_call_and_video_bg_color:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2090
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->m:Landroid/widget/TextView;

    sget v5, Leuj$l;->dt_conference_start_btntitle_videoconf:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .restart local v0    # "isCameraEnabled":Z
    :cond_3
    move v2, v3

    .line 2097
    goto :goto_1

    .line 2102
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->J:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_2

    .line 2110
    .end local v0    # "isCameraEnabled":Z
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 2114
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->K:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2115
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 2118
    :cond_7
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v5, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-eq v4, v5, :cond_8

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v5, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_JOINING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v4, v5, :cond_d

    .line 2121
    :cond_8
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v4, :cond_9

    .line 2122
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->m()Z

    move-result v0

    .line 2123
    .restart local v0    # "isCameraEnabled":Z
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    if-nez v0, :cond_a

    :goto_6
    invoke-virtual {v4, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->b(Z)V

    .line 2124
    if-eqz v0, :cond_b

    .line 2125
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->J:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2130
    .end local v0    # "isCameraEnabled":Z
    :cond_9
    :goto_7
    if-eqz v1, :cond_c

    .line 2131
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2132
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2133
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->K:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .restart local v0    # "isCameraEnabled":Z
    :cond_a
    move v2, v3

    .line 2123
    goto :goto_6

    .line 2127
    :cond_b
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->J:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_7

    .line 2135
    .end local v0    # "isCameraEnabled":Z
    :cond_c
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2136
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->K:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2137
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 2139
    :cond_d
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v4, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v2, v4, :cond_1

    .line 2140
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->K:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2142
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2143
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->J:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2144
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->c(Z)V

    goto/16 :goto_5
.end method

.method static synthetic o(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aa:Z

    return v0
.end method

.method private p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2418
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Leave conf"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v0, :cond_0

    .line 2421
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aa:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c(Z)V

    .line 2423
    :cond_0
    return-void

    .line 2421
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic p(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->u()V

    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->am:I

    return v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 2460
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$6;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcpi$a;)V

    .line 2476
    return-void
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->E:Landroid/view/View;

    .line 2615
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->F:Levp;

    if-eqz v0, :cond_0

    .line 2617
    const/4 v0, 0x1

    .line 2619
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic r(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->af:Z

    return v0
.end method

.method private s()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aq:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 2702
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$13;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$13;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aq:Ljava/util/TimerTask;

    .line 2718
    invoke-static {}, Leyy;->a()Leyy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aq:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Leyy;->a(Ljava/util/TimerTask;JJ)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ar:Ljava/util/concurrent/ScheduledFuture;

    .line 2720
    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    .line 35601
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v0, :cond_0

    .line 35602
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->e()V

    .line 109
    :cond_0
    return-void
.end method

.method private t()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2758
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->au:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 2759
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->au:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2760
    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->au:Ljava/util/TimerTask;

    .line 2762
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->av:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 2763
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->av:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 2764
    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->av:Ljava/util/concurrent/ScheduledFuture;

    .line 2766
    :cond_1
    return-void
.end method

.method static synthetic t(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->v()V

    return-void
.end method

.method private u()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2786
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->as:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 2787
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->as:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2788
    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->as:Ljava/util/TimerTask;

    .line 2790
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->at:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 2791
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->at:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 2792
    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->at:Ljava/util/concurrent/ScheduledFuture;

    .line 2794
    :cond_1
    return-void
.end method

.method static synthetic u(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aj:Z

    return v0
.end method

.method static synthetic v(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    return v0
.end method

.method private v()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3015
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Minimize the video window"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3016
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$16;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$16;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    invoke-static {p0, v0}, Leyw;->a(Landroid/app/Activity;Lcpi$a;)V

    .line 3028
    return-void
.end method

.method static synthetic w(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Q:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ak:Z

    return v0
.end method

.method static synthetic z(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ai:Z

    return v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 1490
    return-void
.end method

.method public final a()Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    return-object v0
.end method

.method public final a(I)V
    .locals 7
    .param p1, "errCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1116
    .line 20499
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    .line 1116
    if-nez v2, :cond_1

    .line 1117
    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "Activity not active"

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "Video conference error"

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_JoinFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->value()I

    move-result v2

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_PublishFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    .line 1122
    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->value()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 1123
    :cond_2
    sget v2, Leuj$l;->dt_conf_video_member_status_join_failed:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1124
    .local v1, "toast":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1125
    .local v0, "beJoining":Z
    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_JoinFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->value()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 1126
    const/4 v0, 0x1

    .line 21107
    :cond_3
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21110
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21111
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Leuj$l;->cancel:I

    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$22;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$22;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 21112
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Leuj$l;->dt_common_retry:I

    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$21;

    invoke-direct {v5, p0, v2, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$21;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Z)V

    .line 21121
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 21141
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 21142
    if-eqz v2, :cond_0

    .line 21143
    invoke-virtual {v2, v6}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 21144
    invoke-virtual {v2, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 21145
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 1129
    .end local v0    # "beJoining":Z
    .end local v1    # "toast":Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_ServerError:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->value()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1130
    sget v2, Leuj$l;->dt_conf_video_connect_error_alert:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1131
    .restart local v1    # "toast":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Ljava/lang/String;Z)V

    .line 1132
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->p()V

    goto :goto_0
.end method

.method public final a(ILjava/util/List;)V
    .locals 3
    .param p1, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1138
    .line 21499
    .local p2, "memberObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 1138
    if-nez v1, :cond_1

    .line 1139
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Activity not active"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v1, :cond_0

    .line 1145
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1146
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1147
    .local v0, "count":I
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    if-eqz v1, :cond_2

    .line 1148
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b(Ljava/util/List;)V

    .line 1149
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemInserted(I)V

    .line 1150
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemRangeChanged(II)V

    .line 1153
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->F:Levp;

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_ADD_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-virtual {v1, v2, p1, v0}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V
    .locals 4
    .param p1, "userWindowObject"    # Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 824
    .line 13499
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 824
    if-nez v0, :cond_1

    .line 825
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Activity not active"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 831
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "onConfMediaPrepare "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;IJ)V
    .locals 11
    .param p1, "actionType"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .param p2, "startIndex"    # I
    .param p3, "uid"    # J

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1161
    .line 22499
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1161
    if-nez v0, :cond_1

    .line 1162
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Activity not active"

    invoke-static {v0, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v0, :cond_2

    if-ltz p2, :cond_2

    if-nez p1, :cond_3

    .line 1166
    :cond_2
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid user enter the conference: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1169
    :cond_3
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v7, "User state changed "

    aput-object v7, v2, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    const/4 v7, 0x2

    const-string/jumbo v8, ", action "

    aput-object v8, v2, v7

    const/4 v7, 0x3

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_JOIN_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne v0, p1, :cond_e

    .line 1171
    const-wide/16 v8, 0x0

    cmp-long v0, p3, v8

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->W:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v0, p3, v8

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v1

    .line 1173
    .local v1, "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1174
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 1175
    .local v6, "destUserWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v6, :cond_0

    .line 1176
    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1178
    iput-boolean v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aj:Z

    .line 1180
    iget-boolean v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-nez v0, :cond_5

    .line 1181
    invoke-direct {p0, v6, p2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->c(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V

    .line 1190
    :goto_1
    iget-object v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1191
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_CAM_STATUS_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 1192
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->n()V

    .line 1194
    :cond_4
    invoke-direct {p0, v5, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(ZZ)V

    goto/16 :goto_0

    .line 1183
    :cond_5
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k(Z)V

    .line 1185
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ak:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-eqz v0, :cond_6

    .line 1186
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d(Z)V

    .line 1188
    :cond_6
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ak:Z

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e(Z)V

    goto :goto_1

    .line 1197
    :cond_7
    invoke-direct {p0, v4, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(ZZ)V

    .line 1198
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aj:Z

    if-eqz v0, :cond_b

    .line 1200
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Z)V

    .line 1201
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->h(Z)V

    .line 1202
    iget-boolean v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-eqz v0, :cond_8

    .line 1203
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e(Z)V

    .line 1204
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k(Z)V

    .line 1206
    :cond_8
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-eqz v0, :cond_9

    .line 1208
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Ljava/util/List;IIZZ)V

    .line 1210
    :cond_9
    iget-object v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1211
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_CAM_STATUS_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 1212
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->n()V

    .line 1236
    :cond_a
    :goto_2
    iget-boolean v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v0

    .line 23182
    iget-boolean v0, v0, Lewt;->a:Z

    .line 1236
    if-eqz v0, :cond_0

    .line 1237
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 1238
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Lewt;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V

    goto/16 :goto_0

    .line 1216
    :cond_b
    iget-boolean v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-eqz v0, :cond_c

    .line 1217
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 1218
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k(Z)V

    .line 1219
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e(Z)V

    .line 1220
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->n()V

    .line 1231
    :goto_3
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1232
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->F:Levp;

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-virtual {v0, v2, p2, v5}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto :goto_2

    .line 1222
    :cond_c
    invoke-direct {p0, p2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, p0

    move v2, p2

    move v3, v5

    .line 1224
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Ljava/util/List;IIZZ)V

    goto :goto_3

    :cond_d
    move-object v0, p0

    move v2, p2

    move v3, v5

    move v4, v5

    .line 1227
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Ljava/util/List;IIZZ)V

    goto :goto_3

    .line 1244
    .end local v1    # "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    .end local v6    # "destUserWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_e
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_LEAVE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-eq v0, p1, :cond_f

    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-eq v0, p1, :cond_f

    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_RECALL_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-eq v0, p1, :cond_f

    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CLOSE_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-eq v0, p1, :cond_f

    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_OPEN_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne v0, p1, :cond_16

    .line 1250
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v0, p2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v6

    .line 1251
    .restart local v6    # "destUserWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v6, :cond_0

    .line 1252
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 1253
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CLOSE_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-eq v0, p1, :cond_10

    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_OPEN_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne v0, p1, :cond_11

    .line 1255
    :cond_10
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_CAM_STATUS_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 1257
    :cond_11
    iget-boolean v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-eqz v0, :cond_12

    .line 1258
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->n()V

    .line 1260
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v0

    .line 24182
    iget-boolean v0, v0, Lewt;->a:Z

    .line 1260
    if-eqz v0, :cond_12

    .line 1261
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Lewt;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V

    .line 1264
    :cond_12
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-nez v0, :cond_13

    .line 1265
    iget-boolean v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-nez v0, :cond_0

    .line 1266
    invoke-direct {p0, v6}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)V

    goto/16 :goto_0

    .line 1269
    :cond_13
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    if-eqz v0, :cond_14

    .line 1270
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b(Ljava/util/List;)V

    .line 1271
    iget-object v0, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    if-eq v0, v2, :cond_15

    .line 1272
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    iget-object v2, v6, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    invoke-virtual {v0, p2, v2}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 1279
    :cond_14
    :goto_4
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->F:Levp;

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-virtual {v0, v2, p2, v5}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto/16 :goto_0

    .line 1274
    :cond_15
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemChanged(I)V

    goto :goto_4

    .line 1284
    .end local v6    # "destUserWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_16
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne v0, p1, :cond_0

    .line 1285
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V
    .locals 7
    .param p1, "actionType"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .param p2, "errCode"    # I
    .param p3, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1080
    .line 17499
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 1080
    if-nez v1, :cond_1

    .line 1081
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Activity not active"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    if-eqz p1, :cond_0

    .line 1087
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Action "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " fail, "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 1088
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    .line 1087
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CREATE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne p1, v1, :cond_3

    .line 1091
    sget v1, Leuj$l;->conf_txt_create_failed_toast:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "toast":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1093
    move-object v0, p3

    .line 1095
    :cond_2
    const-string/jumbo v1, "200"

    .line 18494
    invoke-static {v1, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p0, v6, v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1098
    .end local v0    # "toast":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_INIT:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne p1, v1, :cond_4

    .line 1100
    invoke-virtual {p0, v6, v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1101
    :cond_4
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne p1, v1, :cond_6

    .line 1102
    sget v1, Leuj$l;->dt_conference_video_kickout_fail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1103
    .restart local v0    # "toast":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1104
    move-object v0, p3

    .line 1106
    :cond_5
    const-string/jumbo v1, "200"

    .line 19494
    invoke-static {v1, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1108
    .end local v0    # "toast":Ljava/lang/String;
    :cond_6
    const/16 v1, 0x198

    if-eq p2, v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1109
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 20494
    invoke-static {v1, p3}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;Ljava/lang/Object;)V
    .locals 24
    .param p1, "actionType"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .param p2, "destObj"    # Ljava/lang/Object;

    .prologue
    .line 896
    .line 15499
    invoke-static/range {p0 .. p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    .line 896
    if-nez v4, :cond_1

    .line 897
    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v6, "Activity not active"

    invoke-static {v4, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    .end local p2    # "destObj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 900
    .restart local p2    # "destObj":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v4, :cond_0

    .line 903
    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_c

    .line 904
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 907
    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "Kick off user "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "destObj":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 909
    .local v19, "position":I
    if-ltz v19, :cond_0

    .line 912
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v5

    .line 913
    .local v5, "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz v5, :cond_0

    .line 917
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v22

    .line 918
    .local v22, "windowCount":I
    const/4 v13, -0x1

    .local v13, "freshPos":I
    const/4 v12, 0x0

    .line 919
    .local v12, "freshCount":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 921
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    add-int/lit8 v4, v4, 0x4

    move/from16 v0, v22

    if-ge v4, v0, :cond_8

    .line 922
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v13, v4, -0x1

    .line 923
    const/4 v12, 0x1

    .line 940
    :cond_2
    :goto_1
    const/4 v14, 0x0

    .line 941
    .local v14, "mainIndexChanged":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b()I

    move-result v15

    .line 942
    .local v15, "mainPos":I
    move/from16 v0, v19

    if-ge v0, v15, :cond_a

    .line 943
    add-int/lit8 v15, v15, -0x1

    .line 944
    const/4 v14, 0x1

    .line 960
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move/from16 v0, v19

    invoke-interface {v4, v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c(I)V

    .line 962
    if-ltz v13, :cond_4

    if-lez v12, :cond_4

    .line 963
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move v6, v13

    move v7, v12

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Ljava/util/List;IIZZ)V

    .line 965
    :cond_4
    if-eqz v14, :cond_5

    .line 966
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v4, v15}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 968
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    if-eqz v4, :cond_6

    .line 969
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v6}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b(Ljava/util/List;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemRemoved(I)V

    .line 971
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->getItemCount()I

    move-result v11

    .line 972
    .local v11, "count":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move/from16 v0, v19

    invoke-virtual {v4, v0, v11}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemRangeChanged(II)V

    .line 974
    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "Remove update "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ", count "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    .end local v11    # "count":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 978
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->F:Levp;

    sget-object v6, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const/4 v7, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v6, v0, v7}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    .line 981
    :cond_7
    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "Screen start index: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    .line 982
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ", main index :"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 983
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 981
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 924
    .end local v14    # "mainIndexChanged":Z
    .end local v15    # "mainPos":I
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    add-int/lit8 v4, v4, 0x4

    move/from16 v0, v22

    if-ne v4, v0, :cond_2

    .line 925
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    if-lez v4, :cond_2

    .line 926
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    .line 927
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    .line 928
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 933
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    move/from16 v0, v19

    if-ge v0, v4, :cond_2

    .line 934
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    if-lez v4, :cond_2

    .line 935
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    goto/16 :goto_1

    .line 945
    .restart local v14    # "mainIndexChanged":Z
    .restart local v15    # "mainPos":I
    :cond_a
    move/from16 v0, v19

    if-ne v0, v15, :cond_3

    .line 947
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aj:Z

    if-eqz v4, :cond_b

    .line 949
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Z)V

    .line 950
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->h(Z)V

    .line 952
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Ljava/util/List;IIZZ)V

    .line 956
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->c(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V

    .line 957
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b()I

    move-result v15

    goto/16 :goto_2

    .line 984
    .end local v5    # "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    .end local v12    # "freshCount":I
    .end local v13    # "freshPos":I
    .end local v14    # "mainIndexChanged":Z
    .end local v15    # "mainPos":I
    .end local v19    # "position":I
    .end local v22    # "windowCount":I
    .restart local p2    # "destObj":Ljava/lang/Object;
    :cond_c
    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    move-object/from16 v0, p1

    if-eq v4, v0, :cond_d

    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_12

    .line 986
    :cond_d
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 989
    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "Mute/Unmute user "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "destObj":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 991
    .restart local v19    # "position":I
    if-ltz v19, :cond_0

    .line 995
    if-nez v19, :cond_e

    .line 996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->j()Z

    move-result v18

    .line 997
    .local v18, "micMuted":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Z)V

    .line 999
    .end local v18    # "micMuted":Z
    :cond_e
    const/4 v10, 0x0

    .line 1000
    .local v10, "beMainUser":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move/from16 v0, v19

    invoke-interface {v4, v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v23

    .line 1001
    .local v23, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v23, :cond_0

    .line 1002
    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_MIC_STATUS_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 1004
    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-eqz v4, :cond_f

    .line 1005
    const/4 v10, 0x1

    .line 1006
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    .line 1008
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v4

    .line 16182
    iget-boolean v4, v4, Lewt;->a:Z

    .line 1008
    if-eqz v4, :cond_f

    .line 1009
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v6}, Lewt;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V

    .line 1013
    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-nez v4, :cond_10

    .line 1014
    if-nez v10, :cond_0

    .line 1015
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)V

    goto/16 :goto_0

    .line 1018
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    if-eqz v4, :cond_11

    .line 1019
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v6}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b(Ljava/util/List;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    move/from16 v0, v19

    invoke-virtual {v4, v0, v6}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 1023
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1024
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->F:Levp;

    sget-object v6, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const/4 v7, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v6, v0, v7}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto/16 :goto_0

    .line 1028
    .end local v10    # "beMainUser":Z
    .end local v19    # "position":I
    .end local v23    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .restart local p2    # "destObj":Ljava/lang/Object;
    :cond_12
    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_RECALL_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    move-object/from16 v0, p1

    if-eq v4, v0, :cond_13

    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CLOSE_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    move-object/from16 v0, p1

    if-eq v4, v0, :cond_13

    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_OPEN_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_14

    .line 1031
    :cond_13
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 1034
    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, " user "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "destObj":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1036
    .restart local v19    # "position":I
    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;IJ)V

    goto/16 :goto_0

    .line 1037
    .end local v19    # "position":I
    .restart local p2    # "destObj":Ljava/lang/Object;
    :cond_14
    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    move-object/from16 v0, p1

    if-eq v4, v0, :cond_15

    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_0

    .line 1039
    :cond_15
    sget-object v6, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v8, "Muteall/unmuteall "

    aput-object v8, v7, v4

    const/4 v8, 0x1

    if-eqz p2, :cond_1b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    aput-object v4, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c()Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v16

    .line 1042
    .local v16, "mainWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v16, :cond_18

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v4, :cond_18

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1043
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v21

    .line 1044
    .local v21, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aa:Z

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    if-eqz v4, :cond_16

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    iget-wide v8, v4, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->hostId:J

    cmp-long v4, v6, v8

    if-nez v4, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aa:Z

    if-eqz v4, :cond_18

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->W:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_18

    .line 1046
    :cond_17
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    .line 1049
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v4

    .line 17182
    iget-boolean v4, v4, Lewt;->a:Z

    .line 1049
    if-eqz v4, :cond_18

    .line 1050
    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_MIC_STATUS_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 1051
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v6}, Lewt;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V

    .line 1055
    .end local v21    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->j()Z

    move-result v18

    .line 1056
    .restart local v18    # "micMuted":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Z)V

    .line 1058
    const/16 v17, 0x0

    .line 1059
    .local v17, "memCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v5

    .line 1060
    .restart local v5    # "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz v5, :cond_1a

    .line 1061
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v17

    .line 1062
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    if-eqz v4, :cond_1a

    .line 1063
    const/16 v20, 0x4

    .line 1064
    .local v20, "refreshCount":I
    const/4 v4, 0x4

    move/from16 v0, v17

    if-ge v0, v4, :cond_19

    .line 1065
    move/from16 v20, v17

    .line 1067
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b(Ljava/util/List;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    sget-object v7, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_MIC_STATUS_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0, v7}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 1072
    .end local v20    # "refreshCount":I
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->F:Levp;

    sget-object v6, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const/4 v7, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v6, v7, v0}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto/16 :goto_0

    .line 1039
    .end local v5    # "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    .end local v16    # "mainWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .end local v17    # "memCount":I
    .end local v18    # "micMuted":Z
    :cond_1b
    const-string/jumbo v4, ""

    goto/16 :goto_3
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8
    .param p1, "confId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 761
    .line 11499
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 761
    if-nez v0, :cond_0

    .line 762
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Activity not active"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :goto_0
    return-void

    .line 765
    :cond_0
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "onConfStarted"

    invoke-static {v0, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Z:Ljava/lang/String;

    .line 767
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ag:Z

    .line 768
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 770
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->m()V

    .line 772
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->s()V

    .line 11734
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->au:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 11735
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$14;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->au:Ljava/util/TimerTask;

    .line 11753
    invoke-static {}, Leyy;->a()Leyy;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->au:Ljava/util/TimerTask;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v0, v4, v6, v7}, Leyy;->a(Ljava/util/TimerTask;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->av:Ljava/util/concurrent/ScheduledFuture;

    .line 11797
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-nez v0, :cond_3

    .line 777
    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ag:Z

    goto :goto_0

    .line 11801
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ab:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k(Z)V

    .line 11803
    iput v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    .line 11805
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-nez v0, :cond_4

    move v1, v2

    .line 11808
    :cond_4
    if-eqz v1, :cond_2

    .line 11809
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v1

    .line 11810
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11813
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v3, :cond_6

    move v0, v3

    .line 11818
    :goto_3
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    if-eqz v3, :cond_2

    .line 11820
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b(Ljava/util/List;)V

    .line 11821
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    iget v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ap:I

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemRangeChanged(II)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 11801
    goto :goto_2

    .line 11816
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "toast"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 793
    .line 12499
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    .line 793
    if-nez v2, :cond_1

    .line 794
    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "Activity not active"

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v3, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_IDE:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-eq v2, v3, :cond_0

    .line 800
    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "Conf ended"

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    if-eqz p2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 803
    sget v2, Leuj$l;->dt_common_i_know:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "sureBtn":Ljava/lang/String;
    invoke-static {p0, v1, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    .end local v1    # "sureBtn":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v2, :cond_3

    .line 816
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->p()V

    .line 818
    :cond_3
    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_IDE:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 819
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->finish()V

    goto :goto_0

    .line 805
    :cond_4
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-nez v2, :cond_2

    .line 807
    move-object v0, p1

    .local v0, "endToast":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 808
    sget v2, Leuj$l;->conf_txt_video_call_ending:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 810
    :cond_5
    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-eq v2, v3, :cond_2

    .line 811
    const-string/jumbo v2, "200"

    .line 13494
    invoke-static {v2, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1291
    .line 24499
    .local p1, "userPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v7

    .line 1291
    if-nez v7, :cond_1

    .line 1292
    sget-object v7, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v8, "Activity not active"

    invoke-static {v7, v8}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v7, :cond_0

    .line 1299
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1300
    .local v3, "size":I
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1301
    .local v4, "startPos":I
    const/4 v7, 0x1

    if-ne v3, v7, :cond_3

    .line 1302
    iget v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-nez v7, :cond_2

    .line 1303
    sget-object v7, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_IDE:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    invoke-direct {p0, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;)V

    .line 1304
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->p()V

    goto :goto_0

    .line 1306
    :cond_2
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->c(I)V

    .line 1307
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1308
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->F:Levp;

    sget-object v8, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-virtual {v7, v8, v4, v3}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto :goto_0

    .line 1312
    :cond_3
    add-int/lit8 v7, v3, -0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1313
    .local v0, "endPos":I
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(I)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1314
    :cond_4
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v7, v3, -0x1

    if-gt v1, v7, :cond_8

    .line 1316
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1317
    .local v2, "index":Ljava/lang/Integer;
    if-nez v2, :cond_5

    .line 1315
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1320
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1323
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->c(I)V

    goto :goto_2

    .line 1326
    .end local v1    # "i":I
    .end local v2    # "index":Ljava/lang/Integer;
    :cond_6
    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_8

    .line 1327
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1328
    .restart local v2    # "index":Ljava/lang/Integer;
    if-nez v2, :cond_7

    .line 1326
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1331
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1334
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->c(I)V

    goto :goto_4

    .line 1338
    .end local v1    # "i":I
    .end local v2    # "index":Ljava/lang/Integer;
    :cond_8
    const/4 v5, 0x0

    .line 1339
    .local v5, "totalSize":I
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v7}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v6

    .line 1340
    .local v6, "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz v6, :cond_9

    .line 1341
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 1343
    :cond_9
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r()Z

    move-result v7

    if-eqz v7, :cond_0

    if-le v5, v4, :cond_0

    .line 1344
    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->F:Levp;

    sget-object v8, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    sub-int v9, v5, v4

    invoke-virtual {v7, v8, v4, v9}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 8
    .param p1, "beOffhook"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1351
    .line 25499
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    .line 1351
    if-nez v3, :cond_1

    .line 1352
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "Activity not active"

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v4, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-nez v3, :cond_3

    .line 1357
    :cond_2
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "Phone call is ignored when conf is not running"

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1360
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v3, v6}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v2

    .line 1361
    .local v2, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz p1, :cond_7

    .line 1362
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v4, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v3, v4, :cond_6

    .line 1363
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->j()Z

    move-result v1

    .line 1364
    .local v1, "isMicMuted":Z
    if-nez v1, :cond_4

    .line 1365
    iput-boolean v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ae:Z

    .line 1366
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ax:Landroid/view/View$OnClickListener;

    invoke-interface {v3, v5}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1368
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->m()Z

    move-result v0

    .line 1369
    .local v0, "isCamEnabled":Z
    if-eqz v0, :cond_5

    .line 1370
    iput-boolean v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ac:Z

    .line 1371
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ay:Landroid/view/View$OnClickListener;

    invoke-interface {v3, v5}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1373
    :cond_5
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Phone call offhook "

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ","

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    .end local v0    # "isCamEnabled":Z
    .end local v1    # "isMicMuted":Z
    :cond_6
    :goto_1
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v3

    .line 26182
    iget-boolean v3, v3, Lewt;->a:Z

    .line 1393
    if-eqz v3, :cond_0

    .line 1394
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-eqz v3, :cond_0

    .line 1395
    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_CAM_STATUS_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 1396
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v3

    invoke-virtual {v3, v2, v7}, Lewt;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V

    goto :goto_0

    .line 1376
    :cond_7
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v4, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v3, v4, :cond_6

    .line 1377
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ae:Z

    if-eqz v3, :cond_8

    .line 1378
    iput-boolean v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ae:Z

    .line 1380
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "Phone call idl mic reset"

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ax:Landroid/view/View$OnClickListener;

    invoke-interface {v3, v5}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1383
    :cond_8
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ac:Z

    if-eqz v3, :cond_6

    .line 1384
    iput-boolean v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ac:Z

    .line 1386
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "Phone call idl cam reset"

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ay:Landroid/view/View$OnClickListener;

    invoke-interface {v3, v5}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_1
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1494
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 1485
    return-void
.end method

.method public final b(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V
    .locals 5
    .param p1, "userWindowObject"    # Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 836
    .line 14499
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 836
    if-nez v0, :cond_1

    .line 837
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Activity not active"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 843
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "onConfMediaStart "

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v0, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 846
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-nez v0, :cond_4

    .line 847
    iget-boolean v0, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ai:Z

    if-nez v0, :cond_2

    .line 848
    iput-boolean v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ai:Z

    .line 849
    const/4 v0, 0x0

    invoke-static {v0}, Lewp;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    if-eqz v0, :cond_3

    .line 850
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$35;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$35;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->setAnimationListener(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;)V

    .line 869
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->a(Z)V

    .line 877
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->p()V

    goto :goto_0

    .line 872
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->m()V

    .line 874
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->c(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V

    goto :goto_1

    .line 881
    :cond_4
    iget-boolean v0, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-eqz v0, :cond_5

    .line 882
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->n()V

    .line 884
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    if-eqz v0, :cond_6

    .line 885
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b(Ljava/util/List;)V

    .line 886
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemChanged(I)V

    .line 888
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->F:Levp;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-virtual {v0, v1, p2, v4}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto/16 :goto_0
.end method

.method public final b(Z)V
    .locals 5
    .param p1, "beEar"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1419
    .line 27499
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 1419
    if-nez v1, :cond_0

    .line 1420
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Activity not active"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    :goto_0
    return-void

    .line 1423
    :cond_0
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Headset plugged out "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v1, :cond_1

    .line 1426
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1427
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->k()V

    .line 1431
    :cond_1
    sget v1, Leuj$l;->conf_txt_voip_headset_out_speaker_mode:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1432
    .local v0, "toast":Ljava/lang/String;
    const-string/jumbo v1, "200"

    .line 28494
    invoke-static {v1, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 3
    .param p1, "connected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1437
    .line 28499
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 1437
    if-nez v1, :cond_1

    .line 1438
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Activity not active"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1441
    :cond_1
    if-nez p1, :cond_0

    .line 1442
    sget v1, Leuj$l;->conf_txt_video_network_disconnected:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1443
    .local v0, "toast":Ljava/lang/String;
    const-string/jumbo v1, "200"

    .line 29494
    invoke-static {v1, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1499
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 745
    return-object p0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 750
    .line 10499
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 750
    if-nez v0, :cond_0

    .line 751
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Activity not active"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :goto_0
    return-void

    .line 754
    :cond_0
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "onConfPrepared"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_PREPARED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 756
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->n()V

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ah:Z

    if-eqz v0, :cond_0

    .line 783
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Conf has been ready"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :goto_0
    return-void

    .line 786
    :cond_0
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Conf ready"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ah:Z

    .line 788
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->t()V

    goto :goto_0
.end method

.method public final h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1403
    .line 26499
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 1403
    if-nez v1, :cond_0

    .line 1404
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Activity not active"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    :goto_0
    return-void

    .line 1407
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v1, :cond_1

    .line 1408
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-eq v1, v2, :cond_1

    .line 1409
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->k()V

    .line 1412
    :cond_1
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Headset plugged in"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    sget v1, Leuj$l;->conf_txt_voip_headset_in:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1414
    .local v0, "toast":Ljava/lang/String;
    const-string/jumbo v1, "200"

    .line 27494
    invoke-static {v1, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1449
    .line 29499
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1449
    if-nez v0, :cond_0

    .line 1450
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Activity not active"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    :goto_0
    return-void

    .line 1453
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i(Z)V

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1458
    .line 30499
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1458
    if-nez v0, :cond_1

    .line 1459
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Activity not active"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1462
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 707
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_PREPARED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-eq v0, v1, :cond_0

    .line 721
    :goto_0
    return-void

    .line 712
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Back from member list panel"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "videoconf_conf_back_memlist_panel_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 716
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i(Z)V

    goto :goto_0

    .line 719
    :cond_1
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Press back for Minimize"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->v()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 725
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 726
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 727
    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "Screen orientation is portrait"

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, "beShareWindow":Z
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c()Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v1

    .line 730
    .local v1, "mainWindow":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 731
    const/4 v0, 0x1

    .line 733
    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aj:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ak:Z

    if-nez v2, :cond_2

    .line 734
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-eqz v2, :cond_1

    .line 735
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d(Z)V

    .line 737
    :cond_1
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e(Z)V

    .line 739
    :cond_2
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Z)V

    .line 741
    .end local v0    # "beShareWindow":Z
    .end local v1    # "mainWindow":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 601
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 603
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x680080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 608
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 610
    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->setVolumeControlStream(I)V

    .line 611
    invoke-static {v6}, Lewp;->a(Landroid/content/Context;)V

    .line 613
    sget v0, Leuj$j;->activity_teleconf_video_conf_running:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->setContentView(I)V

    .line 3509
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3510
    if-eqz v0, :cond_1

    .line 3511
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Y:Ljava/lang/String;

    .line 3513
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3514
    const-string/jumbo v2, "conf_caller"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3515
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aa:Z

    .line 3516
    const-string/jumbo v1, "choose_user_identities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    .line 3517
    const-string/jumbo v1, "conf_video_to_user_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    .line 3518
    const-string/jumbo v1, "conf_video_3g_remind_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->al:Z

    .line 3519
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 3547
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    if-eqz v0, :cond_1

    .line 3548
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    iget v0, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->confCameraStatus:I

    if-ne v0, v4, :cond_0

    .line 3549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ab:Z

    .line 3551
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    iget v0, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->confMicStatus:I

    if-ne v0, v4, :cond_1

    .line 3552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ad:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3562
    :cond_1
    :goto_1
    const-string/jumbo v0, "tele_video_h"

    invoke-static {v0}, Leyu;->a(Ljava/lang/String;)V

    .line 3563
    invoke-static {}, Lewq;->a()Lewq;

    invoke-static {}, Lewq;->b()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->am:I

    .line 3564
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->an:I

    .line 3565
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->W:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3566
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-nez v0, :cond_2

    .line 3567
    new-instance v0, Lexm;

    invoke-direct {v0, p0}, Lexm;-><init>(Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;)V

    .line 3569
    :cond_2
    iput-boolean v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ah:Z

    .line 3573
    sget v0, Leuj$i;->conf_main_parent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    .line 3575
    sget v0, Leuj$i;->conf_main_panel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->c:Landroid/view/View;

    .line 3576
    sget v0, Leuj$i;->conf_main_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    .line 3577
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aC:Levr;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;->setOnClickListener(Levr;)V

    .line 3578
    sget v0, Leuj$i;->conf_main_surface_view_cover_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e:Landroid/view/View;

    .line 3579
    sget v0, Leuj$i;->conf_main_surface_view_cover_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 3580
    sget v0, Leuj$i;->conf_main_surface_view_cover_state:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g:Landroid/widget/TextView;

    .line 3581
    sget v0, Leuj$i;->conf_main_surface_view_cover_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->h:Landroid/view/View;

    .line 3582
    sget v0, Leuj$i;->conf_share_window_enter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i:Landroid/view/View;

    .line 3583
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3584
    sget v0, Leuj$i;->conf_share_window_enter_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 3586
    sget v0, Leuj$i;->conf_status_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k:Landroid/view/View;

    .line 3587
    sget v0, Leuj$i;->conf_minimize:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 3588
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3589
    sget v0, Leuj$i;->conf_title_show:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->m:Landroid/widget/TextView;

    .line 3590
    sget v0, Leuj$i;->shortcut_adding_red_dot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->n:Landroid/widget/ImageView;

    .line 3591
    sget v0, Leuj$i;->conf_nick_show:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->o:Landroid/widget/TextView;

    .line 3592
    sget v0, Leuj$i;->conf_mic_status_show:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->p:Landroid/widget/TextView;

    .line 3593
    sget v0, Leuj$i;->conf_time_show:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->q:Landroid/widget/TextView;

    .line 3594
    sget v0, Leuj$i;->conf_add_mem:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r:Landroid/view/View;

    .line 3595
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3596
    sget v0, Leuj$i;->conf_camera_switch:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->J:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 3597
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->J:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3599
    sget v0, Leuj$i;->conf_preparing_panel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->s:Landroid/view/View;

    .line 3600
    sget v0, Leuj$i;->conf_caller_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->t:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 3601
    sget v0, Leuj$i;->conf_caller_nickname:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->u:Landroid/widget/TextView;

    .line 3602
    sget v0, Leuj$i;->conf_caller_company:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->v:Landroid/widget/TextView;

    .line 3603
    sget v0, Leuj$i;->conf_caller_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->w:Landroid/widget/TextView;

    .line 3604
    sget v0, Leuj$i;->conf_callee_invite_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->x:Landroid/view/View;

    .line 3605
    sget v0, Leuj$i;->conf_callee_invite_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->y:Landroid/widget/TextView;

    .line 3606
    sget v0, Leuj$i;->conf_callee_invite_mems:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->B:Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;

    .line 3607
    sget v0, Leuj$i;->conf_callee_invite_title_suffix:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->A:Landroid/view/View;

    .line 3608
    sget v0, Leuj$i;->conf_callee_accept_members:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->z:Landroid/widget/TextView;

    .line 3609
    sget v0, Leuj$i;->conf_caller_invite_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->C:Landroid/view/View;

    .line 3610
    sget v0, Leuj$i;->conf_caller_invite_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->D:Landroid/widget/TextView;

    .line 3612
    sget v0, Leuj$i;->conf_member_list_panel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->E:Landroid/view/View;

    .line 3614
    sget v0, Leuj$i;->conf_control_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->G:Landroid/view/View;

    .line 3615
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->G:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3616
    sget v0, Leuj$i;->conf_control_btns:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    .line 3617
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ax:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setLeftOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3618
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->az:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setMiddleClickListener(Landroid/view/View$OnClickListener;)V

    .line 3619
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ay:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setRightClickListener(Landroid/view/View$OnClickListener;)V

    .line 3620
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aA:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setExtraRightOnClick(Landroid/view/View$OnClickListener;)V

    .line 3621
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aa:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setCaller(Z)V

    .line 3622
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setCameraControlEnable(Z)V

    .line 3623
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->H:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setVideoAcceptEnable(Z)V

    .line 3625
    sget v0, Leuj$i;->conf_control_action:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->K:Landroid/view/View;

    .line 3626
    sget v0, Leuj$i;->video_member_list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->L:Landroid/view/View;

    .line 3627
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->L:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3629
    sget v0, Leuj$i;->conf_sub_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->M:Landroid/widget/FrameLayout;

    .line 3630
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->M:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3631
    sget v0, Leuj$i;->conf_sub_surface_view_cover_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->N:Landroid/view/View;

    .line 3632
    sget v0, Leuj$i;->conf_sub_surface_view_cover:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->O:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    .line 3633
    sget v0, Leuj$i;->conf_sub_surface_view_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->P:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    .line 3634
    sget v0, Leuj$i;->conf_sub_windows_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Q:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    .line 3635
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Q:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->an:I

    sget-object v0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$ItemRatioType;->RATIO_1_1:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$ItemRatioType;

    .line 4194
    if-nez v0, :cond_3

    .line 4195
    sget-object v0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$ItemRatioType;->RATIO_1_1:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$ItemRatioType;

    .line 4198
    :cond_3
    iput v2, v1, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->d:I

    .line 4199
    iput v5, v1, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->e:I

    .line 4201
    const/4 v2, 0x4

    iput v2, v1, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->f:I

    .line 4204
    iget v2, v1, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->f:I

    add-int/lit8 v2, v2, 0x1

    .line 4205
    iget-object v3, v1, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->a:Landroid/content/Context;

    iget v4, v1, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->e:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 4206
    iget v4, v1, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->d:I

    mul-int/2addr v2, v3

    sub-int v2, v4, v2

    iget v3, v1, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->f:I

    div-int/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->g:I

    .line 4207
    sget-object v2, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$ItemRatioType;->RATIO_4_3:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$ItemRatioType;

    if-ne v0, v2, :cond_b

    .line 4208
    iget v0, v1, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->g:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->h:I

    .line 4213
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4214
    iget v2, v1, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->h:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4215
    invoke-virtual {v1, v0}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3639
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Q:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aD:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->setOnItemClickListener(Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;)V

    .line 3640
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Q:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aE:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->setOnScrollChangeListener(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$b;)V

    .line 3641
    new-instance v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    .line 3642
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Q:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->R:Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 3644
    new-instance v0, Levp;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->E:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Levp;-><init>(Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->F:Levp;

    .line 3645
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->F:Levp;

    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aa:Z

    .line 5072
    iput-boolean v1, v0, Levp;->b:Z

    .line 5572
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-nez v0, :cond_c

    .line 5584
    :cond_4
    :goto_3
    return-void

    .line 3521
    :cond_5
    :try_start_1
    const-string/jumbo v2, "conf_callee"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3522
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aa:Z

    .line 3523
    const-string/jumbo v1, "conf_video_from_page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    .line 3524
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    if-eqz v0, :cond_6

    .line 3525
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    iget v0, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calltype:I

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    .line 3526
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    iget-wide v0, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->hostId:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 3527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aa:Z

    .line 3531
    :cond_6
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3556
    :catch_0
    move-exception v0

    .line 3557
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 3532
    :cond_7
    :try_start_2
    const-string/jumbo v2, "conf_caller:conf_calling"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3533
    const-string/jumbo v1, "conf_video_from_page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    .line 3534
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    if-eqz v0, :cond_9

    .line 3535
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    iget-wide v0, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->hostId:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 3536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aa:Z

    .line 3538
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    iget v0, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calltype:I

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    .line 3540
    :cond_9
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_JOINING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    goto/16 :goto_0

    .line 3543
    :cond_a
    const-string/jumbo v1, "conf_video_to_user_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    .line 3544
    const-string/jumbo v1, "from"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aa:Z

    .line 3545
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 4210
    :cond_b
    iget v0, v1, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->h:I

    goto/16 :goto_2

    .line 5576
    :cond_c
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    sget v1, Levh;->b:I

    invoke-virtual {v0, v1}, Levm;->a(I)V

    .line 5577
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v0, v1, :cond_10

    .line 6426
    invoke-static {v6}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 6427
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Net is error."

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6428
    sget v0, Leuj$l;->dt_conference_no_network_exp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6429
    const-string/jumbo v1, "200"

    .line 6494
    invoke-static {v1, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6431
    invoke-virtual {p0, v6, v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 6435
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v0, :cond_e

    .line 6436
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->W:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6437
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Ljava/util/List;)V

    .line 6438
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 6439
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_e

    .line 6440
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->V:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(J)V

    .line 6444
    :cond_e
    invoke-static {v6}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->al:Z

    if-eqz v0, :cond_f

    .line 6445
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Net is mobile net"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6446
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 6453
    :cond_f
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Start video"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6454
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->q()V

    goto/16 :goto_3

    .line 5580
    :cond_10
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v0, v1, :cond_15

    .line 5581
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->l()V

    .line 7314
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calleeIds:Ljava/util/List;

    if-nez v0, :cond_13

    .line 7769
    :cond_11
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->as:Ljava/util/TimerTask;

    if-nez v0, :cond_12

    .line 7770
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$15;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$15;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->as:Ljava/util/TimerTask;

    .line 7782
    :cond_12
    invoke-static {}, Leyy;->a()Leyy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->as:Ljava/util/TimerTask;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Leyy;->a(Ljava/util/TimerTask;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->at:Ljava/util/concurrent/ScheduledFuture;

    .line 5584
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$10;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 7317
    :cond_13
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    if-nez v0, :cond_14

    .line 7318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    .line 7323
    :goto_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;)Ljava/util/List;

    move-result-object v1

    .line 7324
    if-eqz v1, :cond_11

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 7327
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    const-class v3, Lcma;

    .line 7328
    invoke-static {v0, v3, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7327
    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_4

    .line 7320
    :cond_14
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_5

    .line 5595
    :cond_15
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_JOINING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v0, v1, :cond_4

    .line 8479
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$7;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcpi$a;)V

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 665
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 666
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->l(Z)V

    .line 9723
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aq:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 9724
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aq:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 9725
    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aq:Ljava/util/TimerTask;

    .line 9727
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ar:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 9728
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ar:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 9729
    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->ar:Ljava/util/concurrent/ScheduledFuture;

    .line 669
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->u()V

    .line 671
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    invoke-virtual {v0}, Levm;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    sget v1, Levh;->c:I

    invoke-virtual {v0, v1}, Levm;->a(I)V

    .line 674
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_IDE:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-eq v0, v1, :cond_3

    .line 675
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_IDE:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->T:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 676
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->p()V

    .line 678
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v0, :cond_4

    .line 679
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->p()V

    .line 680
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->i()V

    .line 10090
    :cond_4
    invoke-static {v2}, Leyz;->b(Liei$a;)V

    .line 683
    invoke-static {}, Lewp;->a()V

    .line 684
    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->j(Z)V

    .line 685
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 689
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-nez v2, :cond_0

    .line 702
    :goto_0
    return v0

    .line 692
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 694
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->g(Z)V

    move v0, v1

    .line 695
    goto :goto_0

    .line 697
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v2, v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->g(Z)V

    move v0, v1

    .line 698
    goto :goto_0

    .line 692
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStart()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 622
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 623
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "onStart"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9072
    const/4 v1, 0x0

    invoke-static {v1}, Leyz;->a(Liei$a;)V

    .line 625
    invoke-static {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->a(Landroid/content/Context;)V

    .line 626
    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->l(Z)V

    .line 627
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->m()V

    .line 628
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->g()V

    .line 631
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->o()Z

    move-result v0

    .line 632
    .local v0, "camGranted":Z
    if-nez v0, :cond_0

    .line 633
    invoke-static {p0}, Leyx;->b(Landroid/content/Context;)Z

    move-result v0

    .line 634
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v1, v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->f(Z)V

    .line 637
    .end local v0    # "camGranted":Z
    :cond_0
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->af:Z

    .line 638
    return-void
.end method

.method protected onStop()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 642
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 643
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "onStop"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-static {}, Levm;->a()Levm;

    move-result-object v1

    invoke-virtual {v1}, Levm;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "show floating view"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->af:Z

    if-nez v1, :cond_1

    .line 647
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c()Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v0

    .line 649
    .local v0, "mainWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v0, :cond_0

    .line 650
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 651
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lewt;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V

    .line 654
    .end local v0    # "mainWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->l(Z)V

    .line 661
    :cond_1
    :goto_0
    return-void

    .line 657
    :cond_2
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "dismiss floating view"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->l(Z)V

    .line 9090
    const/4 v1, 0x0

    invoke-static {v1}, Leyz;->b(Liei$a;)V

    goto :goto_0
.end method

.method public synthetic setPresenter(Lcjd;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 109
    check-cast p1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    .line 33469
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    .line 33470
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v0, :cond_0

    .line 33471
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->S:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->am:I

    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->aw:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->X:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->Y:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(IIILcom/alibaba/android/teleconf/data/VideoConfInviteObject;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method
