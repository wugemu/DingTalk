.class public Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "DingDetailFragment.java"


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/fragment/DingDetailFragment$a;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/RelativeLayout;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/view/View;

.field private P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

.field private Q:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

.field private R:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

.field private S:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

.field private T:Landroid/view/View;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/LinearLayout;

.field private W:Landroid/widget/TextView;

.field private X:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private Y:Landroid/widget/RelativeLayout;

.field private Z:Landroid/widget/TextView;

.field a:Lbaf$b;

.field private aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field private aB:Lcom/alibaba/android/ding/adapter/CommentAdapter;

.field private aC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Layd$a;",
            ">;"
        }
    .end annotation
.end field

.field private aD:Lbkz;

.field private aE:I

.field private aF:Landroid/os/Bundle;

.field private aG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aH:I

.field private aI:I

.field private aJ:I

.field private aK:Z

.field private aL:I

.field private aM:I

.field private aN:Z

.field private aO:I

.field private aP:J

.field private aQ:I

.field private aR:I

.field private aS:I

.field private aT:I

.field private aU:Lbaf$a;

.field private aV:Lazv$a;

.field private aW:Landroid/widget/ListPopupWindow;

.field private aX:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

.field private aY:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

.field private aZ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private aa:Landroid/widget/TextView;

.field private ab:Landroid/view/View;

.field private ac:Landroid/view/View;

.field private ad:Landroid/widget/TextView;

.field private ae:Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

.field private af:Landroid/view/View;

.field private ag:Landroid/widget/TextView;

.field private ah:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

.field private ai:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

.field private aj:Landroid/view/View;

.field private ak:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field private am:Landroid/view/View;

.field private an:Landroid/widget/ImageView;

.field private ao:Landroid/widget/TextView;

.field private ap:Landroid/view/ViewStub;

.field private aq:Landroid/widget/TextView;

.field private ar:Landroid/widget/TextView;

.field private as:Landroid/widget/TextView;

.field private at:Landroid/content/Intent;

.field private au:Ljava/lang/String;

.field private av:Z

.field private aw:Ljava/lang/String;

.field private ax:Ljava/lang/String;

.field private ay:I

.field private az:Ljava/lang/String;

.field b:Lazv$b;

.field private ba:Landroid/widget/AbsListView$OnScrollListener;

.field private bb:Landroid/view/View;

.field private bc:Landroid/view/View$OnClickListener;

.field private c:Landroid/view/View;

.field private d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/LinearLayout;

.field private l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

.field private o:Landroid/view/View;

.field private p:Lcom/alibaba/android/ding/widget/VoicePlayView;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/LinearLayout;

.field private y:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aC:Ljava/util/List;

    .line 300
    invoke-static {}, Lbkz;->b()Lbkz;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aD:Lbkz;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aG:Ljava/util/Map;

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aS:I

    .line 322
    const/16 v0, 0x28

    iput v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aT:I

    .line 3170
    new-instance v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a:Lbaf$b;

    .line 3537
    new-instance v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b:Lazv$b;

    .line 3688
    new-instance v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$47;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$47;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->bc:Landroid/view/View$OnClickListener;

    .line 343
    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/widget/CommentFilterLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ai:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    return-object v0
.end method

.method private A()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->bb:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3031
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->bb:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3033
    :cond_0
    return-void
.end method

.method static synthetic B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aB:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    return-object v0
.end method

.method private B()V
    .locals 1

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aX:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-eqz v0, :cond_0

    .line 3135
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aX:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->dismiss()V

    .line 3137
    :cond_0
    return-void
.end method

.method static synthetic C(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aH:I

    return v0
.end method

.method private C()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 3784
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3792
    :cond_0
    :goto_0
    return v0

    .line 3788
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3792
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic D(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aI:I

    return v0
.end method

.method static synthetic E(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lazv$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aV:Lazv$a;

    return-object v0
.end method

.method static synthetic F(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aJ:I

    return v0
.end method

.method static synthetic G(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    .line 27702
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ap:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 27705
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ap:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 176
    :cond_0
    return-void
.end method

.method static synthetic H(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    .line 28469
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->requestFocus()Z

    .line 28470
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->w()V

    .line 176
    return-void
.end method

.method static synthetic I(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->g()V

    return-void
.end method

.method static synthetic J(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->az:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic K(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic L(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B()V

    return-void
.end method

.method static synthetic M(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->C()Z

    move-result v0

    return v0
.end method

.method static synthetic N(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    .line 29734
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aY:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    if-nez v0, :cond_0

    .line 29735
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aY:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .line 29736
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aY:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    const/4 v1, 0x1

    .line 30362
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a:Z

    .line 29737
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aY:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$50;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$50;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 30414
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    .line 29780
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aY:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .line 176
    return-object v0
.end method

.method static synthetic O(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aY:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    return-object v0
.end method

.method static synthetic P(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aC:Ljava/util/List;

    return-object v0
.end method

.method static synthetic Q(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    .line 30508
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 30512
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/ding/activity/DingDetailActivity;

    if-eqz v0, :cond_0

    .line 30515
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/activity/DingDetailActivity;

    .line 30516
    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingDetailActivity;->showLoadingDialog()V

    .line 30517
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    new-instance v4, Lcom/alibaba/android/ding/fragment/DingDetailFragment$30;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$30;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/ding/activity/DingDetailActivity;)V

    const-class v0, Lcma;

    .line 30540
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 30518
    invoke-static {v4, v0, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 30517
    invoke-virtual {v1, v2, v3, v0}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;Lcma;)V

    .line 176
    :cond_0
    return-void
.end method

.method static synthetic R(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    const/4 v3, 0x1

    .line 176
    .line 30714
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30715
    sget v1, Laxp$i;->dt_ding_notification_recall_alert_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 30716
    sget v1, Laxp$i;->dt_ding_notification_recall_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/fragment/DingDetailFragment$48;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$48;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 30723
    sget v1, Laxp$i;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/fragment/DingDetailFragment$49;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$49;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 30730
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 176
    return-void
.end method

.method static synthetic S(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aW:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic T(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d()V

    return-void
.end method

.method static synthetic U(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->T:Landroid/view/View;

    return-object v0
.end method

.method static synthetic V(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->U:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic W(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->u()V

    return-void
.end method

.method static synthetic X(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aN:Z

    return v0
.end method

.method static synthetic Y(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->z()V

    return-void
.end method

.method static synthetic Z(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->i:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # J

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aP:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lazv$a;)Lazv$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Lazv$a;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aV:Lazv$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lbaf$a;)Lbaf$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Lbaf$a;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object p1
.end method

.method public static a(Landroid/content/Intent;)Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 337
    new-instance v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;-><init>()V

    .line 4346
    .local v0, "dingDetailFragment":Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    iput-object p0, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->at:Landroid/content/Intent;

    .line 339
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aY:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    return-object v0
.end method

.method private a(Ljava/lang/String;IZ)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "containMe"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2611
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2612
    const-string/jumbo p1, ""

    .line 2623
    .end local p1    # "alias":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 2614
    .restart local p1    # "alias":Ljava/lang/String;
    :cond_1
    if-le p2, v3, :cond_4

    .line 2615
    if-eqz p3, :cond_3

    .line 2616
    if-ne p2, v1, :cond_2

    sget v0, Laxp$i;->dt_ding_me_and_other_at:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 2617
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget v0, Laxp$i;->dt_ding_me_and_other_and_count_at_at:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 2618
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2620
    :cond_3
    sget v0, Laxp$i;->dt_ding_user_and_count_at_at:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2623
    :cond_4
    if-eqz p3, :cond_0

    sget v0, Laxp$i;->ding_txt_sender_me:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private a(I)V
    .locals 2
    .param p1, "bizType"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1665
    invoke-static {p1}, Lbkh;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->e:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_task_detail_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1675
    :goto_0
    return-void

    .line 1668
    :cond_0
    invoke-static {p1}, Lbkh;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1670
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->e:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_meeting_detail_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1673
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->e:Landroid/widget/TextView;

    sget v1, Laxp$i;->ding_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private a(J)V
    .locals 11
    .param p1, "blockTime"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1861
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_8

    .line 1862
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1863
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->M:Landroid/widget/TextView;

    sget v7, Laxp$i;->dt_ding_item_deadline_at:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 1864
    invoke-static {p1, p2, v5}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 1863
    invoke-virtual {p0, v7, v8}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1865
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1866
    .local v3, "nowCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1867
    .local v0, "deadlineCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1868
    invoke-static {v3, v0}, Lbkb;->a(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    .line 1869
    .local v1, "diffDay":I
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v6}, Lbkh;->C(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v6}, Lbkh;->z(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1870
    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->N:Landroid/widget/TextView;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1888
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->C()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1889
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1890
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->O:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1898
    .end local v0    # "deadlineCalendar":Ljava/util/Calendar;
    .end local v1    # "diffDay":I
    .end local v3    # "nowCalendar":Ljava/util/Calendar;
    :goto_1
    return-void

    .line 1871
    .restart local v0    # "deadlineCalendar":Ljava/util/Calendar;
    .restart local v1    # "diffDay":I
    .restart local v3    # "nowCalendar":Ljava/util/Calendar;
    :cond_1
    if-nez v1, :cond_5

    .line 1872
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-lez v6, :cond_2

    move v2, v4

    .line 1873
    .local v2, "notOverdue":Z
    :goto_2
    iget-object v7, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->N:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v8, Laxp$c;->ui_common_level3_text_color:I

    invoke-static {v6, v8}, Ldp;->c(Landroid/content/Context;I)I

    move-result v6

    :goto_3
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1875
    iget-object v7, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->N:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    sget v6, Laxp$i;->dt_ding_deadline_remain_inner_day:I

    :goto_4
    invoke-virtual {p0, v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v2    # "notOverdue":Z
    :cond_2
    move v2, v5

    .line 1872
    goto :goto_2

    .line 1874
    .restart local v2    # "notOverdue":Z
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v8, Laxp$c;->ui_common_alert_text_color:I

    invoke-static {v6, v8}, Ldp;->c(Landroid/content/Context;I)I

    move-result v6

    goto :goto_3

    .line 1875
    :cond_4
    sget v6, Laxp$i;->dt_ding_deadline_expire_inner_day:I

    goto :goto_4

    .line 1878
    .end local v2    # "notOverdue":Z
    :cond_5
    if-lez v1, :cond_6

    .line 1879
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->N:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Laxp$c;->ui_common_level3_text_color:I

    invoke-static {v7, v8}, Ldp;->c(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1880
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->N:Landroid/widget/TextView;

    sget v7, Laxp$i;->dt_ding_deadline_remain_at:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 1881
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 1880
    invoke-virtual {p0, v7, v8}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1883
    :cond_6
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->N:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Laxp$c;->ui_common_alert_text_color:I

    invoke-static {v7, v8}, Ldp;->c(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1884
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->N:Landroid/widget/TextView;

    sget v7, Laxp$i;->dt_ding_deadline_expire_at:I

    new-array v8, v4, [Ljava/lang/Object;

    neg-int v9, v1

    .line 1885
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 1884
    invoke-virtual {p0, v7, v8}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1892
    :cond_7
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1893
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->O:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1896
    .end local v0    # "deadlineCalendar":Ljava/util/Calendar;
    .end local v1    # "diffDay":I
    .end local v3    # "nowCalendar":Ljava/util/Calendar;
    :cond_8
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->F:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public static a(Landroid/app/Activity;Lcom/amap/api/services/core/PoiItem;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "poiItem"    # Lcom/amap/api/services/core/PoiItem;
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 3797
    .line 23116
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    if-nez v0, :cond_1

    .line 23117
    :cond_0
    :goto_0
    return-void

    .line 23120
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    .line 23121
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 23122
    const-string/jumbo v2, "location_latitude"

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 23123
    const-string/jumbo v2, "location_longitude"

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 23124
    const-string/jumbo v0, "location_text"

    invoke-virtual {p1}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23125
    const-string/jumbo v0, "location_hide_right_menu"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23127
    new-instance v0, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;-><init>()V

    .line 23128
    sget v2, Laxp$e;->msg_select_location_mark:I

    iput v2, v0, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    .line 23129
    iput v3, v0, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    .line 23130
    iput v3, v0, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    .line 23131
    const-string/jumbo v2, "location_select_marker"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 23132
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToLocationBrowserPage(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/ding/base/objects/ObjectDingContent;)V
    .locals 3
    .param p1, "content"    # Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 2267
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    .line 2268
    instance-of v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-nez v1, :cond_0

    .line 2269
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    .line 2270
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->o:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2275
    .end local p1    # "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    :goto_0
    return-void

    .line 2273
    .restart local p1    # "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    :cond_0
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .end local p1    # "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 2274
    .local v0, "text":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Landroid/view/View;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 176
    .line 29300
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_1

    .line 29304
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aW:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 29305
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aW:Landroid/widget/ListPopupWindow;

    .line 29306
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d()V

    .line 29307
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aW:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxp$d;->ding_more_menu_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 29308
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aW:Landroid/widget/ListPopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 29309
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aW:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 29310
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aW:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 29401
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aW:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 29403
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aW:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 176
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/ding/base/objects/CommentObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/CommentObject;

    .prologue
    .line 176
    .line 28923
    if-eqz p1, :cond_0

    .line 28926
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28927
    sget v1, Laxp$i;->dt_ding_delete_comment:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/ding/fragment/DingDetailFragment$42;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$42;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 28928
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->ding_menu_delete:I

    new-instance v3, Lcom/alibaba/android/ding/fragment/DingDetailFragment$41;

    invoke-direct {v3, p0, p1, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$41;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/ding/base/objects/CommentObject;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 28934
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 28943
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 28944
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .prologue
    .line 176
    .line 42238
    const-string/jumbo v0, "ding_comment_send_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 41765
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aV:Lazv$a;

    if-eqz v0, :cond_0

    .line 41766
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aV:Lazv$a;

    iget-wide v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aP:J

    .line 41767
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v4

    move-object v1, p1

    .line 41766
    invoke-interface/range {v0 .. v5}, Lazv$a;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;JJ)V

    .line 41768
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->v()V

    .line 176
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/ding/base/objects/ObjectDingContent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingContent;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/lang/CharSequence;Ljava/util/List;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .prologue
    .line 176
    .line 40883
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40884
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 40885
    sget v1, Laxp$i;->ding_ignore_vip:I

    new-instance v2, Lcom/alibaba/android/ding/fragment/DingDetailFragment$38;

    invoke-direct {v2, p0, p2, p3, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$38;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/util/List;ZLcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 40894
    sget v1, Laxp$i;->cancel:I

    new-instance v2, Lcom/alibaba/android/ding/fragment/DingDetailFragment$39;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$39;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 40900
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 176
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 176
    .line 24238
    const-string/jumbo v0, "ding_comment_send_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 23777
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23778
    :cond_0
    sget v0, Laxp$i;->ding_no_content:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 23779
    :cond_1
    :goto_0
    return-void

    .line 23782
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aV:Lazv$a;

    if-eqz v0, :cond_1

    .line 23783
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aV:Lazv$a;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aG:Ljava/util/Map;

    iget-wide v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aP:J

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lazv$a;->a(JLjava/util/Map;JLjava/lang/String;)V

    .line 23785
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->v()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 176
    .line 40072
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    invoke-interface {v0}, Lbaf$a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40073
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ae:Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a(Ljava/util/Collection;)V

    .line 40074
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ae:Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->setVisibility(I)V

    :goto_0
    return-void

    .line 40077
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ae:Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 176
    .line 31544
    iput-boolean v7, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aN:Z

    .line 31545
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aa()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31546
    const-string/jumbo v0, "2"

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 31547
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aa()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "conversationType"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 31546
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aN:Z

    .line 31549
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->l(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31550
    invoke-direct {p0, v4}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Z)V

    .line 31551
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 31552
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aj:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    .line 31554
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->am:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 31555
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aj:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 31556
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aV:Lazv$a;

    if-eqz v0, :cond_2

    .line 31557
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aV:Lazv$a;

    invoke-interface {v0}, Lazv$a;->c()V

    .line 31591
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->j(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31592
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 31561
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->f()V

    .line 31562
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->g()V

    .line 32474
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v0, :cond_d

    .line 32475
    const-string/jumbo v0, "[DingDetailFragment]refresh failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32476
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 32477
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 31565
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 32681
    iget v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 31565
    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(I)V

    .line 33647
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_4

    .line 33650
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 33652
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->s()V

    .line 34678
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    .line 34679
    if-nez v0, :cond_11

    .line 35262
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    .line 35263
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    .line 31568
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->h()V

    .line 35801
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Z()Ljava/util/List;

    move-result-object v0

    .line 35802
    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Ljava/util/List;)V

    .line 35842
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Z()Ljava/util/List;

    move-result-object v0

    .line 35843
    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Ljava/util/Collection;)V

    .line 35958
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->C:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 35959
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35960
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_6

    .line 35963
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const v1, 0x12ec0bc

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 35964
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j()V

    .line 36004
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v2

    invoke-static {v2, v3}, Lbkb;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31573
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c()V

    .line 36856
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v0

    .line 36857
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(J)V

    .line 31575
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->o()V

    .line 31576
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p()V

    .line 37216
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 37217
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->R:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v0, v7}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setVisibility(I)V

    .line 37218
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    invoke-interface {v0}, Lbaf$a;->o()V

    .line 31578
    :goto_6
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->q()V

    .line 31579
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->i()V

    .line 38053
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 38055
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ab:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 38056
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ae:Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 38092
    if-eqz v1, :cond_9

    .line 38096
    iget-boolean v2, v0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->c:Z

    if-nez v2, :cond_8

    .line 38097
    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a()V

    .line 38100
    :cond_8
    iput-object v1, v0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 38101
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a(Ljava/util/Collection;)V

    .line 38102
    invoke-virtual {v0, p2}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a(Ljava/lang/CharSequence;)V

    .line 38057
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    invoke-interface {v0}, Lbaf$a;->p()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 38058
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ae:Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

    invoke-virtual {v0, v7}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->setVisibility(I)V

    .line 38064
    :goto_7
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->o()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(I)V

    .line 38066
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m()V

    .line 31581
    :cond_a
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n()V

    .line 38243
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_b

    .line 38247
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->r()V

    .line 38249
    new-instance v0, Lcom/alibaba/android/ding/adapter/CommentAdapter;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ak:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aE:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/ding/adapter/CommentAdapter;-><init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/widget/ListView;I)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aB:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    .line 38250
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aB:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aD:Lbkz;

    .line 38355
    iput-object v1, v0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->g:Lbkz;

    .line 38251
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ak:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aB:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38253
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aV:Lazv$a;

    if-eqz v0, :cond_b

    .line 38254
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aV:Lazv$a;

    invoke-interface {v0}, Lazv$a;->a()V

    .line 38255
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aV:Lazv$a;

    invoke-interface {v0}, Lazv$a;->b()V

    .line 38256
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aV:Lazv$a;

    invoke-interface {v0, v8, v9}, Lazv$a;->c(J)V

    .line 38257
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aV:Lazv$a;

    invoke-interface {v0, v8, v9}, Lazv$a;->d(J)V

    .line 31585
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->l()V

    goto/16 :goto_0

    .line 31594
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 32481
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->F(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 32482
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->k:Landroid/widget/LinearLayout;

    sget v1, Laxp$e;->ding_bg_mosaic_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 32483
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v1, Laxp$e;->ding_bg_mosaic_normal:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->a(I)V

    goto/16 :goto_2

    .line 32485
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->k:Landroid/widget/LinearLayout;

    sget v1, Laxp$c;->ui_common_cell_bg_color:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 32486
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v1, Laxp$e;->common_white_cell_selector:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->a(I)V

    goto/16 :goto_2

    .line 33653
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 33655
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 33689
    iget v1, v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->F:I

    .line 33655
    invoke-static {v0, v1}, Lbkm;->a(Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;I)V

    goto/16 :goto_3

    .line 33658
    :cond_10
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxp$i;->icon_ding_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 33659
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 34682
    :cond_11
    instance-of v1, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v1, :cond_12

    .line 34683
    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingContent;)V

    goto/16 :goto_4

    .line 34684
    :cond_12
    instance-of v1, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    if-eqz v1, :cond_5

    .line 35312
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    .line 35313
    instance-of v1, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    if-nez v1, :cond_13

    .line 35314
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    goto/16 :goto_4

    .line 35317
    :cond_13
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v1, v7}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    .line 35318
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p:Lcom/alibaba/android/ding/widget/VoicePlayView;

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setFrom(I)V

    .line 35319
    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    .line 35320
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p:Lcom/alibaba/android/ding/widget/VoicePlayView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "dingdetail"

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->au:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setMessageId(Ljava/lang/String;)V

    .line 35321
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35322
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 35323
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    goto/16 :goto_4

    .line 35326
    :cond_14
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getDuration()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAudioVolumns()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->buildAudioMessage(Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 35327
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAuthMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->setAuthUrl(Ljava/lang/String;)V

    .line 35328
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAuthCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->setAuthCode(Ljava/lang/String;)V

    .line 35329
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p:Lcom/alibaba/android/ding/widget/VoicePlayView;

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->au:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35330
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setMessageAudio(Lcom/alibaba/wukong/im/MessageContent$AudioContent;)V

    .line 35331
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p:Lcom/alibaba/android/ding/widget/VoicePlayView;

    sget-object v1, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->GRAY:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setScheme(Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;)V

    goto/16 :goto_4

    .line 35966
    :cond_15
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    if-eqz v0, :cond_6

    .line 35967
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    invoke-interface {v0}, Lbaf$a;->d()V

    goto/16 :goto_5

    .line 37220
    :cond_16
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->R:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 38061
    :cond_17
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ae:Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2280
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    .line 2281
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getTextSize()F

    move-result v5

    invoke-static {v4, v5}, Lcms;->a(Landroid/content/Context;F)F

    move-result v4

    .line 22050
    invoke-virtual {v2, v3, p1, v4}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v1

    .line 2282
    .local v1, "spannableString":Landroid/text/SpannableString;
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setTextWithTransact(Ljava/lang/CharSequence;)V

    .line 2284
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 22075
    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcql;->a(Landroid/widget/TextView;IZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2292
    .end local v1    # "spannableString":Landroid/text/SpannableString;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    new-instance v3, Lcom/alibaba/android/ding/fragment/DingDetailFragment$35;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$35;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2309
    return-void

    .line 2285
    .restart local v1    # "spannableString":Landroid/text/SpannableString;
    :catch_0
    move-exception v0

    .line 2286
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "[DingDetailFragment] content parse linkify failed"

    invoke-static {v2, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2290
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "spannableString":Landroid/text/SpannableString;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1847
    .local p1, "attaches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->A:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1849
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->z:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1853
    :goto_0
    return-void

    .line 1851
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->z:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "attaches":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    const/4 v0, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 1806
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_6

    .line 1807
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 1808
    .local v1, "obj":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    if-eqz v1, :cond_5

    .line 1809
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Layt;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->y:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    .line 1810
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->y:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    if-eqz v3, :cond_4

    .line 1811
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->y:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setSendId(J)V

    .line 1812
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->y:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setDingId(Ljava/lang/String;)V

    .line 1813
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->y:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    sget-object v4, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->NoBorder:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    sget-object v5, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;->ShowNameAndSize:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    sget-object v6, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;->Normal:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;)V

    .line 1814
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1815
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1816
    iget-object v3, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "1"

    iget-object v4, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v5, "isRE"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1817
    .local v0, "isHongbaoLink":Z
    :goto_0
    if-nez v0, :cond_0

    iget v3, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    sget-object v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->HONGBAO:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1818
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->y:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    sget v4, Laxp$e;->ding_attachment_red_bg:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setAttachBackground(I)V

    .line 1822
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->y:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1823
    iget v3, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    sget-object v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1824
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->y:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->b()V

    .line 1826
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1839
    .end local v0    # "isHongbaoLink":Z
    .end local v1    # "obj":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    :goto_2
    return-void

    .restart local v1    # "obj":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    :cond_2
    move v0, v2

    .line 1816
    goto :goto_0

    .line 1820
    .restart local v0    # "isHongbaoLink":Z
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->y:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    sget v4, Laxp$e;->ding_attachment_bg:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setAttachBackground(I)V

    goto :goto_1

    .line 1828
    .end local v0    # "isHongbaoLink":Z
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1829
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 1832
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1833
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 1836
    .end local v1    # "obj":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1837
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aK:Z

    return p1
.end method

.method static synthetic aa(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic ab(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    .line 39100
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_1

    .line 39105
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->af()Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 39106
    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 39107
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->l()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 39108
    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39110
    const-string/jumbo v0, "pref_key_ding_check_in_conference_more"

    invoke-static {v0, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39111
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39114
    :cond_0
    const-string/jumbo v0, "pref_key_ding_check_in_conference_more_first_tips"

    invoke-static {v0, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39116
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 39689
    iget v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->F:I

    .line 39116
    if-nez v0, :cond_2

    .line 39117
    sget v0, Laxp$i;->dt_conference_more_popup_tips:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(I)V

    .line 39121
    :goto_0
    const-string/jumbo v0, "pref_key_ding_check_in_conference_more_first_tips"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 176
    :cond_1
    return-void

    .line 39119
    :cond_2
    sget v0, Laxp$i;->dt_conference_more_popup_phone_and_video_tips:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(I)V

    goto :goto_0
.end method

.method static synthetic ac(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->y()V

    return-void
.end method

.method static synthetic ad(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->h()V

    return-void
.end method

.method static synthetic ae(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->r()V

    return-void
.end method

.method static synthetic af(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->k()V

    return-void
.end method

.method static synthetic ag(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->o()V

    return-void
.end method

.method static synthetic ah(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->q()V

    return-void
.end method

.method static synthetic ai(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->l()V

    return-void
.end method

.method static synthetic aj(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->s()V

    return-void
.end method

.method static synthetic ak(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m()V

    return-void
.end method

.method static synthetic al(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->f()V

    return-void
.end method

.method static synthetic am(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p()V

    return-void
.end method

.method static synthetic an(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j()V

    return-void
.end method

.method static synthetic ao(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->i()V

    return-void
.end method

.method static synthetic ap(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->t()V

    return-void
.end method

.method static synthetic aq(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->R:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    return-object v0
.end method

.method static synthetic ar(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n()V

    return-void
.end method

.method static synthetic as(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ba:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 176
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aS:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lbaf$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    return-object v0
.end method

.method private static b(Ljava/util/List;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;"
        }
    .end annotation

    .prologue
    .local p0, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v1, 0x0

    .line 3140
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3141
    :cond_0
    const/4 v0, 0x0

    .line 3144
    :goto_0
    return-object v0

    .line 3143
    :cond_1
    new-instance v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$a;

    invoke-direct {v0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$a;-><init>(B)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3144
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    goto :goto_0
.end method

.method private b(I)V
    .locals 5
    .param p1, "subTaskCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 2093
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    invoke-interface {v0}, Lbaf$a;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2095
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ac:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2096
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2097
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ad:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_task_meeting_minutes_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2105
    :goto_0
    return-void

    .line 2099
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ad:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_subtask_count_tip_AT:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2103
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ac:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # J

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 176
    .line 40083
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    invoke-interface {v0}, Lbaf$a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40084
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ae:Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a(Ljava/lang/CharSequence;)V

    .line 40085
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ae:Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->setVisibility(I)V

    :goto_0
    return-void

    .line 40088
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ae:Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 176
    .line 42491
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42589
    :cond_0
    :goto_0
    return-void

    .line 42494
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 42495
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aj()I

    move-result v0

    if-gtz v0, :cond_2

    .line 42496
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setVisibility(I)V

    goto :goto_0

    .line 42499
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    new-array v3, v6, [Ljava/lang/String;

    sget v4, Laxp$i;->dt_task_owner_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string/jumbo v4, ":"

    aput-object v4, v3, v1

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->a(Ljava/lang/CharSequence;)V

    .line 42500
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ak()I

    move-result v0

    .line 42501
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->s()I

    move-result v3

    .line 42502
    if-nez v0, :cond_3

    .line 42503
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v3, Laxp$i;->ding_remind_all_completed:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->d(I)V

    .line 42515
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aj()I

    move-result v3

    .line 42516
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_6

    if-ne v3, v1, :cond_6

    .line 42517
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    .line 42518
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->q()Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    move-result-object v0

    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PRINCIPAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    if-ne v0, v5, :cond_5

    move v0, v1

    :goto_2
    invoke-direct {p0, v3, v1, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    .line 42596
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    .line 43106
    iget-object v0, v0, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 42597
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ak()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "pref_key_task_urge_tips"

    .line 42598
    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42599
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 42600
    sget v2, Laxp$e;->ding_task_bage_bg:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 42601
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_level1_white_text_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42602
    const/high16 v2, 0x41180000    # 9.5f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 42603
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 42604
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 42605
    sget v1, Laxp$i;->ding_task_urge_badge_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 42606
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->a(Landroid/view/View;)V

    goto/16 :goto_0

    .line 42504
    :cond_3
    if-nez v3, :cond_4

    .line 42505
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v3, Laxp$i;->ding_complete_none:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->d(I)V

    goto/16 :goto_1

    .line 42507
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v4, Laxp$i;->dt_ding_task_complete_at_at:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 42508
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const-string/jumbo v3, "/"

    aput-object v3, v5, v1

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 42510
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aj()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    .line 42507
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->c(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 42518
    goto/16 :goto_2

    .line 42519
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_9

    if-le v3, v1, :cond_9

    .line 42521
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_8

    .line 42522
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 42526
    :goto_4
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->q()Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PRINCIPAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    if-ne v5, v6, :cond_7

    move v2, v1

    :cond_7
    invoke-direct {p0, v0, v3, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 42524
    :cond_8
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 42528
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 42531
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 42532
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->H()I

    move-result v0

    if-gtz v0, :cond_b

    .line 42533
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 42536
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    new-array v3, v6, [Ljava/lang/String;

    sget v4, Laxp$i;->dt_create_event_item_person:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string/jumbo v4, ":"

    aput-object v4, v3, v1

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->a(Ljava/lang/CharSequence;)V

    .line 42537
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->K()I

    move-result v0

    .line 42538
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v4, Laxp$i;->dt_ding_meeting_positive_at_at:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 42539
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "/"

    aput-object v0, v5, v1

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 42541
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->H()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 42538
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->c(Ljava/lang/CharSequence;)V

    .line 42545
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->H()I

    move-result v3

    .line 42546
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_c

    if-ne v3, v1, :cond_c

    .line 42547
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 42548
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 42549
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_e

    if-le v3, v1, :cond_e

    .line 42551
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_d

    .line 42552
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 42556
    :goto_5
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    invoke-direct {p0, v0, v3, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 42554
    :cond_d
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 42558
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 42561
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    new-array v3, v6, [Ljava/lang/String;

    sget v4, Laxp$i;->dt_ding_receiver_detail:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string/jumbo v4, ":"

    aput-object v4, v3, v1

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->a(Ljava/lang/CharSequence;)V

    .line 42562
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v0

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Sent:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    if-ne v0, v3, :cond_12

    .line 42563
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ad()I

    move-result v0

    .line 42564
    const/16 v3, 0x63

    if-le v0, v3, :cond_10

    .line 42565
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v3, Laxp$i;->dt_ding_list_at_unread:I

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "99+"

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->c(Ljava/lang/CharSequence;)V

    .line 42577
    :goto_6
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->H()I

    move-result v3

    .line 42578
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_13

    if-ne v3, v1, :cond_13

    .line 42579
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 42580
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 42566
    :cond_10
    if-gtz v0, :cond_11

    .line 42567
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v3, Laxp$i;->ding_remind_all_readed:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->c(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 42569
    :cond_11
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v4, Laxp$i;->dt_ding_list_at_unread:I

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->c(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 42572
    :cond_12
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->c(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 42581
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_15

    if-le v3, v1, :cond_15

    .line 42583
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_14

    .line 42584
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 42588
    :goto_7
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    invoke-direct {p0, v0, v3, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 42586
    :cond_14
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 42590
    :cond_15
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .param p1, "isCleared"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3700
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->am:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3701
    if-eqz p1, :cond_0

    .line 3702
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->an:Landroid/widget/ImageView;

    sget v1, Laxp$e;->ding_icon_ding_can_not_found:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3703
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ao:Landroid/widget/TextView;

    sget v1, Laxp$i;->ding_detail_cannot_find:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3708
    :goto_0
    return-void

    .line 3705
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->an:Landroid/widget/ImageView;

    sget v1, Laxp$e;->ding_icon_ding_no_auth:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3706
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ao:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_card_no_permission:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aL:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    return-object v0
.end method

.method private c(I)V
    .locals 4
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2800
    iget v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aQ:I

    if-nez v1, :cond_0

    .line 2801
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxp$d;->keyboard_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aQ:I

    .line 2803
    :cond_0
    iget v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aQ:I

    if-ge p1, v1, :cond_1

    .line 2804
    iget p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aQ:I

    .line 2806
    :cond_1
    iget v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aR:I

    if-eq v1, p1, :cond_2

    .line 2807
    iput p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aR:I

    .line 2808
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aR:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2810
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setLayoutParamsOfFooterView(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 2811
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "pref_keyboard_height"

    iget v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aR:I

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2812
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aR:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2814
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 176
    .line 43731
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 43732
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const v1, 0x12ec0bd

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(ILjava/lang/Object;)V

    .line 176
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/util/List;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 176
    .line 44628
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44629
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Q:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setVisibility(I)V

    .line 44687
    :cond_1
    :goto_0
    return-void

    .line 44633
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Q:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v1, v7}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setVisibility(I)V

    .line 44638
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 44639
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 44640
    if-eqz v0, :cond_1

    .line 44643
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 44644
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Q:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v1, Laxp$i;->ding_txt_sender_me:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->c(I)V

    goto :goto_0

    .line 44646
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 44647
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 44648
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Q:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 44651
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v8, :cond_8

    .line 44652
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->q()Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PARTICIPANT:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    if-ne v1, v2, :cond_6

    .line 44653
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 44654
    if-eqz v0, :cond_5

    .line 44655
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 44656
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 44659
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    .line 44660
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44661
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Q:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v2, Laxp$i;->dt_task_owner_title_me_and_someone:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 44664
    :cond_6
    invoke-static {p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Ljava/util/List;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    .line 44666
    if-eqz v1, :cond_7

    .line 44667
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 44669
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 44670
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Q:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v2, Laxp$i;->dt_task_participant_people_tip:I

    new-array v3, v8, [Ljava/lang/Object;

    .line 44671
    invoke-static {v0, v4, v6}, Lbka;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 44867
    iget v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Q:I

    .line 44671
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 44670
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 44675
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->q()Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PARTICIPANT:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    if-ne v1, v2, :cond_a

    .line 44676
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 44677
    if-eqz v0, :cond_9

    .line 44678
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    .line 44679
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 44682
    :cond_9
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    .line 44683
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44684
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Q:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v2, Laxp$i;->dt_task_owner_title_me_and_someone_show_total:I

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x6

    .line 44685
    invoke-static {v1, v4, v6}, Lbka;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 45867
    iget v1, v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Q:I

    .line 44685
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    .line 44684
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 44688
    :cond_a
    invoke-static {p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Ljava/util/List;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    .line 44690
    if-eqz v1, :cond_b

    .line 44691
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 44693
    :cond_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 44694
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Q:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v2, Laxp$i;->dt_task_participant_people_tip:I

    new-array v3, v8, [Ljava/lang/Object;

    .line 44695
    invoke-static {v0, v4, v6}, Lbka;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 46867
    iget v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Q:I

    .line 44695
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 44694
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aM:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object v0
.end method

.method private d()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1407
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aW:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_f

    .line 1408
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1409
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aC:Ljava/util/List;

    .line 10415
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10416
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->l(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 10417
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->af()Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 10419
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->v(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10421
    invoke-static {}, Lbju;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10422
    new-instance v0, Layd$a;

    const/16 v5, 0xd

    sget v6, Laxp$i;->dt_ding_menu_conference_add_attendee:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10425
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 10426
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->p(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10427
    new-instance v0, Layd$a;

    const/4 v5, 0x6

    sget v6, Laxp$i;->dt_ding_show_check_in_qr_code:I

    .line 10428
    invoke-virtual {p0, v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    .line 10427
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10430
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 11066
    if-eqz v0, :cond_10

    .line 11070
    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 11824
    iget-object v5, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v5}, Lckm;->a()Ljava/lang/Object;

    move-result-object v5

    .line 11074
    instance-of v5, v5, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-eqz v5, :cond_10

    .line 12824
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 11078
    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    invoke-static {v0}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;)Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    move-result-object v0

    .line 11079
    if-eqz v0, :cond_10

    .line 11083
    iget-object v5, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    if-eqz v5, :cond_10

    .line 11087
    iget-object v5, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    const-string/jumbo v6, "roomBookingId"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    const-string/jumbo v5, "roomBookingId"

    .line 11088
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v2

    .line 10430
    :goto_0
    if-nez v0, :cond_2

    .line 10431
    new-instance v0, Layd$a;

    const/4 v5, 0x4

    sget v6, Laxp$i;->dt_conference_modify:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10433
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10434
    new-instance v0, Layd$a;

    const/4 v5, 0x5

    sget v6, Laxp$i;->dt_conference_cancel:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10448
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->i(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 10449
    invoke-static {v0}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10450
    invoke-static {}, Lbju;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10452
    new-instance v0, Layd$a;

    const/16 v5, 0xe

    sget v6, Laxp$i;->dt_ding_menu_task_transfer:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10455
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 10456
    new-instance v0, Layd$a;

    const/16 v5, 0xa

    sget v6, Laxp$i;->dt_ding_motify_task:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10459
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10460
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v0

    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Sent:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    if-ne v0, v5, :cond_6

    .line 10461
    new-instance v0, Layd$a;

    const/16 v5, 0xc

    sget v6, Laxp$i;->dt_ding_notification_recall_title:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10463
    :cond_6
    new-instance v0, Layd$a;

    const/16 v5, 0xb

    sget v6, Laxp$i;->dt_ding_common_modify:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10466
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 10467
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->l()I

    move-result v0

    if-eq v0, v8, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 10468
    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 10469
    invoke-static {v0}, Lbkh;->p(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10470
    new-instance v0, Layd$a;

    const/16 v5, 0xf

    sget v6, Laxp$i;->dt_ding_meeting_export:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 13793
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aF:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aF:Landroid/os/Bundle;

    const-string/jumbo v5, "favorite_enter_hide"

    .line 13794
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "true"

    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aF:Landroid/os/Bundle;

    const-string/jumbo v6, "favorite_enter_hide"

    .line 13796
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13795
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_9
    move v0, v2

    .line 10473
    :goto_2
    if-eqz v0, :cond_b

    .line 10474
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 10475
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Sent:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->ToSend:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    if-ne v0, v1, :cond_b

    .line 10477
    :cond_a
    new-instance v0, Layd$a;

    sget v1, Laxp$i;->ding_menu_favorite:I

    .line 10478
    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    .line 10477
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10482
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 10483
    new-instance v0, Layd$a;

    sget v1, Laxp$i;->ding_report_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10486
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Sent:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    if-ne v0, v1, :cond_14

    .line 10487
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 10488
    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 10489
    invoke-static {v0}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 10490
    invoke-static {v0}, Lbkh;->v(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10491
    :cond_d
    new-instance v0, Layd$a;

    sget v1, Laxp$i;->ding_menu_delete:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1409
    :cond_e
    :goto_3
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1410
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aW:Landroid/widget/ListPopupWindow;

    new-instance v1, Layd;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aC:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Layd;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1412
    :cond_f
    return-void

    :cond_10
    move v0, v1

    .line 11088
    goto/16 :goto_0

    .line 10438
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->t(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 10440
    new-instance v0, Layd$a;

    const/16 v5, 0x9

    sget v6, Laxp$i;->dt_ding_menu_conference_reject:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 10441
    :cond_12
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->u(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10443
    new-instance v0, Layd$a;

    const/16 v5, 0x8

    sget v6, Laxp$i;->dt_ding_menu_conference_accept:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_13
    move v0, v1

    .line 13795
    goto/16 :goto_2

    .line 10494
    :cond_14
    new-instance v0, Layd$a;

    sget v1, Laxp$i;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 10497
    :cond_15
    new-instance v0, Layd$a;

    const/4 v1, 0x7

    sget v5, Laxp$i;->ding_menu_revert:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10498
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10499
    new-instance v0, Layd$a;

    sget v1, Laxp$i;->ding_report_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method private d(I)V
    .locals 4
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 3127
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aX:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-nez v0, :cond_0

    .line 3128
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;->Up:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;

    invoke-direct {v0, v1, v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;I)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aX:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 3130
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aX:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->f:Landroid/view/View;

    .line 23074
    invoke-virtual {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->a(Landroid/view/View;II)V

    .line 3131
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aO:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aH:I

    return p1
.end method

.method static synthetic f(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    return-object v0
.end method

.method private f()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1599
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->D(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1600
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Laxp$c;->ui_common_orange_icon_bg_color:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1599
    :goto_0
    invoke-virtual {v4, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1602
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->af()Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v2

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    if-ne v2, v4, :cond_3

    const/4 v0, 0x1

    .line 1603
    .local v0, "isDeleted":Z
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->j(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    .line 1604
    .local v1, "isTaskNotReceiver":Z
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/16 v3, 0x8

    :cond_1
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1605
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->D(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Laxp$i;->dt_accessibility_ding_focus_cancel:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1606
    return-void

    .line 1601
    .end local v0    # "isDeleted":Z
    .end local v1    # "isTaskNotReceiver":Z
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Laxp$c;->ui_common_level2_icon_bg_color:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0

    :cond_3
    move v0, v3

    .line 1602
    goto :goto_1

    .line 1605
    .restart local v0    # "isDeleted":Z
    .restart local v1    # "isTaskNotReceiver":Z
    :cond_4
    sget v2, Laxp$i;->ding_filter_focus:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method static synthetic g(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aI:I

    return p1
.end method

.method static synthetic g(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    return-object v0
.end method

.method private g()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1609
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-nez v1, :cond_1

    .line 1644
    :cond_0
    :goto_0
    return-void

    .line 1612
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v1, :cond_0

    .line 1615
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->F(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1616
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1617
    iget-wide v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aP:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 1618
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v2, Laxp$i;->dt_ding_detail_comment_public_tip:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTexthint(Ljava/lang/String;)V

    goto :goto_0

    .line 1620
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aP:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 1622
    .local v0, "replyUserProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v0, :cond_3

    .line 1623
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-array v2, v8, [Ljava/lang/String;

    sget v3, Laxp$i;->dt_ding_detail_comment_secret_tip:I

    .line 1624
    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1625
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 1624
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1623
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTexthint(Ljava/lang/String;)V

    goto :goto_0

    .line 1627
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v2, Laxp$i;->dt_ding_detail_comment_secret_tip:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTexthint(Ljava/lang/String;)V

    goto :goto_0

    .line 1631
    .end local v0    # "replyUserProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1632
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v2

    .line 1631
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 1633
    .restart local v0    # "replyUserProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v0, :cond_5

    .line 1634
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-array v2, v8, [Ljava/lang/String;

    sget v3, Laxp$i;->dt_ding_detail_comment_secret_tip:I

    .line 1635
    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1636
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 1635
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1634
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTexthint(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1638
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v2, Laxp$i;->dt_ding_detail_comment_secret_tip:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTexthint(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1642
    .end local v0    # "replyUserProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v2, Laxp$i;->ding_comment_input_edit_hint:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTexthint(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aJ:I

    return p1
.end method

.method private h()V
    .locals 20

    .prologue
    .line 1691
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v10}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v10

    if-eqz v10, :cond_1f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 13824
    iget-object v10, v10, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v10}, Lckm;->a()Ljava/lang/Object;

    move-result-object v10

    .line 1691
    if-eqz v10, :cond_1f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 14824
    iget-object v10, v10, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v10}, Lckm;->a()Ljava/lang/Object;

    move-result-object v10

    .line 1692
    instance-of v10, v10, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-eqz v10, :cond_1f

    .line 1693
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 15824
    iget-object v10, v10, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v10}, Lckm;->a()Ljava/lang/Object;

    move-result-object v4

    .line 1693
    check-cast v4, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    .line 1694
    .local v4, "eventsWrapperModel":Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;
    iget-object v10, v4, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    if-eqz v10, :cond_0

    iget-object v10, v4, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1695
    iget-object v10, v4, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    .line 1696
    .local v3, "eventModel":Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    if-nez v3, :cond_1

    .line 1697
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->q:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1778
    .end local v3    # "eventModel":Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    .end local v4    # "eventsWrapperModel":Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;
    :cond_0
    :goto_0
    return-void

    .line 1700
    .restart local v3    # "eventModel":Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    .restart local v4    # "eventsWrapperModel":Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->q:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16092
    if-eqz v4, :cond_2

    iget-object v10, v4, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    if-eqz v10, :cond_2

    iget-object v10, v4, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 16093
    :cond_2
    const/4 v10, 0x0

    .line 1702
    :goto_1
    if-eqz v10, :cond_14

    .line 1703
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->r:Landroid/widget/TextView;

    const/4 v10, 0x2

    new-array v13, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    sget v11, Laxp$i;->dt_ding_meeting_time_prefix:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v10

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    .line 16130
    if-eqz v15, :cond_3

    if-nez v3, :cond_b

    .line 16131
    :cond_3
    const-string/jumbo v10, ""

    .line 1703
    :goto_2
    aput-object v10, v13, v14

    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1704
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->s:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1705
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->t:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17782
    :goto_3
    if-eqz v3, :cond_4

    iget-object v10, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    if-nez v10, :cond_16

    .line 17783
    :cond_4
    const/4 v6, 0x0

    .line 1724
    .local v6, "poiItem":Lcom/amap/api/services/core/PoiItem;
    :goto_4
    iget-object v10, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->location:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v6, :cond_19

    .line 1725
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->u:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1726
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->v:Landroid/widget/TextView;

    iget-object v11, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->location:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1728
    if-eqz v6, :cond_18

    .line 1730
    iget-object v10, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->location:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1731
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1734
    :cond_6
    new-instance v2, Lecw;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Laxp$i;->icon_gps_fill:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Laxp$c;->ui_common_theme_bg_color:I

    invoke-static {v11, v12}, Ldp;->c(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v2, v10, v11}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 1735
    .local v2, "dtIconFontDrawable":Lecw;
    sget v10, Laxp$d;->dp12:I

    invoke-static {v10}, Leda;->d(I)I

    move-result v10

    .line 18070
    iput v10, v2, Lecw;->a:I

    .line 1736
    sget v10, Laxp$d;->dp12:I

    invoke-static {v10}, Leda;->d(I)I

    move-result v10

    .line 18079
    iput v10, v2, Lecw;->b:I

    .line 1737
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->v:Landroid/widget/TextView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v2, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->v:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Laxp$c;->ui_common_theme_bg_color:I

    invoke-static {v11, v12}, Ldp;->c(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1740
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->v:Landroid/widget/TextView;

    new-instance v11, Lcom/alibaba/android/ding/fragment/DingDetailFragment$31;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$31;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/amap/api/services/core/PoiItem;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1756
    .end local v2    # "dtIconFontDrawable":Lecw;
    :goto_5
    iget-object v10, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->alarmList:Ljava/util/List;

    if-eqz v10, :cond_1e

    iget-object v10, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->alarmList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1e

    .line 1757
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->w:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1758
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v11

    iget-object v10, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->alarmList:Ljava/util/List;

    const/4 v12, 0x0

    .line 1759
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 19044
    const-wide/16 v12, 0x0

    invoke-static {v10, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v12

    .line 1758
    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a(J)I

    move-result v7

    .line 1760
    .local v7, "remindRes":I
    iget-object v10, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->alarmType:Ljava/lang/Integer;

    .line 20033
    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v10

    .line 20125
    sget-object v11, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->CALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-virtual {v11}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v11

    if-ne v10, v11, :cond_1a

    .line 20126
    sget v9, Laxp$i;->ding_remind_type_phone:I

    .line 1762
    .local v9, "remindType":I
    :goto_6
    if-eqz v7, :cond_1d

    if-eqz v9, :cond_1d

    .line 1763
    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    sget v12, Laxp$i;->dt_calendar_remind_type_prefix:I

    .line 1764
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    const/4 v12, 0x2

    .line 1765
    invoke-static {}, Lcms;->h()Z

    move-result v10

    if-eqz v10, :cond_1c

    const-string/jumbo v10, " "

    :goto_7
    aput-object v10, v11, v12

    const/4 v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    .line 1763
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1766
    .local v8, "remindStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 16095
    .end local v6    # "poiItem":Lcom/amap/api/services/core/PoiItem;
    .end local v7    # "remindRes":I
    .end local v8    # "remindStr":Ljava/lang/String;
    .end local v9    # "remindType":I
    :cond_7
    iget-object v10, v4, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    .line 16099
    if-eqz v10, :cond_8

    iget-object v11, v10, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    if-eqz v11, :cond_8

    iget-object v11, v10, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->endTime:Ljava/lang/Long;

    if-nez v11, :cond_9

    .line 16100
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 16103
    :cond_9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 16104
    iget-object v12, v10, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 16105
    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 16106
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 16107
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 16108
    iget-object v10, v10, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->endTime:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 16109
    const/4 v10, 0x6

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 16110
    const/4 v15, 0x2

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 16111
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 16112
    if-ne v12, v10, :cond_a

    if-ne v13, v15, :cond_a

    if-ne v14, v11, :cond_a

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 16134
    :cond_b
    iget-object v10, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->recurRuleList:Ljava/util/List;

    if-eqz v10, :cond_c

    iget-object v10, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->recurRuleList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->recurRuleList:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_d

    .line 16136
    :cond_c
    iget-object v10, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v15, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->endTime:Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v10, v11, v0, v1}, Lcog;->b(JJ)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 16140
    :cond_d
    iget-object v10, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->recurRuleList:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;

    invoke-static {v10}, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->fromRecurRuleModel(Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;)Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v10

    .line 16141
    invoke-static {v10}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->convertToFrequency(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v10

    .line 16142
    sget-object v11, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_DAY:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-ne v10, v11, :cond_e

    .line 16143
    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual {v10}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v10

    invoke-virtual {v15, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v16

    const/4 v10, 0x1

    const-string/jumbo v15, " "

    aput-object v15, v11, v10

    const/4 v10, 0x2

    iget-object v15, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    .line 16144
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v10

    const/4 v10, 0x3

    const-string/jumbo v15, "~"

    aput-object v15, v11, v10

    const/4 v10, 0x4

    iget-object v15, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->endTime:Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v10

    .line 16143
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 16145
    :cond_e
    sget-object v11, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_WEEK:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-eq v10, v11, :cond_f

    sget-object v11, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_TWO_WEEK:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-ne v10, v11, :cond_10

    .line 16146
    :cond_f
    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual {v10}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v10

    invoke-virtual {v15, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v16

    const/4 v10, 0x1

    const-string/jumbo v15, " "

    aput-object v15, v11, v10

    const/4 v10, 0x2

    iget-object v15, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcog;->b(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v10

    const/4 v10, 0x3

    const-string/jumbo v15, " "

    aput-object v15, v11, v10

    const/4 v10, 0x4

    iget-object v15, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    .line 16147
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v10

    const/4 v10, 0x5

    const-string/jumbo v15, "~"

    aput-object v15, v11, v10

    const/4 v10, 0x6

    iget-object v15, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->endTime:Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v10

    .line 16146
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 16148
    :cond_10
    sget-object v11, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_MONTH:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-ne v10, v11, :cond_12

    .line 16149
    const/16 v11, 0x8

    new-array v0, v11, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v11, 0x0

    invoke-virtual {v10}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v10

    invoke-virtual {v15, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v16, v11

    const/4 v10, 0x1

    const-string/jumbo v11, " "

    aput-object v11, v16, v10

    const/16 v17, 0x2

    iget-object v10, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    .line 16150
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 17072
    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-gtz v18, :cond_11

    .line 17073
    invoke-static {}, Lcms;->u()J

    move-result-wide v10

    .line 17076
    :cond_11
    invoke-static {}, Lcom/alibaba/doraemon/performance/CalendarProxy;->getCalendar()Ljava/util/Calendar;

    move-result-object v18

    .line 17077
    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 17078
    const/4 v10, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 16150
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v16, v17

    const/4 v10, 0x3

    sget v11, Laxp$i;->dt_ding_meeting_day_of_month:I

    invoke-virtual {v15, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v16, v10

    const/4 v10, 0x4

    const-string/jumbo v11, " "

    aput-object v11, v16, v10

    const/4 v10, 0x5

    iget-object v11, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    .line 16151
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v16, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "~"

    aput-object v11, v16, v10

    const/4 v10, 0x7

    iget-object v11, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->endTime:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v16, v10

    .line 16149
    invoke-static/range {v16 .. v16}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 16152
    :cond_12
    sget-object v11, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_YEAR:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-ne v10, v11, :cond_13

    .line 16153
    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual {v10}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v10

    invoke-virtual {v15, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v16

    const/4 v10, 0x1

    const-string/jumbo v15, " "

    aput-object v15, v11, v10

    const/4 v10, 0x2

    iget-object v15, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    .line 16154
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcog;->t(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v10

    const/4 v10, 0x3

    const-string/jumbo v15, "~"

    aput-object v15, v11, v10

    const/4 v10, 0x4

    iget-object v15, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->endTime:Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v10

    .line 16153
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 16156
    :cond_13
    iget-object v10, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v15, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->endTime:Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v10, v11, v0, v1}, Lcog;->b(JJ)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 1707
    :cond_14
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->s:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1708
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->r:Landroid/widget/TextView;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    sget v13, Laxp$i;->dt_calendar_start_time_prefix:I

    .line 1709
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    .line 1710
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x0

    invoke-static {v14, v15, v13}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1709
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1708
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->s:Landroid/widget/TextView;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    sget v13, Laxp$i;->dt_calendar_end_time_prefix:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->endTime:Ljava/lang/Long;

    .line 1712
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x0

    invoke-static {v14, v15, v13}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1711
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1714
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    iget-object v11, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->recurRuleList:Ljava/util/List;

    invoke-static {v10, v11}, Lbjs;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 1715
    .local v5, "meetingRepeatFrequency":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1716
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->t:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1718
    :cond_15
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->t:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1719
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 17786
    .end local v5    # "meetingRepeatFrequency":Ljava/lang/String;
    :cond_16
    iget-object v11, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    .line 17787
    const-string/jumbo v10, "m_latitude"

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcoc;->b(Ljava/lang/String;)D

    move-result-wide v12

    .line 17788
    const-string/jumbo v10, "m_longitude"

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcoc;->b(Ljava/lang/String;)D

    move-result-wide v14

    .line 17789
    const-string/jumbo v10, "m_title"

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 17790
    const-string/jumbo v16, "m_id"

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 17792
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 17793
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 17796
    :cond_17
    new-instance v16, Lcom/amap/api/services/core/LatLonPoint;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    .line 17797
    new-instance v6, Lcom/amap/api/services/core/PoiItem;

    const/4 v12, 0x0

    move-object/from16 v0, v16

    invoke-direct {v6, v11, v0, v10, v12}, Lcom/amap/api/services/core/PoiItem;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1748
    .restart local v6    # "poiItem":Lcom/amap/api/services/core/PoiItem;
    :cond_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->v:Landroid/widget/TextView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1749
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->v:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Laxp$c;->ui_common_level1_text_color:I

    invoke-static {v11, v12}, Ldp;->c(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 1753
    :cond_19
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->u:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 20128
    .restart local v7    # "remindRes":I
    :cond_1a
    sget-object v11, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->SMS:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-virtual {v11}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v11

    if-ne v10, v11, :cond_1b

    .line 20129
    sget v9, Laxp$i;->ding_remind_type_sms:I

    goto/16 :goto_6

    .line 20131
    :cond_1b
    sget v9, Laxp$i;->ding_remind_type_app:I

    goto/16 :goto_6

    .line 1765
    .restart local v9    # "remindType":I
    :cond_1c
    const-string/jumbo v10, ""

    goto/16 :goto_7

    .line 1768
    :cond_1d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->w:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1772
    .end local v7    # "remindRes":I
    .end local v9    # "remindType":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->w:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1776
    .end local v3    # "eventModel":Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    .end local v4    # "eventsWrapperModel":Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;
    .end local v6    # "poiItem":Lcom/amap/api/services/core/PoiItem;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->q:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aT:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aE:I

    return v0
.end method

.method private i()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const v4, 0x12ec0bd

    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 1901
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->L(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v0

    .line 1902
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1904
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->T:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1905
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1906
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1907
    .local v1, "conversationName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1908
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->T:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1909
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->U:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    sget v4, Laxp$i;->ding_conversation_from:I

    .line 1910
    invoke-virtual {p0, v4}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1909
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1911
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->u()V

    .line 1955
    .end local v1    # "conversationName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1914
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    if-eqz v2, :cond_0

    .line 1915
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    iget-boolean v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aN:Z

    invoke-interface {v2, v0, v3}, Lbaf$a;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1918
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1919
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    sget-object v4, Lcom/alibaba/android/ding/utils/FetchMaxLevel;->NETWORK:Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    new-instance v2, Lcom/alibaba/android/ding/fragment/DingDetailFragment$32;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$32;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    const-class v5, Lcma;

    .line 1950
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 1919
    invoke-static {v2, v5, v6}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-static {v3, v4, v2}, Lbjx;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/utils/FetchMaxLevel;Lcma;)V

    goto :goto_0

    .line 1953
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->T:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->bb:Landroid/view/View;

    return-object v0
.end method

.method private j()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const v5, 0x12ec0bc

    const/16 v4, 0x8

    .line 1973
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v3, :cond_1

    .line 1974
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    instance-of v3, v3, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v3, :cond_4

    .line 1975
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1976
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->g(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Laxp$i;->dt_ding_task_assigned_myself:I

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1994
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/android/ding/fragment/DingDetailFragment$33;

    invoke-direct {v4, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$33;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2001
    :cond_1
    return-void

    .line 1976
    :cond_2
    sget v3, Laxp$i;->dt_ding_task_my_assigned:I

    goto :goto_0

    .line 1978
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B:Landroid/widget/TextView;

    sget v4, Laxp$i;->ding_txt_sender_me:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1980
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    instance-of v3, v3, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    if-eqz v3, :cond_0

    .line 1981
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_6

    .line 1982
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1984
    .local v2, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    .line 1985
    .local v1, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 1986
    .local v0, "alias":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->C:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(J)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1989
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lbka;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    move v3, v4

    .line 1986
    goto :goto_2

    .line 1991
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .end local v2    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic j(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(I)V

    return-void
.end method

.method private k()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2008
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v1, :cond_1

    .line 2009
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2010
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 2038
    :cond_0
    :goto_0
    return-void

    .line 2014
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2017
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->ToSend:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 2021
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Canceled:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 2025
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Expired:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 2030
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ad()I

    move-result v0

    .line 2031
    .local v0, "unconfirmedCount":I
    const/16 v1, 0x63

    if-le v0, v1, :cond_5

    .line 2032
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v2, Laxp$i;->dt_ding_list_at_unread:I

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "99+"

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->c(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2033
    :cond_5
    if-gtz v0, :cond_6

    .line 2034
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v2, Laxp$i;->ding_remind_all_readed:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->c(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2036
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v2, Laxp$i;->dt_ding_list_at_unread:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->c(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic k(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->A()V

    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aS:I

    return v0
.end method

.method private l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v0, :cond_0

    .line 2050
    :goto_0
    return-void

    .line 2045
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2046
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->t()V

    goto :goto_0

    .line 2048
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ap:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method private m()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2108
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->l()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2109
    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 21094
    iget-boolean v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G:Z

    .line 2109
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2111
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2112
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    invoke-interface {v0}, Lbaf$a;->p()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    invoke-interface {v0}, Lbaf$a;->r()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2113
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->af:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2125
    :goto_0
    return-void

    .line 2115
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->af:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2116
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ag:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_create_activity_meeting_minutes_task:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2119
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->af:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2120
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ag:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_task_subtask_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2123
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->af:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->w()V

    return-void
.end method

.method private n()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2128
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v3, :cond_1

    .line 2129
    const-string/jumbo v3, "[DingDetailFragment]refresh failed"

    const-string/jumbo v10, "-1"

    const-string/jumbo v11, "ding is null"

    invoke-static {v3, v10, v11}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2131
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 2189
    :cond_0
    :goto_0
    return-void

    .line 2136
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Sent:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    iget-object v10, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v10

    if-ne v3, v10, :cond_7

    .line 2137
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 2138
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->V:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2139
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->w()Z

    move-result v1

    .line 2140
    .local v1, "isSendAtFixedTime":Z
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->v()J

    move-result-wide v4

    .line 2141
    .local v4, "nextRemindTime":J
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->x()Z

    move-result v2

    .line 2142
    .local v2, "mIsCycleRemind":Z
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->u()J

    move-result-wide v6

    .line 2143
    .local v6, "remindTime":J
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->y()Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->convertToFrequency(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v0

    .line 2144
    .local v0, "frequency":Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;
    if-eqz v1, :cond_6

    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-gtz v3, :cond_2

    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-lez v3, :cond_6

    .line 2147
    :cond_2
    if-eqz v2, :cond_4

    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-lez v3, :cond_4

    move-wide v8, v4

    .line 2148
    .local v8, "showRemindTime":J
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Y:Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2149
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Z:Landroid/widget/TextView;

    sget v10, Laxp$i;->dt_remind_fix_time_AT:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8, v9}, Lbkb;->a(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2150
    if-eqz v2, :cond_3

    sget-object v3, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->NO_REPEAT:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-ne v0, v3, :cond_5

    .line 2151
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aa:Landroid/widget/TextView;

    sget v10, Laxp$i;->dt_calendar_event_repeat_none:I

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .end local v8    # "showRemindTime":J
    :cond_4
    move-wide v8, v6

    .line 2147
    goto :goto_1

    .line 2153
    .restart local v8    # "showRemindTime":J
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aa:Landroid/widget/TextView;

    sget v10, Laxp$i;->dt_ding_repeat_AT:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v13

    invoke-virtual {p0, v13}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2156
    .end local v8    # "showRemindTime":J
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Y:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 2161
    .end local v0    # "frequency":Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;
    .end local v1    # "isSendAtFixedTime":Z
    .end local v2    # "mIsCycleRemind":Z
    .end local v4    # "nextRemindTime":J
    .end local v6    # "remindTime":J
    :cond_7
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Y:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2163
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->ToSend:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    iget-object v10, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v10

    if-ne v3, v10, :cond_8

    .line 2165
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 2166
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->V:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2167
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->X:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2168
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->W:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->P()J

    move-result-wide v10

    invoke-static {v10, v11}, Lbkb;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2171
    :cond_8
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Canceled:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    iget-object v10, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v10

    if-ne v3, v10, :cond_9

    .line 2173
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 2174
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->V:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2175
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->X:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2176
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->W:Landroid/widget/TextView;

    sget v10, Laxp$i;->ding_text_cancel_send:I

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2179
    :cond_9
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Expired:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    iget-object v10, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v10

    if-ne v3, v10, :cond_a

    .line 2181
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 2182
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->V:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2183
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->X:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2184
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->W:Landroid/widget/TextView;

    sget v10, Laxp$i;->ding_text_expired:I

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2187
    :cond_a
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 2188
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->V:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic n(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    const/4 v1, 0x2

    .line 176
    .line 24855
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aS:I

    if-eq v0, v1, :cond_0

    .line 24856
    iput v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aS:I

    .line 24857
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d()V

    .line 24858
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 24859
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 24861
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->h()V

    .line 24862
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 176
    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2192
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v1, :cond_0

    .line 2207
    :goto_0
    return-void

    .line 2195
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2196
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2197
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setVisibility(I)V

    goto :goto_0

    .line 2201
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setVisibility(I)V

    .line 2202
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2203
    .local v0, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    if-eqz v1, :cond_3

    .line 2204
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    invoke-interface {v1, v0}, Lbaf$a;->a(Ljava/util/List;)V

    .line 2206
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->k()V

    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    const/4 v1, 0x3

    .line 176
    .line 24867
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aS:I

    if-eq v0, v1, :cond_0

    .line 24868
    iput v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aS:I

    .line 24869
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 24870
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 24871
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 24873
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->i()V

    .line 24874
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 176
    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2211
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    invoke-interface {v0}, Lbaf$a;->e()V

    .line 2213
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->v()V

    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aG:Ljava/util/Map;

    return-object v0
.end method

.method private q()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2225
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->p(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2226
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->S:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setVisibility(I)V

    .line 2227
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->M()I

    move-result v0

    .line 2228
    .local v0, "checkInCount":I
    if-nez v0, :cond_0

    .line 2229
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->S:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v2, Laxp$i;->dt_ding_remind_all_not_sign_up:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->c(I)V

    .line 2240
    .end local v0    # "checkInCount":I
    :goto_0
    return-void

    .line 2230
    .restart local v0    # "checkInCount":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->I()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2231
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->S:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v2, Laxp$i;->dt_ding_remind_all_sign_up:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->c(I)V

    goto :goto_0

    .line 2232
    :cond_1
    const/16 v1, 0x63

    if-le v0, v1, :cond_2

    .line 2233
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->S:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v2, Laxp$i;->dt_ding_sign_up_num_format:I

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "99+"

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2235
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->S:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v2, Laxp$i;->dt_ding_sign_up_num_format:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2238
    .end local v0    # "checkInCount":I
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->S:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private r()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 2335
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v0, :cond_0

    .line 2346
    :goto_0
    return-void

    .line 2338
    :cond_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Sender:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->C()Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Sent:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2339
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2340
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ah:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    invoke-virtual {v0, v2, v3, v2, v3}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a(JJ)V

    .line 2341
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ai:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    invoke-virtual {v0, v2, v3, v2, v3}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a(JJ)V

    goto :goto_0

    .line 2344
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ah:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->V()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->W()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a(JJ)V

    .line 2345
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ai:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->V()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->W()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a(JJ)V

    goto :goto_0
.end method

.method static synthetic r(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aK:Z

    return v0
.end method

.method static synthetic s(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->au:Ljava/lang/String;

    return-object v0
.end method

.method private s()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2401
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2402
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2403
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setVisibility(I)V

    .line 2430
    :goto_0
    return-void

    .line 2407
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->f(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2408
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2409
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setVisibility(I)V

    .line 2410
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxp$i;->icon_cc_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 2411
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$c;->ui_common_level2_icon_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_0

    .line 2415
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2416
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setVisibility(I)V

    .line 2417
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->g(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2418
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .line 2427
    :cond_2
    :goto_1
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setEnabled(Z)V

    .line 2428
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->C(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(ZZ)V

    goto :goto_0

    .line 2420
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2421
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setEnabled(Z)V

    .line 2422
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(ZZ)V

    goto :goto_0

    .line 2423
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->j(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2424
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setEnabled(Z)V

    .line 2425
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(ZZ)V

    goto/16 :goto_0

    .line 2427
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method static synthetic t(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aL:I

    return v0
.end method

.method private t()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x8

    .line 2433
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ap:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 2458
    :goto_0
    return-void

    .line 2436
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2437
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ap:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 2440
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->v(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2441
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ap:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 2444
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2445
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ap:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 2448
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->s(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2449
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ap:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 2453
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ap:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2454
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->clearFocus()V

    .line 2456
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aq:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2457
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic u(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aM:I

    return v0
.end method

.method private u()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->T:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2761
    return-void
.end method

.method private v()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2817
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aP:J

    .line 2818
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->g()V

    .line 2819
    return-void
.end method

.method static synthetic v(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    .line 24907
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 24908
    sget v1, Laxp$e;->ding_first_focus_icon:I

    .line 25243
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->h:I

    .line 24909
    sget v1, Laxp$i;->dt_ding_guide_popview_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setTitle(I)V

    .line 26230
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 24911
    sget v1, Laxp$i;->dt_ding_guide_popview_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 26239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 24912
    sget v1, Laxp$i;->dt_ding_i_know:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 26259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 24913
    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$40;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$40;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 26271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 24919
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 176
    return-void
.end method

.method private w()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 2844
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aS:I

    if-eq v0, v1, :cond_0

    .line 2845
    iput v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aS:I

    .line 2846
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 2847
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 2848
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 2850
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->requestFocus()Z

    .line 2852
    :cond_0
    return-void
.end method

.method static synthetic w(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    .line 27269
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aO:I

    if-nez v0, :cond_0

    .line 27274
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aI:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 27278
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aE:I

    if-eqz v0, :cond_0

    .line 27282
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aH:I

    iget v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aI:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 27283
    iget v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aE:I

    if-lt v0, v1, :cond_0

    .line 27284
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$28;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$28;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    :cond_0
    return-void
.end method

.method static synthetic x(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ak:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    return-object v0
.end method

.method private x()V
    .locals 1

    .prologue
    .line 2948
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    if-eqz v0, :cond_0

    .line 2949
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    invoke-interface {v0}, Lbaf$a;->b()V

    .line 2951
    :cond_0
    return-void
.end method

.method static synthetic y(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    return-object v0
.end method

.method private y()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2957
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2958
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 3012
    :cond_0
    :goto_0
    return-void

    .line 2962
    :cond_1
    invoke-static {}, Lbju;->s()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2967
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22079
    const-string/jumbo v3, "meeting_show_smart_device_tips"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 2972
    if-nez v3, :cond_0

    .line 2976
    invoke-static {}, Lbkk;->a()Ljava/util/List;

    move-result-object v1

    .line 2977
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lbdu;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2978
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->z()V

    .line 2983
    :goto_1
    new-instance v3, Lcom/alibaba/android/ding/fragment/DingDetailFragment$43;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$43;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    const-class v4, Lcma;

    invoke-static {v3, v4, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 3010
    .local v2, "listener":Lcma;, "Lcma<Ljava/util/List<Lbdu;>;>;"
    invoke-static {v2}, Lbgm;->a(Lcma;)V

    goto :goto_0

    .line 2980
    .end local v2    # "listener":Lcma;, "Lcma<Ljava/util/List<Lbdu;>;>;"
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->A()V

    goto :goto_1
.end method

.method static synthetic z(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/widget/CommentFilterLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ah:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    return-object v0
.end method

.method private z()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3017
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 3018
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 3027
    :goto_0
    return-void

    .line 3021
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->bb:Landroid/view/View;

    if-nez v1, :cond_1

    .line 3022
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laxp$g;->ding_layout_badge_signin:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->bb:Landroid/view/View;

    .line 3023
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->S:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->bb:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->a(Landroid/view/View;)V

    goto :goto_0

    .line 3025
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->bb:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 3
    .param p1, "autoTrigger"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2822
    iget v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aS:I

    if-eqz v1, :cond_1

    .line 2823
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aS:I

    .line 2824
    .local v0, "old":I
    iput v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aS:I

    .line 2825
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 2826
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 2827
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2828
    if-nez p1, :cond_0

    .line 2829
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 2834
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2837
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->clearFocus()V

    .line 2839
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->t()V

    .line 2841
    .end local v0    # "old":I
    :cond_1
    return-void

    .line 2832
    .restart local v0    # "old":I
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 391
    iget v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aS:I

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Z)V

    .line 399
    :goto_0
    return v0

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->az:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->az:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 399
    goto :goto_0
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2350
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v1, :cond_0

    .line 2398
    :goto_0
    return-void

    .line 2354
    :cond_0
    const/4 v0, 0x0

    .line 2355
    .local v0, "isShow":Z
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2357
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->v(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2359
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    sget v2, Laxp$i;->dt_ding_meeting_canceled:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2360
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_level3_text_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2361
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    sget v2, Laxp$e;->ding_bg_ding_meeting_status_canceled:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2362
    const/4 v0, 0x1

    .line 2393
    :cond_1
    :goto_1
    if-eqz v0, :cond_6

    .line 2394
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2363
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2365
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    sget v2, Laxp$i;->dt_ding_meeting_closed:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2366
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_level3_text_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2367
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    sget v2, Laxp$e;->ding_bg_ding_meeting_status_done:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2368
    const/4 v0, 0x1

    goto :goto_1

    .line 2369
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2370
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxp$c;->ding_meeting_status_accepted_tx_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2371
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    sget v2, Laxp$e;->ding_bg_ding_meeting_status_accepted:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2372
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->t(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2374
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    sget v2, Laxp$i;->dt_ding_meeting_accepted:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2375
    const/4 v0, 0x1

    goto :goto_1

    .line 2376
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->u(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2378
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    sget v2, Laxp$i;->dt_ding_refuse:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2379
    const/4 v0, 0x1

    goto :goto_1

    .line 2382
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2384
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aA:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2386
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    sget v2, Laxp$i;->dt_ding_already_done:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2387
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_level3_text_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2388
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    sget v2, Laxp$e;->ding_bg_ding_meeting_status_done:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2389
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2396
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 356
    .line 4351
    sget v0, Laxp$g;->ding_fragment_ding_detail_v2:I

    .line 356
    invoke-virtual {p1, v0, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    .line 4432
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->at:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 4433
    const-string/jumbo v0, "[DingDetailFragment]handleIntent failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "intent is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4434
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4435
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 358
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->au:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 359
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    .line 366
    :goto_1
    return-object v0

    .line 4439
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->at:Landroid/content/Intent;

    const-string/jumbo v1, "ding_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->au:Ljava/lang/String;

    .line 4440
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->at:Landroid/content/Intent;

    const-string/jumbo v1, "isRepeat"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->av:Z

    .line 4441
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->at:Landroid/content/Intent;

    const-string/jumbo v1, "unique_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aw:Ljava/lang/String;

    .line 4442
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->at:Landroid/content/Intent;

    const-string/jumbo v1, "recurrence_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ax:Ljava/lang/String;

    .line 4443
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->at:Landroid/content/Intent;

    const-string/jumbo v1, "intent_key_ding_biz_type"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ay:I

    .line 4444
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->at:Landroid/content/Intent;

    const-string/jumbo v1, "intent_key_ding_from_parent_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->az:Ljava/lang/String;

    .line 4445
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->at:Landroid/content/Intent;

    const-string/jumbo v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aF:Landroid/os/Bundle;

    .line 4446
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->at:Landroid/content/Intent;

    const-string/jumbo v1, "intent_key_unread_comment_count"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aE:I

    .line 4448
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ay:I

    invoke-static {v0}, Lbkh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4580
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4581
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4582
    const-string/jumbo v1, "ding_event_detail"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 4450
    :cond_2
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ay:I

    invoke-static {v0}, Lbkh;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4592
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4593
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4594
    const-string/jumbo v1, "ding_event_detail"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 4452
    :cond_3
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ay:I

    invoke-static {v0}, Lbkh;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5586
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5587
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5588
    const-string/jumbo v1, "ding_event_detail"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 6458
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    sget v1, Laxp$f;->iv_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 6459
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    sget v1, Laxp$f;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->e:Landroid/widget/TextView;

    .line 6460
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    sget v1, Laxp$f;->ll_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->f:Landroid/view/View;

    .line 6461
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    sget v1, Laxp$f;->iv_red:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->g:Landroid/view/View;

    .line 6462
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    sget v1, Laxp$f;->iv_focus:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 6464
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    sget v1, Laxp$f;->rl_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->i:Landroid/widget/RelativeLayout;

    .line 6466
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_detail_content_v2:I

    invoke-virtual {v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    .line 6467
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->ll_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->k:Landroid/widget/LinearLayout;

    .line 6469
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->iv_biz_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 6470
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->checkbox_biz_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .line 6471
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_ding_content_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 6472
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setEllipsisStr(Ljava/lang/String;)V

    .line 6473
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setMaxLines(I)V

    .line 6474
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_show_text_content_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->o:Landroid/view/View;

    .line 6475
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->view_ding_content_audio:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/VoicePlayView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p:Lcom/alibaba/android/ding/widget/VoicePlayView;

    .line 6477
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->ll_meeting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->q:Landroid/widget/LinearLayout;

    .line 6478
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_meeting_start:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->r:Landroid/widget/TextView;

    .line 6479
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_meeting_end:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->s:Landroid/widget/TextView;

    .line 6480
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_repeat_frequency:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->t:Landroid/widget/TextView;

    .line 6481
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->ll_meeting_place_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->u:Landroid/view/View;

    .line 6482
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_meeting_place:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->v:Landroid/widget/TextView;

    .line 6483
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_meeting_remind:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->w:Landroid/widget/TextView;

    .line 6485
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->ll_attachment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x:Landroid/widget/LinearLayout;

    .line 6486
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->rl_attachment_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->z:Landroid/widget/RelativeLayout;

    .line 6487
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_attachment_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->A:Landroid/widget/TextView;

    .line 6489
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_sender_nick:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B:Landroid/widget/TextView;

    .line 6490
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->iv_special_focus:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->C:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 6491
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_date:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->D:Landroid/widget/TextView;

    .line 6492
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E:Landroid/widget/TextView;

    .line 6494
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->rl_deadline:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->F:Landroid/widget/RelativeLayout;

    .line 6495
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_deadline:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->M:Landroid/widget/TextView;

    .line 6496
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_deadline_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->N:Landroid/widget/TextView;

    .line 6497
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->ift_deadline_desc_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->O:Landroid/view/View;

    .line 6499
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->view_receiver:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    .line 6500
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v1, Laxp$i;->icon_people_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(I)V

    .line 6501
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    new-array v1, v3, [Ljava/lang/String;

    sget v2, Laxp$i;->dt_ding_receiver_detail:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string/jumbo v2, ":"

    aput-object v2, v1, v10

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->a(Ljava/lang/CharSequence;)V

    .line 6502
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setTopLineVisible(Z)V

    .line 6503
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setBottomLineVisible(Z)V

    .line 6505
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->view_participant:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Q:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    .line 6506
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Q:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    new-array v1, v3, [Ljava/lang/String;

    sget v2, Laxp$i;->dt_task_participant_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string/jumbo v2, ":"

    aput-object v2, v1, v10

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->a(Ljava/lang/CharSequence;)V

    .line 6507
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Q:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v1, Laxp$i;->icon_boss_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(I)V

    .line 6508
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Q:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setTopLineVisible(Z)V

    .line 6509
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Q:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setBottomLineVisible(Z)V

    .line 6511
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->view_recorder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->R:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    .line 6512
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->R:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    new-array v1, v3, [Ljava/lang/String;

    sget v2, Laxp$i;->dt_meeting_create_recorder_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string/jumbo v2, ":"

    aput-object v2, v1, v10

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->a(Ljava/lang/CharSequence;)V

    .line 6513
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->R:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v1, Laxp$i;->icon_recorder_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(I)V

    .line 6514
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->R:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setTopLineVisible(Z)V

    .line 6515
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->R:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setBottomLineVisible(Z)V

    .line 6517
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->view_check_in:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->S:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    .line 6518
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->S:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    new-array v1, v3, [Ljava/lang/String;

    sget v2, Laxp$i;->dt_check_in_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string/jumbo v2, ":"

    aput-object v2, v1, v10

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->a(Ljava/lang/CharSequence;)V

    .line 6519
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->S:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    sget v1, Laxp$i;->icon_meeting_signin_:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(I)V

    .line 6520
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->S:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setTopLineVisible(Z)V

    .line 6521
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->S:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setBottomLineVisible(Z)V

    .line 6523
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->ll_to_send:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->V:Landroid/widget/LinearLayout;

    .line 6524
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->iv_to_send:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->X:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 6525
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_to_send:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->W:Landroid/widget/TextView;

    .line 6527
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->ding_conversation_source_ll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->T:Landroid/view/View;

    .line 6528
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_conversation_source:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->U:Landroid/widget/TextView;

    .line 6530
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->rl_fixed_send:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Y:Landroid/widget/RelativeLayout;

    .line 6531
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_fixed_to_send:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Z:Landroid/widget/TextView;

    .line 6532
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_fixed_to_repeat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aa:Landroid/widget/TextView;

    .line 6534
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->ding_sub_task_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ab:Landroid/view/View;

    .line 6535
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->ding_sub_task_count_ll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ac:Landroid/view/View;

    .line 6536
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_sub_task_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ad:Landroid/widget/TextView;

    .line 6537
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->ding_sub_task_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ae:Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

    .line 6538
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->ll_create_sub_task:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->af:Landroid/view/View;

    .line 6539
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_create_sub_task:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ag:Landroid/widget/TextView;

    .line 6541
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    sget v1, Laxp$f;->comment_filter_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ah:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    .line 6542
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    sget v1, Laxp$f;->view_fake_comment_filter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ai:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    .line 6544
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    sget v1, Laxp$f;->ding_comment_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aj:Landroid/view/View;

    .line 6545
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    sget v1, Laxp$f;->ding_comment_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ak:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 6546
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    sget v1, Laxp$f;->ding_detail_inputpanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 6547
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMiddleOperationPaddingLeft(I)V

    .line 6549
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    .line 6550
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_5

    .line 6551
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6552
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 6553
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6556
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    sget v1, Laxp$f;->ding_detail_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->am:Landroid/view/View;

    .line 6557
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    sget v1, Laxp$f;->iv_ding_detail_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->an:Landroid/widget/ImageView;

    .line 6558
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    sget v1, Laxp$f;->tv_ding_detail_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ao:Landroid/widget/TextView;

    .line 6560
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    sget v1, Laxp$f;->vs_bottom_meeting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ap:Landroid/view/ViewStub;

    .line 6561
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ap:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 6562
    sget v0, Laxp$f;->tv_meeting_accept:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aq:Landroid/widget/TextView;

    .line 6563
    sget v0, Laxp$f;->tv_meeting_reject:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ar:Landroid/widget/TextView;

    .line 6564
    sget v0, Laxp$f;->tv_bottom_reply:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->as:Landroid/widget/TextView;

    .line 6565
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ap:Landroid/view/ViewStub;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 6566
    sget v0, Laxp$f;->tv_meeting_accept:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->bc:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6567
    sget v0, Laxp$f;->tv_meeting_reject:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->bc:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6568
    sget v0, Laxp$f;->tv_bottom_reply:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->bc:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ay:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(I)V

    .line 6572
    new-instance v0, Lbag;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ay:I

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->au:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->av:Z

    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aw:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ax:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a:Lbaf$b;

    iget-object v8, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b:Lazv$b;

    invoke-direct/range {v0 .. v8}, Lbag;-><init>(Landroid/app/Activity;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lbaf$b;Lazv$b;)V

    .line 6576
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setAddApp(Z)V

    .line 6577
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setFace(Z)V

    .line 6578
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVoiceRecord(Z)V

    .line 6579
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v9, v9, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setPadding(IIII)V

    .line 6580
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v1, Laxp$i;->ding_comment_input_edit_hint:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTexthint(Ljava/lang/String;)V

    .line 6581
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 6583
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionBottomBarVisible(Z)V

    .line 6584
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 7007
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v1, :cond_6

    .line 7008
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v1, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a(Z)V

    .line 7009
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v1, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->b(Z)V

    .line 7010
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->c(Z)V

    .line 6585
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Lcsx;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Ljava/util/List;)V

    .line 6586
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$1;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionDeleteClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$c;)V

    .line 6593
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "pref_keyboard_height"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c(I)V

    .line 6595
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 6596
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 6600
    :cond_7
    new-instance v7, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;-><init>(Landroid/content/Context;)V

    .line 6601
    new-instance v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$12;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v7, v9, v0, v11}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 6610
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6612
    new-instance v5, Lcom/alibaba/android/ding/fragment/DingDetailFragment$23;

    invoke-direct {v5, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$23;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 7142
    new-instance v0, Lckj;

    iget-object v1, v7, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v2, Lcig$j;->icon_cspace_fill:I

    sget v3, Lcig$j;->space_name:I

    move v4, v9

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 7143
    iget-object v1, v7, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6622
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b(Ljava/util/List;)V

    .line 6623
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$34;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$34;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setRecentInnerEmotionSynDelegate(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;)V

    .line 6630
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ak:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    .line 6633
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->au:Ljava/lang/String;

    .line 7608
    iget-object v2, v0, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$72;

    invoke-direct {v3, v0, v1, v11}, Lbbp$72;-><init>(Lbbp;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 7717
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$36;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$36;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->post(Ljava/lang/Runnable;)Z

    .line 6636
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x()V

    .line 6638
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->y()V

    .line 8642
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$44;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$44;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8651
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$51;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$51;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setListener(Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView$a;)V

    .line 8662
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->o:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$52;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$52;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8671
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$53;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8688
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->R:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$54;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$54;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8701
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Q:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$2;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8711
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->S:Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$3;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8722
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$4;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSendButtonOnClicker(Landroid/view/View$OnClickListener;)V

    .line 8728
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getFaceButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$5;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8739
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$6;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setAddAppButtonOnClicker(Landroid/view/View$OnClickListener;)V

    .line 8749
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$7;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V

    .line 8771
    new-instance v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aZ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 8827
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8877
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$10;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8897
    new-instance v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$11;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ba:Landroid/widget/AbsListView$OnScrollListener;

    .line 8926
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ah:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$13;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->setCommentFilterListener(Lcom/alibaba/android/ding/widget/CommentFilterLayout$a;)V

    .line 8941
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ai:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$14;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->setCommentFilterListener(Lcom/alibaba/android/ding/widget/CommentFilterLayout$a;)V

    .line 8957
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ak:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ba:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 8958
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ak:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$15;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setFlingCallBack(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;)V

    .line 9006
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ak:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9116
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->z:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$17;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$17;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9124
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aZ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcoq;->b(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9125
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aZ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcoq;->a(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9127
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p:Lcom/alibaba/android/ding/widget/VoicePlayView;

    if-eqz v0, :cond_9

    .line 9128
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p:Lcom/alibaba/android/ding/widget/VoicePlayView;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aD:Lbkz;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVoicePlayListener(Lcom/alibaba/android/ding/widget/VoicePlayView$a;)V

    .line 9131
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$18;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$18;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9149
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->f:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$19;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$19;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9163
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->af:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$20;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$20;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9178
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ap:Landroid/view/ViewStub;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$21;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$21;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9185
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aq:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$22;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$22;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9193
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ar:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$24;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$24;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9201
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->as:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$25;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$25;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9210
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->F:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$26;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$26;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9225
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ak:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$27;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$27;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c:Landroid/view/View;

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 410
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aB:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aB:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    .line 9355
    iput-object v3, v1, Lcom/alibaba/android/ding/adapter/CommentAdapter;->g:Lbkz;

    .line 412
    iput-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aB:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    .line 9709
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aZ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v1, v2}, Lcqc;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9711
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p:Lcom/alibaba/android/ding/widget/VoicePlayView;

    if-eqz v1, :cond_1

    .line 9712
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVoicePlayListener(Lcom/alibaba/android/ding/widget/VoicePlayView$a;)V

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    if-eqz v1, :cond_2

    .line 418
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aU:Lbaf$a;

    invoke-interface {v1}, Lbaf$a;->i()V

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aV:Lazv$a;

    if-eqz v1, :cond_3

    .line 421
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aV:Lazv$a;

    invoke-interface {v1}, Lazv$a;->i()V

    .line 423
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ae:Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

    if-eqz v1, :cond_6

    .line 424
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ae:Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

    .line 10217
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "[SubTaskViewContainer]destroy clear all view & observer"

    aput-object v3, v1, v0

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    move v1, v0

    .line 10219
    :goto_0
    iget-object v0, v2, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 10220
    iget-object v0, v2, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    if-eqz v0, :cond_4

    .line 10221
    iget-object v0, v2, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .line 10382
    iget-object v3, v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 10219
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 10225
    :cond_5
    iget-object v0, v2, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 427
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B()V

    .line 428
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 429
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 371
    invoke-static {}, Lbla;->a()Lbla;

    move-result-object v0

    invoke-virtual {v0}, Lbla;->b()V

    .line 372
    invoke-static {}, Lcrc;->a()Lcrc;

    move-result-object v0

    invoke-virtual {v0}, Lcrc;->b()V

    .line 373
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onPause()V

    .line 374
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 3803
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 3804
    invoke-static {p0, p1, p3}, Lbhy;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I[I)V

    .line 3805
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 378
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onResume()V

    .line 379
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->au:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getMessageEditContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 382
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aS:I

    if-ne v0, v1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 384
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 385
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 388
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->au:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(Ljava/lang/String;)V

    .line 405
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onStop()V

    .line 406
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 351
    sget v0, Laxp$g;->ding_fragment_ding_detail_v2:I

    return v0
.end method
