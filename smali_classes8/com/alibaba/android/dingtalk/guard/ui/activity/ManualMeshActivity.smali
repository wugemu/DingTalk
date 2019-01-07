.class public Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "ManualMeshActivity.java"

# interfaces
.implements Lbsw$e;
.implements Lbsy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
        "Lbsw$e",
        "<",
        "Lbsw$c;",
        ">;",
        "Lbsy;"
    }
.end annotation


# instance fields
.field private a:Lbsx;

.field private b:Lbsw$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 23
    new-instance v0, Lbsx;

    invoke-direct {v0}, Lbsx;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->a:Lbsx;

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public final a(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 184
    return-void
.end method

.method public final a(IZ)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "cancelable"    # Z

    .prologue
    .line 142
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 209
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 213
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final k()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public final l()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public final m()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public final n()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public final o()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v1, Lbrx$e;->activity_manual_mesh:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->setContentView(I)V

    .line 31
    const-string/jumbo v1, "manualMesh"

    const-string/jumbo v2, "alpha_manual_mesh_enter"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "params_corp_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "corpId":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->a:Lbsx;

    .line 1368
    iput-object v0, v1, Lbsx;->b:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->a:Lbsx;

    sget-object v2, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->MANUAL_MESH:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    .line 2337
    iput-object v2, v1, Lbsx;->c:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    .line 37
    new-instance v1, Lbsz;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->a:Lbsx;

    invoke-direct {v1, p0, v2}, Lbsz;-><init>(Lbsw$e;Lbsw$b;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->b:Lbsw$c;

    .line 38
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->b:Lbsw$c;

    .line 3193
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->b:Lbsw$c;

    .line 4056
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->b:Lbsw$c;

    .line 40
    invoke-interface {v1, p1}, Lbsw$c;->a(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 5056
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->b:Lbsw$c;

    .line 46
    invoke-interface {v0}, Lbsw$c;->a()V

    .line 47
    return-void
.end method

.method public final p()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 151
    return-object p0
.end method

.method public final q()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public final r()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public final s()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lbsw$c;

    .line 7193
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->b:Lbsw$c;

    .line 19
    return-void
.end method

.method public final t()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 171
    invoke-static {}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->c()Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    move-result-object v1

    .line 172
    .local v1, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "params_mesh_type"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->a:Lbsx;

    .line 5342
    iget-object v3, v3, Lbsx;->c:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    .line 173
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 174
    const-string/jumbo v2, "params_corp_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->a:Lbsx;

    .line 5373
    iget-object v3, v3, Lbsx;->b:Ljava/lang/String;

    .line 174
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string/jumbo v2, "params_mesh_code"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->a:Lbsx;

    .line 6353
    iget v3, v3, Lbsx;->a:I

    .line 175
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    const-string/jumbo v2, "params_mesh_count"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->a:Lbsx;

    .line 6363
    iget v3, v3, Lbsx;->d:I

    .line 176
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->setArguments(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lbrx$d;->container:I

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 179
    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public final w()Lbsw$e;
    .locals 0

    .prologue
    .line 51
    return-object p0
.end method

.method public final x()Lbsw$c;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->b:Lbsw$c;

    return-object v0
.end method

.method public final y()Lbsw$b;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/ManualMeshActivity;->a:Lbsx;

    return-object v0
.end method
