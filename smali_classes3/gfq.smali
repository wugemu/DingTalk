.class public final Lgfq;
.super Ljava/lang/Object;
.source "PermissionSettingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lgfn$a;Lgfl;Z)Landroid/support/v7/app/AlertDialog;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "presenter"    # Lgfn$a;
    .param p2, "addMemberScope"    # Lgfl;
    .param p3, "showDept"    # Z

    .prologue
    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v2, "itemBuilders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;>;"
    if-eqz p3, :cond_0

    .line 228
    new-instance v3, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lecn;

    invoke-direct {v4}, Lecn;-><init>()V

    .line 1151
    iput-object v4, v3, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->g:Lecm;

    .line 229
    sget v4, Lfzs$h;->dt_add_participators_dept:I

    .line 230
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v3

    sget v4, Lfzs$h;->dt_add_member_dept_desc:I

    .line 231
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->c(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v3

    .line 228
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_0
    new-instance v3, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lecn;

    invoke-direct {v4}, Lecn;-><init>()V

    .line 2151
    iput-object v4, v3, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->g:Lecm;

    .line 235
    sget v4, Lfzs$h;->dt_add_participators_group:I

    .line 236
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v3

    sget v4, Lfzs$h;->dt_add_member_group_desc:I

    .line 237
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->c(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v3

    .line 234
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v3, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lecn;

    invoke-direct {v4}, Lecn;-><init>()V

    .line 3151
    iput-object v4, v3, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->g:Lecm;

    .line 240
    sget v4, Lfzs$h;->dt_cspace_onlindoc_invite_member:I

    .line 241
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v3

    sget v4, Lfzs$h;->dt_add_member_user_desc:I

    .line 242
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->c(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v3

    .line 239
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, "builder":Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;
    new-instance v3, Lecl;

    invoke-direct {v3, p0, v2}, Lecl;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v4, Lgfq$1;

    invoke-direct {v4, p1, p3, p2}, Lgfq$1;-><init>(Lgfn$a;ZLgfl;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 272
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 274
    .local v1, "chooseMemberDialog":Landroid/support/v7/app/AlertDialog;
    return-object v1
.end method

.method public static a(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)Z
    .locals 3
    .param p0, "args"    # Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    .prologue
    const/4 v0, 0x0

    .line 279
    if-nez p0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->contentType:Ljava/lang/String;

    const-string/jumbo v2, "alidoc"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->extension:Ljava/lang/String;

    invoke-static {v1}, Lgpx;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
