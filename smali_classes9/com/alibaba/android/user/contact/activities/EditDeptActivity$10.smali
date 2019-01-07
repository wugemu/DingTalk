.class final Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;
.super Ljava/lang/Object;
.source "EditDeptActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/EditDeptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lfrt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 208
    check-cast p1, Lfrt;

    .line 1211
    if-eqz p1, :cond_3

    .line 1214
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;Lfrt;)Lfrt;

    .line 1215
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->f(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->g(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    .line 1217
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v0

    iget-object v0, v0, Lfrt;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->d(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHintViewVisibility(I)V

    .line 1219
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->d(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v3

    iget-object v3, v3, Lfrt;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHint(Ljava/lang/String;)V

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->h(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHintViewVisibility(I)V

    .line 1222
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v0

    iget-object v0, v0, Lfrt;->d:Lfpb;

    if-eqz v0, :cond_1

    .line 1223
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v0

    iget-object v0, v0, Lfrt;->d:Lfpb;

    iget-object v0, v0, Lfpb;->a:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1223
    if-eqz v0, :cond_4

    .line 1224
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->h(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v0

    sget v3, Lezg$l;->org_enterprise_group_created:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHint(I)V

    .line 1225
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->h(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setRightArrow(I)V

    .line 1226
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->i(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1232
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v0

    iget-object v0, v0, Lfrt;->d:Lfpb;

    iget-object v0, v0, Lfpb;->c:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1232
    if-eqz v0, :cond_5

    .line 1233
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1238
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v0

    iget-object v0, v0, Lfrt;->f:Lfru;

    if-eqz v0, :cond_2

    .line 1239
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v3

    iget-object v3, v3, Lfrt;->f:Lfru;

    invoke-static {v0, v3}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;Lfru;)Lfru;

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->e(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfru;

    move-result-object v0

    iget-boolean v3, v0, Lfru;->b:Z

    .line 1241
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->k(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->getModel()Lcnk;

    move-result-object v0

    .line 1242
    invoke-virtual {v0, v3}, Lcnk;->a(Z)V

    .line 1243
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->k(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Lcnk;)V

    .line 1245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->l(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v4

    if-eqz v3, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setVisibility(I)V

    .line 1246
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->m(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    sget v3, Lezg$l;->dt_group_manage_dept_edit_external_permission_off_intro:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1249
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v0

    iget-object v0, v0, Lfrt;->g:Lfru;

    if-eqz v0, :cond_3

    .line 1250
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v3

    iget-object v3, v3, Lfrt;->g:Lfru;

    iput-object v3, v0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a:Lfru;

    .line 1251
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a:Lfru;

    iget-boolean v0, v0, Lfru;->b:Z

    .line 1252
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->n(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->getModel()Lcnk;

    move-result-object v3

    .line 1253
    invoke-virtual {v3, v0}, Lcnk;->a(Z)V

    .line 1254
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->n(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Lcnk;)V

    .line 1256
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->o(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v3

    if-eqz v0, :cond_8

    :goto_4
    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setVisibility(I)V

    .line 1257
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->p(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    sget v2, Lezg$l;->dt_group_manage_dept_edit_internal_permission_off_intro:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_3
    return-void

    .line 1228
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->h(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v0

    sget v3, Lezg$l;->org_enterprise_group_uncreated:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHint(I)V

    .line 1229
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->i(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1235
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 1245
    goto/16 :goto_2

    .line 1246
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    sget v3, Lezg$l;->setting_hide_dept_tips:I

    .line 1247
    invoke-virtual {v0, v3}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_8
    move v1, v2

    .line 1256
    goto :goto_4

    .line 1257
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    sget v2, Lezg$l;->setting_see_myself_tips:I

    .line 1258
    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 265
    return-void
.end method
