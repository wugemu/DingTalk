.class public final Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;
.super Lfxq;
.source "SelectedContactsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;,
        Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lcom/alibaba/android/user/contact/organization/select/SelectModel;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lfki;

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mode"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->e:I

    .line 56
    iput p2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->e:I

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 39
    .line 1183
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1184
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1185
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1189
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1190
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1192
    :cond_0
    sget v1, Lezg$l;->sure:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1193
    sget v1, Lezg$l;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1194
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 39
    return-void

    .line 1187
    :cond_1
    sget v1, Lezg$l;->dt_org_create_delete_member:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;)Lfki;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->a:Lfki;

    return-object v0
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/organization/select/SelectModel;

    .line 67
    .local v0, "data":Lcom/alibaba/android/user/contact/organization/select/SelectModel;
    iget-object v1, v0, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->orgDeptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->DEPT:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->ordinal()I

    move-result v1

    .line 70
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->USER:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->ordinal()I

    move-result v1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->getItemViewType(I)I

    move-result v3

    .line 76
    .local v3, "type":I
    sget-object v5, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->DEPT:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->ordinal()I

    move-result v2

    .line 77
    .local v2, "nextType":I
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_0

    .line 78
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->getItemViewType(I)I

    move-result v2

    .line 80
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->h:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/organization/select/SelectModel;

    .line 81
    .local v1, "model":Lcom/alibaba/android/user/contact/organization/select/SelectModel;
    const/4 v4, 0x0

    .line 82
    .local v4, "viewHolder":Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;
    sget-object v5, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->USER:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->ordinal()I

    move-result v5

    if-ne v5, v3, :cond_6

    .line 83
    if-nez p2, :cond_2

    .line 84
    new-instance v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;

    .end local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;
    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;-><init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;)V

    .line 85
    .restart local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->i:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lezg$j;->item_select_result:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 86
    sget v5, Lezg$h;->tv_avatar:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 87
    sget v5, Lezg$h;->tv_nick:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->b:Landroid/widget/TextView;

    .line 88
    sget v5, Lezg$h;->icon_remove:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->c:Landroid/view/View;

    .line 89
    sget v5, Lezg$h;->divider_line:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->d:Landroid/view/View;

    .line 90
    sget v5, Lezg$h;->divider_last_line:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->e:Landroid/view/View;

    .line 91
    sget v5, Lezg$h;->v_mask:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->g:Landroid/view/View;

    .line 92
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    :goto_0
    if-eqz v1, :cond_1

    if-nez v4, :cond_3

    :cond_1
    move-object v0, p2

    .line 179
    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "convertView":Landroid/view/View;
    :goto_1
    return-object v0

    .line 94
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;
    check-cast v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;

    .restart local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;
    goto :goto_0

    .line 100
    :cond_3
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v6, v1, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->userObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v7, v1, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->userObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 101
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->b:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->userObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_4
    :goto_2
    iget-boolean v5, v1, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->isClick:Z

    if-nez v5, :cond_b

    .line 132
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->g:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->c:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->c:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 145
    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq p1, v5, :cond_5

    if-eq v2, v3, :cond_d

    .line 146
    :cond_5
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->d:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->e:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :goto_4
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->c:Landroid/view/View;

    new-instance v6, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;

    invoke-direct {v6, p0, p1, v1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;-><init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;ILcom/alibaba/android/user/contact/organization/select/SelectModel;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, p2

    .line 179
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto :goto_1

    .line 104
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_6
    sget-object v5, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->DEPT:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;

    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$Type;->ordinal()I

    move-result v5

    if-ne v3, v5, :cond_4

    .line 105
    if-nez p2, :cond_8

    .line 106
    new-instance v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;

    .end local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;
    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;-><init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;)V

    .line 107
    .restart local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->i:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lezg$j;->item_select_dept_result:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 108
    sget v5, Lezg$h;->divider_dept_employee:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->f:Landroid/view/View;

    .line 109
    sget v5, Lezg$h;->tv_nick:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->b:Landroid/widget/TextView;

    .line 110
    sget v5, Lezg$h;->icon_remove:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->c:Landroid/view/View;

    .line 111
    sget v5, Lezg$h;->divider_line:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->d:Landroid/view/View;

    .line 112
    sget v5, Lezg$h;->divider_last_line:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->e:Landroid/view/View;

    .line 113
    sget v5, Lezg$h;->v_mask:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->g:Landroid/view/View;

    .line 114
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    :goto_5
    if-eqz v1, :cond_7

    if-nez v4, :cond_9

    :cond_7
    move-object v0, p2

    .line 120
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto/16 :goto_1

    .line 116
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;
    check-cast v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;

    .restart local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;
    goto :goto_5

    .line 123
    :cond_9
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->b:Landroid/widget/TextView;

    const-string/jumbo v6, "%1$s (%2$d)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->orgDeptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v1, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->orgDeptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    if-eq v2, v3, :cond_a

    .line 125
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->f:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 127
    :cond_a
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->f:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 135
    :cond_b
    iget v5, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->e:I

    if-nez v5, :cond_c

    .line 136
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->g:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->c:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->c:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_3

    .line 140
    :cond_c
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->g:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->c:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->c:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_3

    .line 149
    :cond_d
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->d:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$a;->e:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x2

    return v0
.end method
