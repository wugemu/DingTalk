.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;
.super Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
.source "LanWaitingFragment.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Z

.field private g:Z

.field private h:Landroid/support/v7/app/AlertDialog;

.field private i:Lcom/alibaba/doraemon/image/ImageMagician;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->j:I

    return-void
.end method

.method private a(Lbsw$b;)V
    .locals 7
    .param p1, "dataSource"    # Lbsw$b;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 155
    if-nez p1, :cond_1

    .line 156
    const-string/jumbo v1, "LanWaitingFragment"

    const-string/jumbo v2, "getDeviceConfig dataSource is null"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;Lbsw$b;)V

    .line 184
    .local v0, "listener":Lcma;, "Lcma<Lbmu;>;"
    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->j:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 185
    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->j:I

    .line 186
    invoke-static {}, Lbnc;->a()Lbnc;

    move-result-object v3

    invoke-interface {p1}, Lbsw$b;->e()I

    move-result v4

    .line 187
    invoke-interface {p1}, Lbsw$b;->O()Ljava/lang/String;

    move-result-object v5

    const-class v1, Lcma;

    .line 188
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 3474
    const-string/jumbo v2, "ApDeviceService"

    const-string/jumbo v6, "queryProductConfigInfo"

    invoke-static {v2, v6}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3475
    const-class v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;

    .line 3476
    if-nez v2, :cond_2

    .line 3477
    if-eqz v1, :cond_0

    .line 3478
    const-string/jumbo v2, ""

    const-string/jumbo v3, "service is null"

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3482
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lbnc$4;

    invoke-direct {v6, v3, v1}, Lbnc$4;-><init>(Lbnc;Lcma;)V

    invoke-interface {v2, v4, v5, v6}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;->queryProductConfigInfo(Ljava/lang/Integer;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;Lbsw$b;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;
    .param p1, "x1"    # Lbsw$b;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->a(Lbsw$b;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .param p1, "picUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->i:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->i:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 196
    :cond_0
    return-void
.end method

.method public static c()Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;-><init>()V

    .line 56
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;
    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    sget v0, Lbrx$d;->device_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->a:Landroid/widget/ImageView;

    .line 98
    sget v0, Lbrx$d;->layout_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->b:Landroid/view/View;

    .line 100
    sget v0, Lbrx$d;->layout_lan_waiting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->c:Landroid/view/View;

    .line 101
    sget v0, Lbrx$d;->tv_start_config:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->d:Landroid/view/View;

    .line 102
    sget v0, Lbrx$d;->layout_waiting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->e:Landroid/view/View;

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->l()Lbsw$c;

    move-result-object v0

    instance-of v0, v0, Lbst;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->d:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->f:Z

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1248
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->I:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->I:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2199
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->h:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_2

    .line 2200
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2201
    sget v1, Lbrx$g;->dt_alpha_connect_wifi_guide_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2202
    sget v1, Lbrx$g;->dt_alpha_connect_wifi_guide_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2203
    sget v1, Lbrx$g;->dt_alpha_goto_connect_wifi:I

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$4;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2211
    sget v1, Lbrx$g;->cancel:I

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment$5;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2218
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->h:Landroid/support/v7/app/AlertDialog;

    .line 2220
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->h:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2221
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->h:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 2222
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->h:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2223
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->h:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 127
    :cond_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "LanWaitingFragment"

    const-string/jumbo v2, "alpha_connect_wifi_guide_enter"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    :goto_0
    return-void

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->g:Z

    if-eqz v0, :cond_7

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3142
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->m()Lbsw$b;

    move-result-object v0

    .line 3143
    if-nez v0, :cond_5

    .line 3144
    const-string/jumbo v0, "LanWaitingFragment"

    const-string/jumbo v1, "updateDeviceConfig dataSource is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3147
    :cond_5
    invoke-interface {v0}, Lbsw$b;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3148
    invoke-interface {v0}, Lbsw$b;->M()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3151
    :cond_6
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->a(Lbsw$b;)V

    goto :goto_0

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "params_can_start_config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->g:Z

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "params_connect_wifi_guide"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->f:Z

    .line 87
    :cond_0
    const-string/jumbo v0, "LanWaitingFragment"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "param canStartConfig = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", connectWifiGuide = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->i:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onDestroy()V

    .line 230
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->h:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->h:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->h:Landroid/support/v7/app/AlertDialog;

    .line 234
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lbrx$e;->device_lan_waiting_fragment:I

    return v0
.end method

.method public final y()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public final z()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method
