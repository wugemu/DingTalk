.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;
.super Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
.source "LanMeshForbidFragment.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;

    .prologue
    .line 23
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->b:I

    return v0
.end method

.method public static c()Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;-><init>()V

    .line 33
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;
    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public final B()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->B()V

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->show()V

    .line 125
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 116
    const-string/jumbo v0, "LanMeshForbidFragment"

    const-string/jumbo v1, "onActivityCreated"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "params_mesh_forbid_code"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->b:I

    .line 59
    :cond_0
    const/4 v4, 0x0

    .line 60
    .local v4, "resId":I
    const/4 v5, 0x0

    .line 61
    .local v5, "title":Ljava/lang/String;
    const/4 v3, 0x0

    .line 62
    .local v3, "content":Ljava/lang/String;
    const/4 v2, 0x0

    .line 63
    .local v2, "button":Ljava/lang/String;
    iget v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->b:I

    sget-object v7, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_MESH_FAIL_NO_C1:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v7, v7, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    if-ne v6, v7, :cond_1

    .line 64
    sget v4, Lbrx$c;->device_alpha_wan_not_ok:I

    .line 65
    sget v6, Lbrx$g;->dt_alpha_nowan_title:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 66
    sget v6, Lbrx$g;->dt_alpha_nowan_content:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    sget v6, Lbrx$g;->dt_alpha_nowan_button:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    const-string/jumbo v6, "LanMeshForbidFragment"

    const-string/jumbo v7, "alpha_no_wan_enter"

    invoke-static {v6, v7, v9}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 79
    :goto_0
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "resource"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    const-string/jumbo v6, "title"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v6, "content"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v6, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Ljava/util/List;)V

    .line 87
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v6, v8}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setCanceledOnTouchOutside(Z)V

    .line 88
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v6, v8}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setCancelable(Z)V

    .line 89
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    .line 1079
    iput-object v2, v6, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 90
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    new-instance v7, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment$1;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;)V

    .line 1095
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    .line 105
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    new-instance v7, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment$2;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;)V

    .line 1099
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->g:Landroid/view/View$OnClickListener;

    .line 111
    return-void

    .line 69
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_1
    iget v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->b:I

    sget-object v7, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_MESH_FAIL_NO_ADMIN_CORP_IDS:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v7, v7, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    if-ne v6, v7, :cond_2

    .line 70
    sget v4, Lbrx$c;->device_alpha_user_not_auth:I

    .line 71
    sget v6, Lbrx$g;->dt_alpha_notadmin_title:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    sget v6, Lbrx$g;->dt_alpha_notadmin_content_and:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    sget v6, Lbrx$g;->dt_alpha_notadmin_button_cancel:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    const-string/jumbo v6, "LanMeshForbidFragment"

    const-string/jumbo v7, "alpha_no_auth_enter"

    invoke-static {v6, v7, v9}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->x()V

    goto :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lbrx$e;->device_lan_mesh_forbid_fragment:I

    return v0
.end method

.method public final y()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public final z()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method
