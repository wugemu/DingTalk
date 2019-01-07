.class public final Lfkh;
.super Lfju;
.source "SingleEmployeeViewHolder.java"


# instance fields
.field private n:Landroid/view/View;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lfju;-><init>(Landroid/app/Activity;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfkh;->o:Z

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lfju;->a(Landroid/view/View;)V

    .line 51
    sget v0, Lezg$h;->v_mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfkh;->n:Landroid/view/View;

    .line 52
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V
    .locals 8
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p2, "position"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0, p1, p2, p3}, Lfju;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V

    .line 57
    iget-object v1, p0, Lfkh;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v3, p0, Lfkh;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lfkh;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lfkh;->o:Z

    .line 58
    const/4 v0, 0x1

    .line 59
    .local v0, "selectPermission":Z
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableSelectReason:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    const/4 v0, 0x0

    .line 62
    :cond_1
    iget-boolean v1, p0, Lfkh;->o:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_4

    .line 63
    :cond_2
    iget-object v1, p0, Lfkh;->n:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :goto_1
    return-void

    .end local v0    # "selectPermission":Z
    :cond_3
    move v1, v2

    .line 57
    goto :goto_0

    .line 65
    .restart local v0    # "selectPermission":Z
    :cond_4
    iget-object v1, p0, Lfkh;->n:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final synthetic a(Ljava/lang/Object;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 33
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1071
    iget-boolean v0, p0, Lfkh;->o:Z

    if-nez v0, :cond_0

    .line 1074
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableSelectReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1076
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableSelectReason:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    iget-object v0, p0, Lfkh;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lfkh;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0}, Lfkh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 1079
    iget-object v0, p0, Lfkh;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v1, p0, Lfkh;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->onSingleChoose(Ljava/lang/Object;)Z

    .line 1080
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0, v1}, Lfbn;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-virtual {p0, p1, p2, p3}, Lfkh;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lezg$j;->item_single_employee:I

    return v0
.end method
