.class final Lgfo$1;
.super Ljava/lang/Object;
.source "PermissionSettingListViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lgnu;

.field final synthetic c:Lgfo;


# direct methods
.method constructor <init>(Lgfo;Landroid/content/Context;Lgnu;)V
    .locals 0
    .param p1, "this$0"    # Lgfo;

    .prologue
    .line 151
    iput-object p1, p0, Lgfo$1;->c:Lgfo;

    iput-object p2, p0, Lgfo$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lgfo$1;->b:Lgnu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 154
    iget-object v0, p0, Lgfo$1;->c:Lgfo;

    .line 1070
    iget-boolean v0, v0, Lgfo;->g:Z

    .line 154
    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lgfo$1;->c:Lgfo;

    iget-object v1, p0, Lgfo$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lgfo$1;->b:Lgnu;

    .line 2165
    if-eqz v1, :cond_0

    .line 2170
    iget-boolean v3, v0, Lgfo;->g:Z

    if-eqz v3, :cond_0

    .line 2174
    iget-object v3, v0, Lgfo;->j:Landroid/support/v7/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lgfo;->j:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2178
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3235
    iget-boolean v4, v2, Lgnu;->f:Z

    .line 2183
    if-eqz v4, :cond_3

    .line 4235
    iget-boolean v4, v2, Lgnu;->f:Z

    .line 2183
    if-eqz v4, :cond_4

    .line 4283
    iget v4, v2, Lgnu;->k:I

    .line 2183
    if-nez v4, :cond_4

    :cond_3
    iget-boolean v4, v0, Lgfo;->i:Z

    if-eqz v4, :cond_5

    .line 5235
    :cond_4
    iget-boolean v4, v2, Lgnu;->f:Z

    .line 2184
    if-eqz v4, :cond_6

    .line 5283
    iget v4, v2, Lgnu;->k:I

    .line 2184
    if-ne v4, v8, :cond_6

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lgnu;->a(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v2}, Lgfo;->a(Lgnu;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2185
    :cond_5
    new-instance v4, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    invoke-direct {v4, v1}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;-><init>(Landroid/content/Context;)V

    const-wide/16 v6, 0x4

    .line 6044
    iput-wide v6, v4, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->a:J

    .line 2186
    new-instance v5, Lecn;

    invoke-direct {v5}, Lecn;-><init>()V

    .line 6151
    iput-object v5, v4, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->g:Lecm;

    .line 2187
    sget v5, Lfzs$h;->icon_setting:I

    .line 2188
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->a(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v4

    sget v5, Lfzs$h;->dt_space_permission_type_manage_name:I

    .line 2189
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v4

    sget v5, Lfzs$h;->dt_space_permission_type_manage_desc:I

    .line 2190
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->c(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v4

    .line 2185
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6235
    :cond_6
    iget-boolean v4, v2, Lgnu;->f:Z

    .line 2195
    if-eqz v4, :cond_7

    .line 7235
    iget-boolean v4, v2, Lgnu;->f:Z

    .line 2195
    if-eqz v4, :cond_8

    .line 7283
    iget v4, v2, Lgnu;->k:I

    .line 2195
    if-nez v4, :cond_8

    :cond_7
    iget-boolean v4, v0, Lgfo;->f:Z

    if-eqz v4, :cond_9

    .line 8235
    :cond_8
    iget-boolean v4, v2, Lgnu;->f:Z

    .line 2196
    if-eqz v4, :cond_a

    .line 8283
    iget v4, v2, Lgnu;->k:I

    .line 2196
    if-ne v4, v8, :cond_a

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lgnu;->a(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2197
    :cond_9
    new-instance v4, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    invoke-direct {v4, v1}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;-><init>(Landroid/content/Context;)V

    const-wide/16 v6, 0x2

    .line 9044
    iput-wide v6, v4, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->a:J

    .line 2198
    new-instance v5, Lecn;

    invoke-direct {v5}, Lecn;-><init>()V

    .line 9151
    iput-object v5, v4, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->g:Lecm;

    .line 2199
    sget v5, Lfzs$h;->icon_compile:I

    .line 2200
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->a(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v4

    sget v5, Lfzs$h;->dt_space_permission_type_edit_name:I

    .line 2201
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v4

    sget v5, Lfzs$h;->dt_space_permission_type_edit_desc:I

    .line 2202
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->c(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v4

    .line 2197
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9235
    :cond_a
    iget-boolean v4, v2, Lgnu;->f:Z

    .line 2207
    if-eqz v4, :cond_b

    .line 10235
    iget-boolean v4, v2, Lgnu;->f:Z

    .line 2207
    if-eqz v4, :cond_c

    .line 10283
    iget v4, v2, Lgnu;->k:I

    .line 2207
    if-nez v4, :cond_c

    :cond_b
    iget-boolean v4, v0, Lgfo;->f:Z

    if-eqz v4, :cond_d

    .line 11235
    :cond_c
    iget-boolean v4, v2, Lgnu;->f:Z

    .line 2208
    if-eqz v4, :cond_e

    .line 11283
    iget v4, v2, Lgnu;->k:I

    .line 2208
    if-ne v4, v8, :cond_e

    invoke-virtual {v2, v8}, Lgnu;->a(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2209
    :cond_d
    new-instance v4, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    invoke-direct {v4, v1}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;-><init>(Landroid/content/Context;)V

    const-wide/16 v6, 0x1

    .line 12044
    iput-wide v6, v4, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->a:J

    .line 2210
    new-instance v5, Lecn;

    invoke-direct {v5}, Lecn;-><init>()V

    .line 12151
    iput-object v5, v4, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->g:Lecm;

    .line 2211
    sget v5, Lfzs$h;->icon_Y_eye:I

    .line 2212
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->a(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v4

    sget v5, Lfzs$h;->dt_space_permission_type_browse_name:I

    .line 2213
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v4

    sget v5, Lfzs$h;->dt_space_permission_type_browse_desc:I

    .line 2214
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->c(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v4

    .line 2209
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12235
    :cond_e
    iget-boolean v4, v2, Lgnu;->f:Z

    .line 2219
    if-eqz v4, :cond_10

    .line 13235
    iget-boolean v4, v2, Lgnu;->f:Z

    .line 2219
    if-eqz v4, :cond_f

    .line 13283
    iget v4, v2, Lgnu;->k:I

    .line 2219
    if-eqz v4, :cond_10

    .line 14235
    :cond_f
    iget-boolean v4, v2, Lgnu;->f:Z

    .line 2220
    if-eqz v4, :cond_11

    .line 14283
    iget v4, v2, Lgnu;->k:I

    .line 2220
    if-ne v4, v8, :cond_11

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lgnu;->a(I)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v0, v2}, Lgfo;->a(Lgnu;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 2221
    :cond_10
    new-instance v4, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    invoke-direct {v4, v1}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;-><init>(Landroid/content/Context;)V

    const-wide/16 v6, 0x8

    .line 15044
    iput-wide v6, v4, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->a:J

    .line 2222
    new-instance v5, Leco;

    invoke-direct {v5}, Leco;-><init>()V

    .line 15151
    iput-object v5, v4, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->g:Lecm;

    .line 2223
    sget v5, Lfzs$h;->icon_delete:I

    .line 2224
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->a(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v4

    sget v5, Lfzs$h;->space_file_delete:I

    .line 2225
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v4

    .line 2221
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2228
    :cond_11
    new-instance v4, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;

    invoke-direct {v4, v1}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 2229
    sget v5, Lfzs$h;->dt_space_set_permission_actionsheet_title_at:I

    invoke-static {v5}, Lgfo;->a(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v0, Lgfo;->b:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2230
    new-instance v5, Lecl;

    invoke-direct {v5, v1, v3}, Lecl;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v6, Lgfo$2;

    invoke-direct {v6, v0, v3, v1, v2}, Lgfo$2;-><init>(Lgfo;Ljava/util/List;Landroid/content/Context;Lgnu;)V

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2266
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lgfo;->j:Landroid/support/v7/app/AlertDialog;

    .line 2267
    iget-object v0, v0, Lgfo;->j:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
