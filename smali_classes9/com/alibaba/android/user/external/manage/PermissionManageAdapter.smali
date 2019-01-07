.class public final Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;
.super Landroid/widget/BaseAdapter;
.source "PermissionManageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;,
        Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;,
        Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;,
        Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$b;,
        Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;,
        Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;",
            ">;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a:Landroid/app/Activity;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(IILandroid/view/View;Landroid/view/ViewGroup;)Lcre;
    .locals 1
    .param p1, "res"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a:Landroid/app/Activity;

    invoke-static {v0, p3, p4, p1, p2}, Lcre;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .prologue
    const/4 v4, 0x1

    .line 43
    .line 8249
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8250
    sget v1, Lezg$l;->dt_external_contact_permission_delete_confirm:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$5;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$5;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;)V

    .line 8251
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$4;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;)V

    .line 8257
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8263
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 8264
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 144
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;->a()I

    move-result v0

    return v0
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
    const/4 v2, 0x0

    .line 149
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;

    .line 150
    .local v0, "item":Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 151
    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;->a()I

    move-result v1

    sget-object v3, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->Contact:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    invoke-virtual {v3}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 152
    check-cast v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;

    .line 1190
    .end local v0    # "item":Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;
    sget v1, Lezg$j;->layout_external_contact_permission_contact_item:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a(IILandroid/view/View;Landroid/view/ViewGroup;)Lcre;

    move-result-object v3

    .line 1193
    sget v1, Lezg$h;->avatar_cell:I

    invoke-virtual {v3, v1}, Lcre;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1332
    iget-object v4, v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;->b:Ljava/lang/String;

    .line 1340
    iget-object v5, v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;->c:Ljava/lang/String;

    .line 1194
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    sget v1, Lezg$h;->tv_contact_name:I

    invoke-virtual {v3, v1}, Lcre;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2332
    iget-object v4, v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;->b:Ljava/lang/String;

    .line 1195
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    sget v1, Lezg$h;->ll_contact_item:I

    invoke-virtual {v3, v1}, Lcre;->a(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$1;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2348
    iget-boolean v1, v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;->a:Z

    .line 1205
    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->c:Z

    if-eqz v1, :cond_5

    .line 1206
    sget v1, Lezg$h;->ll_contact_item:I

    invoke-virtual {v3, v1}, Lcre;->a(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1207
    new-instance v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$2;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;)V

    .line 1217
    :goto_0
    sget v2, Lezg$h;->ll_contact_item:I

    invoke-virtual {v3, v2}, Lcre;->a(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3055
    iget-object v1, v3, Lcre;->a:Landroid/view/View;

    .line 160
    :goto_1
    return-object v1

    .line 154
    .restart local v0    # "item":Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;->a()I

    move-result v1

    sget-object v3, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->Department:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    invoke-virtual {v3}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 155
    check-cast v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$b;

    .line 3223
    .end local v0    # "item":Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;
    sget v1, Lezg$j;->layout_external_contact_permission_dept_item:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a(IILandroid/view/View;Landroid/view/ViewGroup;)Lcre;

    move-result-object v3

    .line 3303
    iget-object v4, v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$b;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 3226
    sget v1, Lezg$h;->tv_dept_mem_count:I

    invoke-virtual {v3, v1}, Lcre;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$l;->dt_external_contact_permission_mem_count:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    .line 3227
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3226
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3229
    sget v1, Lezg$h;->tv_dept_name:I

    invoke-virtual {v3, v1}, Lcre;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3232
    iget-boolean v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->c:Z

    if-eqz v1, :cond_1

    .line 3233
    sget v1, Lezg$h;->rl_dept_layout:I

    invoke-virtual {v3, v1}, Lcre;->a(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3234
    new-instance v2, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$3;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;)V

    .line 3243
    :cond_1
    sget v1, Lezg$h;->rl_dept_layout:I

    invoke-virtual {v3, v1}, Lcre;->a(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4055
    iget-object v1, v3, Lcre;->a:Landroid/view/View;

    goto :goto_1

    .line 157
    .restart local v0    # "item":Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;->a()I

    move-result v1

    sget-object v2, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->Divider:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 158
    check-cast v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;

    .line 4166
    .end local v0    # "item":Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;
    sget v1, Lezg$j;->layout_external_contact_permission_list_divider:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a(IILandroid/view/View;Landroid/view/ViewGroup;)Lcre;

    move-result-object v2

    .line 4370
    iget-object v1, v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;->c:Ljava/lang/String;

    .line 4168
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4169
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a:Landroid/app/Activity;

    const/high16 v5, 0x41300000    # 11.0f

    .line 4170
    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 5055
    iget-object v3, v2, Lcre;->a:Landroid/view/View;

    .line 4171
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4173
    :cond_3
    sget v1, Lezg$h;->tv_external_contact_perm_divider_text:I

    invoke-virtual {v2, v1}, Lcre;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5370
    iget-object v3, v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;->c:Ljava/lang/String;

    .line 4173
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6055
    iget-object v1, v2, Lcre;->a:Landroid/view/View;

    goto/16 :goto_1

    .line 160
    .restart local v0    # "item":Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;
    :cond_4
    check-cast v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;

    .line 6180
    .end local v0    # "item":Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$e;
    sget v1, Lezg$j;->layout_external_contact_permission_action:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a(IILandroid/view/View;Landroid/view/ViewGroup;)Lcre;

    move-result-object v2

    .line 6182
    sget v1, Lezg$h;->view_action:I

    invoke-virtual {v2, v1}, Lcre;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6370
    iget-object v3, v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;->c:Ljava/lang/String;

    .line 6182
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7055
    iget-object v1, v2, Lcre;->a:Landroid/view/View;

    .line 7396
    new-instance v3, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a$1;

    invoke-direct {v3, v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a$1;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;)V

    .line 6184
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8055
    iget-object v1, v2, Lcre;->a:Landroid/view/View;

    goto/16 :goto_1

    :cond_5
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->values()[Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
