.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;
.super Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
.source "LanNetSettingFragment.java"


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/support/v7/app/AlertDialog;

.field private D:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

.field private E:Z

.field private a:Landroid/widget/ScrollView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ToggleButton;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/View;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

.field private x:[Ljava/lang/String;

.field private y:[I

.field private z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;-><init>()V

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lbrx$c;->device_alpha_config_guide_1:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lbrx$c;->device_alpha_config_guide_2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lbrx$c;->device_alpha_config_guide_3:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->y:[I

    .line 100
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->z:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->A:I

    return v0
.end method

.method private static a(JLcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;)V
    .locals 4
    .param p0, "orgId"    # J
    .param p2, "config"    # Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;

    .prologue
    .line 366
    if-eqz p2, :cond_0

    .line 367
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "orgId"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-boolean v1, p2, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->a:Z

    if-eqz v1, :cond_1

    .line 370
    const-string/jumbo v1, "LanNetSettingFragment"

    const-string/jumbo v2, "alpha_bind_scope_set"

    invoke-static {v1, v2, v0}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 375
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 372
    .restart local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v1, "LanNetSettingFragment"

    const-string/jumbo v2, "alpha_bind_scope_unset"

    invoke-static {v1, v2, v0}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;JLcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;

    .prologue
    .line 58
    invoke-static {p1, p2, p3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(JLcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;Landroid/view/View;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 58
    .line 5712
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->b(I)V

    .line 5713
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->r()V

    .line 5715
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "LanNetSettingFragment"

    const-string/jumbo v2, "alpha_bind_team_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;Ljava/lang/String;I)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 58
    .line 4750
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->w:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->a(Ljava/lang/String;)V

    .line 4751
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->w:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->a(I)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;ZLandroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 58
    .line 7766
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->D:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    if-nez v0, :cond_0

    .line 7767
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->D:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    .line 7768
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->D:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    if-eqz p1, :cond_2

    sget v0, Lbrx$g;->dt_alpha_set_authorization_range_dialogue_title:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 8192
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->e:Ljava/lang/String;

    .line 7770
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->D:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    if-eqz p1, :cond_3

    sget v0, Lbrx$g;->dt_alpha_set_authorization_range_dialogue_content:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->a(Ljava/lang/String;)V

    .line 7772
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->D:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    sget v1, Lbrx$c;->device_alpha_net_scope_update:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->a(I)V

    .line 7773
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->D:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    .line 9188
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->c:Z

    .line 7774
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->D:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    if-eqz p1, :cond_4

    sget v0, Lbrx$g;->dt_alpha_set_authorization_range_dialogue_button:I

    :goto_2
    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$5;

    invoke-direct {v2, p0, p3, p2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$5;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    .line 10162
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->a:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 11157
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->f:Ljava/lang/String;

    .line 11158
    iput-object v2, v1, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->g:Landroid/view/View$OnClickListener;

    .line 7786
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->D:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7787
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->D:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->show()V

    .line 7789
    :cond_1
    const-string/jumbo v0, "LanNetSettingFragment"

    const-string/jumbo v1, "alpha_bind_scope_dialog_set"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    return-void

    .line 7768
    :cond_2
    sget v0, Lbrx$g;->dt_alpha_set_authorization_range_dialogue_alreadyset_title:I

    goto :goto_0

    .line 7770
    :cond_3
    sget v0, Lbrx$g;->dt_alpha_set_authorization_range_dialogue_alreadyset_content:I

    goto :goto_1

    .line 7774
    :cond_4
    sget v0, Lbrx$g;->dt_alpha_set_authorization_range_dialogue_alreadyset_button_known:I

    goto :goto_2
.end method

.method private a(Z)V
    .locals 2
    .param p1, "stationAuthorizedOn"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 417
    if-eqz p1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->h:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 419
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->j:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_alpha_set_authorization_on_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 420
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->k:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_alpha_set_authorization_on_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 426
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->h:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 423
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->j:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_alpha_set_authorization_off_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 424
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 3
    .param p1, "action"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m()Lbsw$b;

    move-result-object v1

    .line 705
    .local v1, "source":Lbsw$b;
    if-eqz v1, :cond_0

    .line 706
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 707
    .local v0, "scrollY":I
    invoke-interface {v1, p1, v0}, Lbsw$b;->a(II)V

    .line 709
    .end local v0    # "scrollY":I
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;Landroid/view/View;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 58
    .line 6692
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->v:Z

    if-eqz v0, :cond_2

    .line 6719
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->C:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_0

    .line 6720
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6721
    sget v1, Lbrx$g;->dt_alpha_ssid_exist_alert:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6722
    sget v1, Lbrx$g;->dt_alpha_i_know:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$4;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6728
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->C:Landroid/support/v7/app/AlertDialog;

    .line 6730
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->C:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6731
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->C:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 6698
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6699
    const-string/jumbo v2, "source"

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->v:Z

    if-nez v0, :cond_3

    const-string/jumbo v0, "1"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6700
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "LanNetSettingFragment"

    const-string/jumbo v3, "alpha_set_wifi_name_click"

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    return-void

    .line 6695
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->b(I)V

    .line 7182
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->n()Lbsw$e;

    move-result-object v0

    .line 7183
    if-eqz v0, :cond_1

    .line 7184
    invoke-interface {v0}, Lbsw$e;->s()V

    goto :goto_0

    .line 6699
    :cond_3
    const-string/jumbo v0, "2"

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->x:[Ljava/lang/String;

    return-object v0
.end method

.method public static c()Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;
    .locals 1

    .prologue
    .line 736
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;-><init>()V

    .line 737
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;
    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;Landroid/view/View;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 58
    .line 11607
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m()Lbsw$b;

    move-result-object v1

    .line 11608
    if-nez v1, :cond_1

    .line 11613
    :cond_0
    :goto_0
    return-void

    .line 11611
    :cond_1
    invoke-interface {v1}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v0

    .line 11612
    if-eqz v0, :cond_0

    .line 11616
    invoke-direct {p0, v9}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->b(I)V

    .line 11618
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    .line 11619
    const/4 v0, 0x0

    .line 11621
    invoke-interface {v1, v2, v3}, Lbsw$b;->c(J)Lbls;

    move-result-object v1

    .line 11622
    if-eqz v1, :cond_4

    .line 11623
    iget-object v0, v1, Lbls;->a:Ljava/util/List;

    .line 11624
    iget-object v1, v1, Lbls;->b:Ljava/util/List;

    .line 11633
    :goto_1
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 11635
    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11637
    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11638
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11641
    sget v5, Lbrx$g;->dt_alpha_set_authorization_range_choose_title:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11643
    const-string/jumbo v5, "source_choose_contact"

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11644
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11645
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11648
    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11651
    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->h(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11654
    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->k(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11657
    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->i(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11660
    invoke-virtual {v4, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11662
    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11665
    invoke-virtual {v4, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11667
    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11669
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 11670
    const-string/jumbo v3, "sys.root"

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 11671
    const/4 v3, 0x2

    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->nodeType:I

    .line 11672
    invoke-virtual {v4, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11674
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 11675
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11678
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11679
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 11680
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 11681
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11682
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11684
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 11685
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 11688
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 12053
    iget-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 11688
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    goto/16 :goto_0

    .line 11626
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11627
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    .line 11628
    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 11629
    iput-wide v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    .line 11630
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)[I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->y:[I

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->z:Ljava/lang/Runnable;

    return-object v0
.end method

.method private d()V
    .locals 20

    .prologue
    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->l()Lbsw$c;

    move-result-object v3

    instance-of v3, v3, Lbss;

    if-eqz v3, :cond_1

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->l()Lbsw$c;

    move-result-object v3

    check-cast v3, Lbss;

    invoke-virtual {v3}, Lbss;->e()Z

    move-result v3

    if-nez v3, :cond_1

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->x()V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m()Lbsw$b;

    move-result-object v10

    .line 194
    .local v10, "dataSource":Lbsw$b;
    if-eqz v10, :cond_0

    .line 195
    invoke-interface {v10}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 196
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->s:Z

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->d:Landroid/widget/TextView;

    invoke-interface {v10}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3324
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m()Lbsw$b;

    move-result-object v6

    .line 3325
    if-nez v6, :cond_5

    .line 201
    :cond_2
    :goto_1
    const-string/jumbo v15, ""

    .line 202
    .local v15, "wifiNameBefore":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->s:Z

    if-eqz v3, :cond_3

    .line 203
    invoke-interface {v10}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    invoke-interface {v10, v4, v5}, Lbsw$b;->b(J)Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;

    move-result-object v2

    .line 204
    .local v2, "config":Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;
    if-eqz v2, :cond_d

    iget-boolean v3, v2, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->a:Z

    if-eqz v3, :cond_d

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 205
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->v:Z

    .line 206
    iget-object v15, v2, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->b:Ljava/lang/String;

    .line 219
    .end local v2    # "config":Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->v:Z

    if-eqz v3, :cond_e

    move-object v3, v15

    :goto_3
    invoke-interface {v10, v3}, Lbsw$b;->k(Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->v:Z

    if-eqz v3, :cond_f

    .line 221
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->t:Z

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->h:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 225
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->u:Z

    .line 4429
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->s:Z

    if-eqz v3, :cond_19

    .line 4430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->p:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->l:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 4432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->o:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 4434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->b:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->c:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->e:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4443
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->t:Z

    if-eqz v3, :cond_1a

    .line 4444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->r:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->q:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->l:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    :goto_6
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v10}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$6;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;Lbsw$b;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 3328
    .end local v15    # "wifiNameBefore":Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v3

    .line 3329
    if-eqz v3, :cond_2

    .line 3332
    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    .line 3333
    invoke-interface {v6, v4, v5}, Lbsw$b;->b(J)Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;

    move-result-object v3

    .line 3378
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->E:Z

    .line 3379
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m()Lbsw$b;

    move-result-object v7

    .line 3380
    if-eqz v7, :cond_6

    .line 3381
    invoke-interface {v7}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 3382
    if-eqz v3, :cond_a

    .line 3383
    iget-boolean v7, v3, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->a:Z

    if-eqz v7, :cond_8

    .line 3384
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->f:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3389
    :goto_7
    iget-boolean v7, v3, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->g:Z

    if-eqz v7, :cond_9

    .line 3390
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->g:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3391
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->i:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3393
    iget-boolean v7, v3, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->f:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(Z)V

    .line 3335
    :cond_6
    :goto_8
    if-nez v3, :cond_c

    .line 3336
    new-instance v8, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v6, v4, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$7;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;Lbsw$b;J)V

    .line 3354
    const/4 v7, 0x0

    .line 3355
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->l()Lbsw$c;

    move-result-object v3

    instance-of v3, v3, Lbss;

    if-eqz v3, :cond_7

    .line 3356
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->l()Lbsw$c;

    move-result-object v3

    check-cast v3, Lbss;

    invoke-virtual {v3}, Lbss;->d()Ljava/lang/String;

    move-result-object v7

    .line 3358
    :cond_7
    invoke-static {}, Lbnc;->a()Lbnc;

    move-result-object v3

    invoke-interface {v6}, Lbsw$b;->e()I

    move-result v6

    const-class v16, Lcma;

    .line 3359
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v8, v0, v1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcma;

    .line 3358
    invoke-virtual/range {v3 .. v8}, Lbnc;->a(JILjava/lang/String;Lcma;)V

    goto/16 :goto_1

    .line 3386
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->f:Landroid/widget/TextView;

    sget v8, Lbrx$g;->dt_alpha_set_authorization_range_staff_quantity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 3395
    :cond_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->g:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3396
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->i:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 3400
    :cond_a
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->E:Z

    .line 3401
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->f:Landroid/widget/TextView;

    sget v8, Lbrx$g;->dt_alpha_setting_done:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3403
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->g:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3404
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->i:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 3408
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->f:Landroid/widget/TextView;

    sget v8, Lbrx$g;->dt_alpha_set_authorization_range_staff_quantity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3410
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->g:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3411
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->i:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 3361
    :cond_c
    invoke-static {v4, v5, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(JLcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;)V

    goto/16 :goto_1

    .line 208
    .restart local v2    # "config":Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;
    .restart local v15    # "wifiNameBefore":Ljava/lang/String;
    :cond_d
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v3

    invoke-virtual {v3}, Lbnh;->c()Ljava/util/Map;

    move-result-object v9

    .line 209
    .local v9, "corpSsidsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v9, :cond_3

    invoke-interface {v10}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 210
    invoke-interface {v10}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 211
    .local v13, "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 212
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->v:Z

    .line 213
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "wifiNameBefore":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 214
    .restart local v15    # "wifiNameBefore":Ljava/lang/String;
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "LanNetSettingFragment"

    const-string/jumbo v5, "alpha_ssid_exist"

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 219
    .end local v2    # "config":Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;
    .end local v9    # "corpSsidsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v13    # "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 227
    :cond_f
    invoke-interface {v10}, Lbsw$b;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 228
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->t:Z

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->n:Landroid/widget/TextView;

    invoke-interface {v10}, Lbsw$b;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_10
    invoke-interface {v10}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v11

    .line 232
    .local v11, "groupData":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    if-eqz v11, :cond_4

    .line 233
    iget-wide v4, v11, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    invoke-interface {v10, v4, v5}, Lbsw$b;->c(J)Lbls;

    move-result-object v12

    .line 234
    .local v12, "selectContactResult":Lbls;
    if-eqz v12, :cond_11

    .line 235
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->u:Z

    .line 4272
    if-nez v12, :cond_12

    .line 238
    :cond_11
    :goto_9
    iget-wide v4, v11, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    invoke-interface {v10, v4, v5}, Lbsw$b;->d(J)Z

    move-result v14

    .line 239
    .local v14, "staAuthOn":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(Z)V

    goto/16 :goto_4

    .line 4275
    .end local v14    # "staAuthOn":Z
    :cond_12
    iget-object v6, v12, Lbls;->b:Ljava/util/List;

    .line 4276
    if-eqz v6, :cond_17

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    .line 4277
    const/4 v4, 0x0

    .line 4278
    const/4 v3, 0x0

    .line 4279
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v4

    move v4, v3

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 4280
    if-eqz v3, :cond_1d

    .line 4281
    iget v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    add-int/2addr v5, v8

    .line 4282
    iget-wide v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v3, v16, v18

    if-nez v3, :cond_1d

    .line 4283
    const/4 v4, 0x1

    move v3, v4

    move v4, v5

    :goto_b
    move v5, v4

    move v4, v3

    .line 4286
    goto :goto_a

    .line 4287
    :cond_13
    if-eqz v4, :cond_14

    .line 4288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->f:Landroid/widget/TextView;

    sget v4, Lbrx$g;->and_alpha_select_whole_contact:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 4290
    :cond_14
    iget-object v3, v12, Lbls;->a:Ljava/util/List;

    .line 4291
    if-eqz v3, :cond_15

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    .line 4292
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v5, v3

    .line 4295
    :cond_15
    const-string/jumbo v4, ""

    .line 4296
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 4297
    if-eqz v3, :cond_1c

    .line 4298
    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    .line 4300
    :goto_c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_16

    .line 4301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->f:Landroid/widget/TextView;

    sget v6, Lbrx$g;->and_alpha_select_only_one_department:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 4303
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->f:Landroid/widget/TextView;

    sget v6, Lbrx$g;->and_alpha_select_not_only_one_department:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 4307
    :cond_17
    iget-object v5, v12, Lbls;->a:Ljava/util/List;

    .line 4308
    if-eqz v5, :cond_11

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 4309
    const-string/jumbo v4, ""

    .line 4310
    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 4311
    if-eqz v3, :cond_1b

    .line 4312
    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 4314
    :goto_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_18

    .line 4315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->f:Landroid/widget/TextView;

    sget v6, Lbrx$g;->and_alpha_select_only_one_employee:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 4317
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->f:Landroid/widget/TextView;

    sget v6, Lbrx$g;->and_alpha_select_not_only_one_employee:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 4439
    .end local v11    # "groupData":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    .end local v12    # "selectContactResult":Lbls;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->l:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 4440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->o:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_5

    .line 4450
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->q:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_6

    .restart local v11    # "groupData":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    .restart local v12    # "selectContactResult":Lbls;
    :cond_1b
    move-object v3, v4

    goto :goto_d

    :cond_1c
    move-object v3, v4

    goto/16 :goto_c

    :cond_1d
    move v3, v4

    move v4, v5

    goto/16 :goto_b
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->B:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->A:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->A:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    .line 4756
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m()Lbsw$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4757
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m()Lbsw$b;

    move-result-object v0

    invoke-interface {v0}, Lbsw$b;->I()Ljava/lang/String;

    move-result-object v0

    .line 4758
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4759
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4760
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 4762
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->x()V

    .line 58
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->s:Z

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->t:Z

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->d()V

    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->v:Z

    return v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->E:Z

    return v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    .line 12603
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m()Lbsw$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m()Lbsw$b;

    move-result-object v0

    invoke-interface {v0}, Lbsw$b;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 58
    goto :goto_0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 58
    .line 12741
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->w:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12744
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->w:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->show()V

    .line 12745
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->x:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->A:I

    .line 12746
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->l()Lbsw$c;

    move-result-object v0

    instance-of v0, v0, Lbss;

    if-eqz v0, :cond_0

    .line 1168
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->n()Lbsw$e;

    move-result-object v0

    .line 1169
    if-eqz v0, :cond_0

    .line 1170
    invoke-interface {v0}, Lbsw$e;->q()V

    .line 135
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "LanNetSettingFragment"

    const-string/jumbo v2, "alpha_bind_and_active_cancel"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 136
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2479
    sget v5, Lbrx$d;->view_root:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a:Landroid/widget/ScrollView;

    .line 2481
    sget v5, Lbrx$d;->layout_bind_group:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->b:Landroid/view/View;

    .line 2482
    sget v5, Lbrx$d;->tv_bind_group:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->c:Landroid/widget/TextView;

    .line 2483
    sget v5, Lbrx$d;->tv_group_name:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->d:Landroid/widget/TextView;

    .line 2485
    sget v5, Lbrx$d;->layout_set_wifi:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->l:Landroid/view/View;

    .line 2486
    sget v5, Lbrx$d;->tv_set_wifi:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m:Landroid/widget/TextView;

    .line 2487
    sget v5, Lbrx$d;->tv_wifi_name:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->n:Landroid/widget/TextView;

    .line 2488
    sget v5, Lbrx$d;->layout_net_type:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->o:Landroid/view/View;

    .line 2489
    sget v5, Lbrx$d;->view_set_wifi_cover:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->p:Landroid/view/View;

    .line 2491
    sget v5, Lbrx$d;->layout_set_net_scope:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->e:Landroid/view/View;

    .line 2492
    sget v5, Lbrx$d;->tv_net_scope:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->f:Landroid/widget/TextView;

    .line 2493
    sget v5, Lbrx$d;->layout_sta_auth:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->g:Landroid/view/View;

    .line 2494
    sget v5, Lbrx$d;->sta_auth_toggle:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->h:Landroid/widget/ToggleButton;

    .line 2495
    sget v5, Lbrx$d;->layout_step_1_tips:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->i:Landroid/view/View;

    .line 2496
    sget v5, Lbrx$d;->tv_step_1_tips_title:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->j:Landroid/widget/TextView;

    .line 2497
    sget v5, Lbrx$d;->tv_step_1_tips_content:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->k:Landroid/widget/TextView;

    .line 2499
    sget v5, Lbrx$d;->tv_confirm:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->q:Landroid/widget/TextView;

    .line 2500
    sget v5, Lbrx$d;->view_confirm_cover:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->r:Landroid/view/View;

    .line 2502
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->b:Landroid/view/View;

    new-instance v6, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$8;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$8;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2508
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->c:Landroid/widget/TextView;

    new-instance v6, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$9;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$9;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2514
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->l:Landroid/view/View;

    new-instance v6, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$10;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$10;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2520
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m:Landroid/widget/TextView;

    new-instance v6, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$11;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$11;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2526
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->o:Landroid/view/View;

    new-instance v6, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$12;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$12;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2533
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->e:Landroid/view/View;

    new-instance v6, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2557
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->h:Landroid/widget/ToggleButton;

    new-instance v6, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$2;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2571
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->q:Landroid/widget/TextView;

    new-instance v6, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "isAdmin":Z
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 169
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_1

    .line 170
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 171
    .local v4, "orgEmployees":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 172
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 173
    .local v3, "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v3, :cond_0

    iget-boolean v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->mIsAdmin:Z

    if-eqz v6, :cond_0

    .line 174
    const/4 v1, 0x1

    .line 180
    .end local v3    # "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v4    # "orgEmployees":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "source"

    if-eqz v1, :cond_2

    const-string/jumbo v5, "1"

    :goto_0
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "LanNetSettingFragment"

    const-string/jumbo v7, "alpha_bind_and_active_enter"

    invoke-interface {v5, v6, v7, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 183
    return-void

    .line 181
    :cond_2
    const-string/jumbo v5, "2"

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->w:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->w:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    .line 1210
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->d:Z

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->w:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->setCancelable(Z)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->w:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->setCanceledOnTouchOutside(Z)V

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->w:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    .line 2184
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->b:Z

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->w:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    sget v1, Lbrx$g;->dt_alpha_network_creating:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2192
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->e:Ljava/lang/String;

    .line 148
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lbrx$g;->dt_alpha_bind_team_from_mesh:I

    .line 149
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget v1, Lbrx$g;->dt_alpha_syn_network_config_ongoing:I

    .line 150
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget v2, Lbrx$g;->dt_alpha_restart_wifi_ongoing:I

    .line 151
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->x:[Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m()Lbsw$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m()Lbsw$b;

    move-result-object v0

    invoke-interface {v0}, Lbsw$b;->P()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->B:I

    .line 156
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->B:I

    if-gtz v0, :cond_1

    .line 157
    const/16 v0, 0x1e

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->B:I

    .line 160
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 462
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onDestroy()V

    .line 463
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->w:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->w:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->dismiss()V

    .line 465
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->w:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    .line 467
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 468
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->C:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->C:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 470
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->C:Landroid/support/v7/app/AlertDialog;

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->D:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->D:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->dismiss()V

    .line 474
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->D:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    .line 476
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 456
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onResume()V

    .line 457
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->d()V

    .line 458
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 127
    sget v0, Lbrx$e;->device_lan_net_setting:I

    return v0
.end method
