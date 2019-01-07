.class final Lbyq$4;
.super Ljava/lang/Object;
.source "StartLiveUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbyq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lbxf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lbyq$4;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbyq$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lbyq$4;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 160
    iget-object v0, p0, Lbyq$4;->a:Landroid/app/Activity;

    .line 1224
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1227
    invoke-static {v0}, Lbyf;->b(Landroid/app/Activity;)V

    .line 1228
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Failed checkLivePermission, code="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2013
    const-string/jumbo v2, "live"

    invoke-static {v2, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    const-string/jumbo v1, "1005"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2042
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2045
    const-string/jumbo v1, "GuideHelper.showNormalGroupDialog"

    .line 3013
    const-string/jumbo v2, "live"

    invoke-static {v2, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;-><init>(Landroid/content/Context;)V

    .line 2047
    sget v2, Lbtp$d;->live_permission_normal_group:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a(I)V

    .line 2048
    sget v2, Lbtp$g;->dt_lv_group_not_inner_alertt_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->setTitle(I)V

    .line 2049
    sget v2, Lbtp$g;->dt_lv_group_not_inner_alert_desc:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->b(I)V

    .line 2050
    sget v2, Lbtp$g;->dt_common_i_know:I

    new-instance v3, Lbtx$1;

    invoke-direct {v3, v1}, Lbtx$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a(ILandroid/view/View$OnClickListener;)V

    .line 2056
    sget v2, Lbtp$g;->dt_lv_view_details:I

    new-instance v3, Lbtx$2;

    invoke-direct {v3, v1, v0}, Lbtx$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->b(ILandroid/view/View$OnClickListener;)V

    .line 2065
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->show()V

    .line 161
    :cond_0
    :goto_0
    iget-object v0, p0, Lbyq$4;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lbyq$4;->c:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_1
    return-void

    .line 3323
    :cond_2
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3326
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3327
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3329
    :cond_3
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3330
    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->dt_common_i_know:I

    .line 3331
    invoke-virtual {v0, v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 3332
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 149
    .line 4168
    iget-object v0, p0, Lbyq$4;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 4169
    iget-object v0, p0, Lbyq$4;->c:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 149
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 149
    check-cast p1, Lbxf;

    .line 5152
    iget-object v2, p0, Lbyq$4;->a:Landroid/app/Activity;

    iget-object v0, p0, Lbyq$4;->b:Ljava/lang/String;

    .line 6184
    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6187
    invoke-static {v2}, Lbyf;->b(Landroid/app/Activity;)V

    .line 6189
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->h()V

    .line 6191
    iget-object v1, p1, Lbxf;->b:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lbxf;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 6192
    iget-object v0, p1, Lbxf;->b:Ljava/util/List;

    .line 7026
    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7029
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5153
    :cond_0
    :goto_0
    iget-object v0, p0, Lbyq$4;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_1

    .line 5154
    iget-object v0, p0, Lbyq$4;->c:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v6}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 149
    :cond_1
    return-void

    .line 7033
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_4

    .line 7034
    const-string/jumbo v1, "GuideHelper.GuideDialog"

    .line 8013
    const-string/jumbo v3, "live"

    invoke-static {v3, v6, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7035
    new-instance v1, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;-><init>(Landroid/app/Activity;)V

    .line 8044
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->b:Ljava/util/List;

    .line 8045
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;

    if-eqz v0, :cond_3

    .line 8046
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;->notifyDataSetChanged()V

    .line 7035
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->show()V

    goto :goto_0

    .line 7036
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 7037
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxi;

    .line 8069
    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8072
    if-eqz v0, :cond_0

    .line 8076
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v3, "GuideHelper.showSingleDialog, type="

    aput-object v3, v1, v7

    iget v3, v0, Lbxi;->a:I

    .line 8077
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 8076
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9013
    const-string/jumbo v3, "live"

    invoke-static {v3, v6, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8078
    sget v1, Lbtp$g;->dt_lv_do_later:I

    .line 8079
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    invoke-direct {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;-><init>(Landroid/content/Context;)V

    .line 8080
    iget v4, v0, Lbxi;->a:I

    packed-switch v4, :pswitch_data_0

    .line 8099
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "showGuide, receive wrong type="

    aput-object v2, v1, v7

    iget v0, v0, Lbxi;->a:I

    .line 8100
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    .line 8099
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10013
    const-string/jumbo v1, "live"

    invoke-static {v1, v6, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8082
    :pswitch_0
    sget v1, Lbtp$g;->dt_mail_create_team:I

    .line 8083
    sget v4, Lbtp$d;->live_permission_create_team:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a(I)V

    .line 8084
    sget v4, Lbtp$g;->dt_lv_create_or_join_team:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->setTitle(I)V

    .line 8085
    sget v4, Lbtp$g;->dt_lv_create_or_join_team_message:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->b(I)V

    .line 8103
    :goto_1
    new-instance v4, Lbtx$3;

    invoke-direct {v4, v3}, Lbtx$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;)V

    invoke-virtual {v3, v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a(ILandroid/view/View$OnClickListener;)V

    .line 8109
    sget v1, Lbtp$g;->dt_lv_org_manager_auth_alert_confirm:I

    new-instance v4, Lbtx$4;

    invoke-direct {v4, v3, v2, v0}, Lbtx$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;Landroid/app/Activity;Lbxi;)V

    invoke-virtual {v3, v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->b(ILandroid/view/View$OnClickListener;)V

    .line 8116
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->show()V

    goto/16 :goto_0

    .line 8088
    :pswitch_1
    sget v4, Lbtp$d;->live_permission_org_certification:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a(I)V

    .line 8089
    sget v4, Lbtp$g;->dt_lv_auth_org_to_start:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->setTitle(I)V

    .line 8090
    sget v4, Lbtp$g;->dt_lv_org_manager_auth_alert_desc:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->b(I)V

    goto :goto_1

    .line 8093
    :pswitch_2
    sget v4, Lbtp$d;->live_permission_personal_certification:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a(I)V

    .line 8094
    sget v4, Lbtp$g;->dt_lv_realname_alert_title:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->setTitle(I)V

    .line 8095
    sget v4, Lbtp$g;->dt_lv_realname_alert_desc:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->b(I)V

    goto :goto_1

    .line 6195
    :cond_5
    iget-object v1, p1, Lbxf;->a:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lbxf;->a:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->cid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 6197
    iget-object v0, p1, Lbxf;->a:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->cid:Ljava/lang/String;

    .line 6201
    :cond_6
    new-instance v1, Lbyq$5;

    invoke-direct {v1, v0, p1}, Lbyq$5;-><init>(Ljava/lang/String;Lbxf;)V

    .line 6213
    iget-object v3, p1, Lbxf;->a:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lbxf;->a:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->inputStreamUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6215
    :cond_7
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 6218
    :cond_8
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->b(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 8080
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
