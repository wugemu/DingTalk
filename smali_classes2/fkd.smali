.class public final Lfkd;
.super Lfju;
.source "MultipleEmployeeViewHolder.java"


# instance fields
.field n:Landroid/widget/CheckBox;

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lfju;-><init>(Landroid/app/Activity;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lfkd;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfkd;

    .prologue
    .line 34
    iget-object v0, p0, Lfkd;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic b(Lfkd;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfkd;

    .prologue
    .line 34
    iget-object v0, p0, Lfkd;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic c(Lfkd;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfkd;

    .prologue
    .line 34
    iget-object v0, p0, Lfkd;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lfju;->a(Landroid/view/View;)V

    .line 53
    sget v0, Lezg$h;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfkd;->n:Landroid/widget/CheckBox;

    .line 54
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-super {p0, p1, p2, p3}, Lfju;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V

    .line 59
    iget-object v1, p0, Lfkd;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "need init MultipleEmployeeViewHolder choose control"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_0
    iget-object v1, p0, Lfkd;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lfkd;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v4, p0, Lfkd;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v1, v4}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isHasSelected(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lfkd;->q:Z

    .line 64
    iget-object v1, p0, Lfkd;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v4, p0, Lfkd;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v1, v4}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lfkd;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lfkd;->o:Z

    .line 65
    iget-object v1, p0, Lfkd;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v4, p0, Lfkd;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v1, v4}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lfkd;->p:Z

    .line 68
    :cond_2
    iget-object v1, p0, Lfkd;->n:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 70
    const/4 v0, 0x1

    .line 71
    .local v0, "selectPermission":Z
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableSelectReason:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    const/4 v0, 0x0

    .line 74
    :cond_3
    iget-boolean v1, p0, Lfkd;->o:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_6

    .line 75
    :cond_4
    iget-object v1, p0, Lfkd;->n:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 76
    iget-object v1, p0, Lfkd;->n:Landroid/widget/CheckBox;

    sget v2, Lezg$g;->icon_checkbox_unable:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 77
    iget-object v1, p0, Lfkd;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lfkd;->a:Landroid/app/Activity;

    sget v3, Lezg$e;->text_color_black:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    :goto_1
    return-void

    .end local v0    # "selectPermission":Z
    :cond_5
    move v1, v2

    .line 64
    goto :goto_0

    .line 78
    .restart local v0    # "selectPermission":Z
    :cond_6
    iget-boolean v1, p0, Lfkd;->p:Z

    if-eqz v1, :cond_7

    .line 79
    iget-object v1, p0, Lfkd;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lfkd;->a:Landroid/app/Activity;

    sget v4, Lezg$e;->text_color_black:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v1, p0, Lfkd;->n:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 81
    iget-object v1, p0, Lfkd;->n:Landroid/widget/CheckBox;

    sget v2, Lezg$g;->icon_checkbox_unable:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_1

    .line 83
    :cond_7
    iget-object v1, p0, Lfkd;->n:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 84
    iget-object v1, p0, Lfkd;->n:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lfkd;->q:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 85
    iget-boolean v1, p0, Lfkd;->q:Z

    if-eqz v1, :cond_8

    .line 86
    iget-object v1, p0, Lfkd;->n:Landroid/widget/CheckBox;

    sget v2, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 90
    :goto_2
    iget-object v1, p0, Lfkd;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lfkd;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->text_color_black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v1, p0, Lfkd;->n:Landroid/widget/CheckBox;

    new-instance v2, Lfkd$1;

    invoke-direct {v2, p0, p1}, Lfkd$1;-><init>(Lfkd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 88
    :cond_8
    iget-object v1, p0, Lfkd;->n:Landroid/widget/CheckBox;

    sget v2, Lezg$g;->checkbox_normal:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public final synthetic a(Ljava/lang/Object;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1113
    iget-boolean v0, p0, Lfkd;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lfkd;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    iget-object v0, p0, Lfkd;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1121
    iget-object v1, p0, Lfkd;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1122
    invoke-static {v0}, Lfkd;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 1123
    iget-object v1, p0, Lfkd;->n:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1124
    iget-object v1, p0, Lfkd;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    .line 1125
    iget-object v0, p0, Lfkd;->n:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1126
    iget-object v0, p0, Lfkd;->n:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 1115
    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    .line 1116
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0, v1}, Lfbn;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_0

    .line 1128
    :cond_3
    iget-object v1, p0, Lfkd;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    .line 1129
    iget-object v0, p0, Lfkd;->n:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1130
    iget-object v0, p0, Lfkd;->n:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-virtual {p0, p1, p2, p3}, Lfkd;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lezg$j;->item_new_contact:I

    return v0
.end method
