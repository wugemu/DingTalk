.class public final Lfik;
.super Lfif;
.source "MultipleEmployeeViewHolder.java"


# instance fields
.field k:Landroid/widget/CheckBox;

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lfif;-><init>(Landroid/app/Activity;)V

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lfif;->a(Landroid/view/View;)V

    .line 53
    sget v0, Lezg$h;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfik;->k:Landroid/widget/CheckBox;

    .line 54
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 4
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 104
    iget-boolean v2, p0, Lfik;->l:Z

    if-eqz v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v2, p0, Lfik;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1109
    iget-object v3, p0, Lfik;->i:Lfhx;

    if-eqz v3, :cond_0

    .line 1110
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-static {v3}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 1111
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v3}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 1112
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v3}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 1113
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v3}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 1114
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    invoke-static {v3}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    .line 1116
    iget-object v3, p0, Lfik;->k:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1117
    iget-object v3, p0, Lfik;->i:Lfhx;

    invoke-interface {v3, v2, v0}, Lfhx;->a(Ljava/lang/Object;Z)Z

    move-result v2

    .line 1118
    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Lfik;->c(Z)V

    move v0, v2

    .line 1123
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Lfik;->b(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1118
    goto :goto_1

    .line 1121
    :cond_4
    iget-object v3, p0, Lfik;->i:Lfhx;

    invoke-interface {v3, v2}, Lfhx;->a(Ljava/lang/Object;)Z

    move-result v2

    .line 1122
    invoke-virtual {p0, v2}, Lfik;->c(Z)V

    .line 1123
    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_2
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V
    .locals 4
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p2, "position"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1, p2, p3}, Lfif;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V

    .line 59
    iget-object v1, p0, Lfik;->i:Lfhx;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lfik;->i:Lfhx;

    iget-object v2, p0, Lfik;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v1, v2}, Lfhx;->c(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lfik;->m:Z

    .line 61
    iget-object v1, p0, Lfik;->i:Lfhx;

    iget-object v2, p0, Lfik;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v1, v2}, Lfhx;->b(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lfik;->l:Z

    .line 64
    :cond_0
    iget-object v1, p0, Lfik;->k:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 66
    const/4 v0, 0x1

    .line 67
    .local v0, "selectPermission":Z
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableSelectReason:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    const/4 v0, 0x0

    .line 70
    :cond_1
    iget-boolean v1, p0, Lfik;->l:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_3

    .line 71
    :cond_2
    iget-object v1, p0, Lfik;->k:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 72
    iget-object v1, p0, Lfik;->k:Landroid/widget/CheckBox;

    sget v2, Lezg$g;->icon_checkbox_unable:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 73
    iget-object v1, p0, Lfik;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lfik;->e:Landroid/app/Activity;

    sget v3, Lezg$e;->text_color_black:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    :goto_0
    return-void

    .line 75
    :cond_3
    iget-object v1, p0, Lfik;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lfik;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->text_color_black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v1, p0, Lfik;->k:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 77
    iget-boolean v1, p0, Lfik;->m:Z

    invoke-virtual {p0, v1}, Lfik;->c(Z)V

    .line 78
    iget-object v1, p0, Lfik;->k:Landroid/widget/CheckBox;

    new-instance v2, Lfik$1;

    invoke-direct {v2, p0}, Lfik$1;-><init>(Lfik;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lezg$j;->item_new_contact:I

    return v0
.end method

.method c(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lfik;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lfik;->k:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lfik;->k:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0
.end method
