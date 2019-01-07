.class final Lgfo$2;
.super Ljava/lang/Object;
.source "PermissionSettingListViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lgnu;

.field final synthetic d:Lgfo;


# direct methods
.method constructor <init>(Lgfo;Ljava/util/List;Landroid/content/Context;Lgnu;)V
    .locals 0
    .param p1, "this$0"    # Lgfo;

    .prologue
    .line 231
    iput-object p1, p0, Lgfo$2;->d:Lgfo;

    iput-object p2, p0, Lgfo$2;->a:Ljava/util/List;

    iput-object p3, p0, Lgfo$2;->b:Landroid/content/Context;

    iput-object p4, p0, Lgfo$2;->c:Lgnu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 236
    iget-object v2, p0, Lgfo$2;->d:Lgfo;

    .line 1070
    iget-object v2, v2, Lgfo;->k:Lgfn$a;

    .line 236
    if-nez v2, :cond_1

    .line 2335
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v2, p0, Lgfo$2;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p2, :cond_0

    .line 244
    iget-object v2, p0, Lgfo$2;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    .line 245
    .local v1, "item":Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;
    if-eqz v1, :cond_0

    .line 2039
    iget-wide v2, v1, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->a:J

    .line 249
    long-to-int v0, v2

    .line 250
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v2, p0, Lgfo$2;->d:Lgfo;

    iget-object v3, p0, Lgfo$2;->b:Landroid/content/Context;

    const-wide/16 v4, 0x3e9

    iget-object v6, p0, Lgfo$2;->c:Lgnu;

    invoke-static {v2, v3, v4, v5, v6}, Lgfo;->a(Lgfo;Landroid/content/Context;JLgnu;)V

    goto :goto_0

    .line 255
    :pswitch_2
    iget-object v2, p0, Lgfo$2;->d:Lgfo;

    iget-object v3, p0, Lgfo$2;->b:Landroid/content/Context;

    const-wide/16 v4, 0x3ea

    iget-object v6, p0, Lgfo$2;->c:Lgnu;

    invoke-static {v2, v3, v4, v5, v6}, Lgfo;->a(Lgfo;Landroid/content/Context;JLgnu;)V

    goto :goto_0

    .line 258
    :pswitch_3
    iget-object v2, p0, Lgfo$2;->d:Lgfo;

    iget-object v3, p0, Lgfo$2;->b:Landroid/content/Context;

    const-wide/16 v4, 0x3eb

    iget-object v6, p0, Lgfo$2;->c:Lgnu;

    invoke-static {v2, v3, v4, v5, v6}, Lgfo;->a(Lgfo;Landroid/content/Context;JLgnu;)V

    goto :goto_0

    .line 261
    :pswitch_4
    iget-object v3, p0, Lgfo$2;->d:Lgfo;

    iget-object v4, p0, Lgfo$2;->b:Landroid/content/Context;

    iget-object v5, p0, Lgfo$2;->c:Lgnu;

    .line 2322
    if-eqz v5, :cond_0

    .line 3195
    iget-object v2, v5, Lgnu;->a:Ljava/lang/String;

    .line 2322
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3235
    iget-boolean v2, v5, Lgnu;->f:Z

    .line 2327
    if-eqz v2, :cond_2

    .line 2328
    sget v2, Lfzs$h;->dt_space_permission_delete_invalid_desc:I

    invoke-static {v2}, Lgfo;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lgfo;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2332
    :cond_2
    iget-object v2, v3, Lgfo;->k:Lgfn$a;

    .line 4195
    iget-object v6, v5, Lgnu;->a:Ljava/lang/String;

    .line 2332
    invoke-interface {v2, v6}, Lgfn$a;->b(Ljava/lang/String;)Lgnu;

    move-result-object v2

    .line 2333
    if-eqz v2, :cond_3

    .line 4235
    iget-boolean v2, v2, Lgnu;->f:Z

    .line 2333
    if-eqz v2, :cond_3

    .line 2335
    sget v2, Lfzs$h;->dt_space_permission_delete_invalid_desc:I

    invoke-static {v2}, Lgfo;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lgfo;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 5203
    :cond_3
    iget-object v2, v5, Lgnu;->b:Ljava/lang/String;

    .line 5357
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v2, ""

    .line 5358
    :cond_4
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v6, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5359
    sget v4, Lfzs$h;->dt_space_delete_permission_alert_title_at:I

    invoke-static {v4}, Lgfo;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5360
    sget v2, Lfzs$h;->sure:I

    new-instance v4, Lgfo$4;

    invoke-direct {v4, v3, v5, v6}, Lgfo$4;-><init>(Lgfo;Lgnu;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v6, v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5367
    sget v2, Lfzs$h;->cancel:I

    new-instance v4, Lgfo$5;

    invoke-direct {v4, v3, v6}, Lgfo$5;-><init>(Lgfo;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v6, v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5373
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
