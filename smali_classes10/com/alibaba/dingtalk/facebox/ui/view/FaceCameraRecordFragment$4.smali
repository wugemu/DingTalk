.class final Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;
.super Ljava/lang/Object;
.source "FaceCameraRecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 874
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 875
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 911
    :goto_0
    return-void

    .line 879
    :cond_0
    const/4 v2, 0x0

    .line 880
    .local v2, "needSwitch":Z
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->m(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->n(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_2

    .line 881
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 882
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->o(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    .line 883
    const/4 v2, 0x1

    .line 891
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    .line 892
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v4, v3}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;Z)Z

    .line 893
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->m(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    invoke-static {v4, v3}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;Z)Z

    .line 894
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->p(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Lgsm;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->m(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Z

    move-result v4

    invoke-interface {v3, v4}, Lgsm;->a(Z)V

    goto :goto_0

    .line 885
    :cond_2
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->m(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->o(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    .line 886
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 887
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;->a:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->n(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    .line 888
    const/4 v2, 0x1

    goto :goto_1

    .line 893
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 899
    :cond_4
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 900
    .local v1, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v3, Lgrv$f;->dt_facebox_camera_open_nopermission_error:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 901
    sget v3, Lgrv$f;->at_i_got_it:I

    new-instance v4, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4$1;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4$1;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;)V

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 910
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method
