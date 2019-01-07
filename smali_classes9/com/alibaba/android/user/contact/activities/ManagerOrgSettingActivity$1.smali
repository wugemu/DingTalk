.class final Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$1;
.super Ljava/lang/Object;
.source "ManagerOrgSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 22
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    move-object/from16 v11, p1

    check-cast v11, Landroid/widget/ToggleButton;

    .line 217
    .local v11, "clickToggle":Landroid/widget/ToggleButton;
    invoke-virtual {v11}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v13

    .line 218
    .local v13, "isChecked":Z
    if-nez v13, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v11, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->showLoadingDialog()V

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v4

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_2

    move v12, v13

    .line 221
    .local v12, "inviteSwitch":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->b(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v4

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_3

    move v15, v13

    .line 222
    .local v15, "nameSearchChecked":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->c(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v4

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_4

    move/from16 v16, v13

    .line 223
    .local v16, "orgNumberChecked":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v4

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_5

    move v14, v13

    .line 224
    .local v14, "mJoinLinkQRChecked":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->f(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->e(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)J

    move-result-wide v18

    .line 1061
    invoke-virtual {v10}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1062
    const-class v4, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 1063
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-wide/16 v20, -0x1

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->c(JJ)Lcmg;

    move-result-object v10

    invoke-interface/range {v4 .. v10}, Lcom/alibaba/android/user/idl/services/ContactIService;->setOrgInviteSwitch(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Liyv;)V

    .line 225
    :cond_0
    return-void

    .line 218
    .end local v12    # "inviteSwitch":Z
    .end local v14    # "mJoinLinkQRChecked":Z
    .end local v15    # "nameSearchChecked":Z
    .end local v16    # "orgNumberChecked":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 220
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v12

    goto :goto_1

    .line 221
    .restart local v12    # "inviteSwitch":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->b(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v15

    goto :goto_2

    .line 222
    .restart local v15    # "nameSearchChecked":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->c(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v16

    goto :goto_3

    .line 223
    .restart local v16    # "orgNumberChecked":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v14

    goto :goto_4
.end method
