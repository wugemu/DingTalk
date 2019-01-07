.class public Lcom/alibaba/android/ding/activity/CreateEventActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "CreateEventActivity.java"


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/activity/CreateEventActivity$a;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/TextView;

.field private E:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

.field private F:Lbac$a;

.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/ScrollView;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

.field private g:Landroid/widget/EditText;

.field private h:Lcom/alibaba/android/ding/widget/DingAttachmentView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private o:Landroid/widget/ToggleButton;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/alibaba/android/ding/widget/ReceiverSelector;

.field private t:Landroid/widget/FrameLayout;

.field private u:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

.field private v:Lcom/alibaba/android/ding/widget/ReceiverSelector;

.field private w:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

.field private x:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

.field private y:Landroid/view/View;

.field private z:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 414
    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->C:Landroid/view/View;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->D:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    .line 3172
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/CreateEventActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$7;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lbac$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->F:Lbac$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/CreateEventActivity;Lbac$a;)Lbac$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;
    .param p1, "x1"    # Lbac$a;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->F:Lbac$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/CreateEventActivity;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->w:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/CreateEventActivity;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->x:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->e:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->o:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->s:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->u:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/DingAttachmentView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->h:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->v:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->w:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->x:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->y:Landroid/view/View;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->z:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->B:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 80
    .line 3147
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/android/ding/activity/CreateEventActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$6;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    const-class v3, Lcma;

    .line 3148
    invoke-static {v0, v3, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3147
    invoke-virtual {v1, v2, v0}, Lbhg;->a(ILcma;)V

    .line 80
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->F:Lbac$a;

    invoke-interface {v0}, Lbac$a;->p()V

    .line 381
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->F:Lbac$a;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->F:Lbac$a;

    invoke-interface {v0}, Lbac$a;->s()V

    .line 147
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    sget v0, Laxp$g;->ding_activity_create_event:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->setContentView(I)V

    .line 2186
    sget v0, Laxp$f;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->a:Landroid/view/View;

    .line 2187
    sget v0, Laxp$f;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b:Landroid/widget/TextView;

    .line 2188
    sget v0, Laxp$f;->tv_send:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->c:Landroid/widget/TextView;

    .line 2190
    sget v0, Laxp$f;->loading_indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d:Landroid/widget/ProgressBar;

    .line 2191
    sget v0, Laxp$f;->scroll_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->e:Landroid/widget/ScrollView;

    .line 2192
    sget v0, Laxp$f;->ll_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    .line 2194
    sget v0, Laxp$f;->et_subject:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g:Landroid/widget/EditText;

    .line 2195
    sget v0, Laxp$f;->v_attachment:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingAttachmentView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->h:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .line 2196
    sget v0, Laxp$f;->v_subject_address_split:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->i:Landroid/view/View;

    .line 2198
    sget v0, Laxp$f;->ll_address:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->j:Landroid/view/View;

    .line 2199
    sget v0, Laxp$f;->et_address:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->k:Landroid/widget/EditText;

    .line 2200
    sget v0, Laxp$f;->ift_location_room:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->l:Landroid/view/View;

    .line 2201
    sget v0, Laxp$f;->tv_location_room:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->m:Landroid/widget/TextView;

    .line 2202
    sget v0, Laxp$f;->ifv_map_location:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2204
    sget v0, Laxp$f;->toggle_all_day:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->o:Landroid/widget/ToggleButton;

    .line 2206
    sget v0, Laxp$f;->view_time_period:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    .line 2208
    sget v0, Laxp$f;->rl_remind:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->q:Landroid/widget/RelativeLayout;

    .line 2209
    sget v0, Laxp$f;->tv_remind:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->r:Landroid/widget/TextView;

    .line 2211
    sget v0, Laxp$f;->view_receiver_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/ReceiverSelector;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->s:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    .line 2212
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->s:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    const-string/jumbo v3, "identifier_meeting_participant_selector"

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setIdentifier(Ljava/lang/String;)V

    .line 2213
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->s:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setHasSendToMe(Z)V

    .line 2215
    sget v0, Laxp$f;->fl_send_type_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->t:Landroid/widget/FrameLayout;

    .line 2216
    new-instance v0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->u:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    .line 2217
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->t:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->u:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2219
    sget v0, Laxp$f;->view_recorder_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/ReceiverSelector;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->v:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    .line 2220
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->v:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    sget v3, Laxp$i;->dt_meeting_create_recorder_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setTitle(Ljava/lang/CharSequence;)V

    .line 2221
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->v:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    const-string/jumbo v3, "identifier_recorder_selector"

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setIdentifier(Ljava/lang/String;)V

    .line 2222
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->v:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setSingleChooseMode(Z)V

    .line 2223
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->v:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setHasSendToMe(Z)V

    .line 2225
    sget v0, Laxp$f;->ll_schedule_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->y:Landroid/view/View;

    .line 2226
    sget v0, Laxp$f;->tv_schedule_time_conflict_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->A:Landroid/widget/TextView;

    .line 2227
    sget v0, Laxp$f;->iv_schedule_time_attention:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->z:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2228
    sget v0, Laxp$f;->tv_schedule_time_conflict_link:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->B:Landroid/widget/TextView;

    .line 2230
    sget v0, Laxp$f;->layout_send_repeat_frequency:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->C:Landroid/view/View;

    .line 2231
    sget v0, Laxp$f;->tv_send_repeat_frequency:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->D:Landroid/widget/TextView;

    .line 2235
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->s:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    new-instance v3, Lcom/alibaba/android/ding/activity/CreateEventActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$1;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setReceiverSelectorListener(Lcom/alibaba/android/ding/widget/ReceiverSelector$a;)V

    .line 2244
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->v:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    new-instance v3, Lcom/alibaba/android/ding/activity/CreateEventActivity$8;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$8;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setReceiverSelectorListener(Lcom/alibaba/android/ding/widget/ReceiverSelector$a;)V

    .line 2253
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    new-instance v3, Lcom/alibaba/android/ding/activity/CreateEventActivity$9;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$9;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;->setTouchCallBack(Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;)V

    .line 2280
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->o:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/alibaba/android/ding/activity/CreateEventActivity$10;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$10;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2289
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    new-instance v3, Lcom/alibaba/android/ding/activity/CreateEventActivity$11;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$11;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->setStartOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2300
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    new-instance v3, Lcom/alibaba/android/ding/activity/CreateEventActivity$12;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$12;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->setEndOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2311
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g:Landroid/widget/EditText;

    new-instance v3, Lcom/alibaba/android/ding/activity/CreateEventActivity$13;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$13;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2328
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->q:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/alibaba/android/ding/activity/CreateEventActivity$14;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$14;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2337
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->a:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/ding/activity/CreateEventActivity$15;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$15;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2346
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->c:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/ding/activity/CreateEventActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$2;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2355
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->B:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/ding/activity/CreateEventActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$3;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2363
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v3, Lcom/alibaba/android/ding/activity/CreateEventActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$4;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2370
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->C:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/ding/activity/CreateEventActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$5;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2384
    new-instance v0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;B)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->E:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    .line 2386
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2387
    const-string/jumbo v0, "[CreateEventPage]initBiz failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "intent is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->finish()V

    .line 2407
    :goto_0
    return-void

    .line 2391
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_key_create_ding_info"

    invoke-static {v0, v3}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 2392
    if-nez v0, :cond_1

    .line 2393
    const-string/jumbo v0, "[CreateEventPage]initBiz failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "createInfo is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->finish()V

    goto :goto_0

    .line 2397
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isMeeting()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2398
    const-string/jumbo v0, "[CreateEventPage]initBiz failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is not meeting"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->finish()V

    goto :goto_0

    .line 2404
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getDingIdStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 2405
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[CreateEvent] isEditMode"

    aput-object v4, v3, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Lbkd;->a([Ljava/lang/String;)V

    .line 2406
    if-eqz v0, :cond_4

    .line 2407
    new-instance v0, Lbae;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->E:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbae;-><init>(Lbac$b;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 2404
    goto :goto_1

    .line 2409
    :cond_4
    new-instance v0, Lbad;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->E:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbad;-><init>(Lbac$b;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->s:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->s:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->a()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->v:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->v:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->a()V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->h:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->h:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a()V

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->F:Lbac$a;

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->F:Lbac$a;

    invoke-interface {v0}, Lbac$a;->i()V

    .line 182
    :cond_3
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 183
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->k:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 153
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 154
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 1215
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1216
    invoke-static {p0, p1, p3}, Laxq;->a(Lcom/alibaba/android/ding/activity/CreateEventActivity;I[I)V

    .line 1217
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->F:Lbac$a;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity;->F:Lbac$a;

    invoke-interface {v0}, Lbac$a;->a()V

    .line 161
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 162
    return-void
.end method
