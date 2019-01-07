.class final Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;
.super Ljava/lang/Object;
.source "MsgSearchFilterFlatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 338
    instance-of v3, p1, Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 343
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    move-object v2, p1

    .line 347
    check-cast v2, Landroid/widget/TextView;

    .line 348
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "text":Ljava/lang/String;
    sget v3, Lemt$g;->dt_im_search_group_member:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->g(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)V

    goto :goto_0

    .line 352
    :cond_2
    sget v3, Lemt$g;->dt_im_search_filter_date:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 353
    iget-object v5, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    .line 1383
    iget-object v4, v5, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a:Landroid/content/Context;

    .line 1384
    instance-of v3, v4, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v3, v4

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1388
    iget-object v3, v5, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->b:Landroid/support/v7/app/AlertDialog;

    if-eqz v3, :cond_3

    .line 1389
    iget-object v3, v5, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->b:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 1393
    :cond_3
    check-cast v4, Landroid/app/Activity;

    .line 1396
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    sget v8, Lemt$g;->dt_search_time_narrow_one_week:I

    .line 1397
    invoke-virtual {v4, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget v8, Lemt$g;->dt_search_time_narrow_one_month:I

    .line 1398
    invoke-virtual {v4, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget v8, Lemt$g;->dt_search_time_narrow_three_months:I

    .line 1399
    invoke-virtual {v4, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v7, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$4;

    invoke-direct {v7, v5, v4}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$4;-><init>(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;Landroid/app/Activity;)V

    .line 1396
    invoke-virtual {v3, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 1426
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    iput-object v3, v5, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->b:Landroid/support/v7/app/AlertDialog;

    .line 1428
    iget-object v3, v5, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->b:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 354
    :cond_4
    sget v3, Lemt$g;->dt_im_search_filter_at_msg:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    sget v3, Lemt$g;->dt_im_search_filter_pic_and_video:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 356
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 357
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;->a()V

    goto/16 :goto_0

    .line 359
    :cond_5
    sget v3, Lemt$g;->dt_im_search_filter_file:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 360
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 361
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;->b()V

    goto/16 :goto_0

    .line 363
    :cond_6
    sget v3, Lemt$g;->dt_im_search_filter_link:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 364
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 365
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;->c()V

    goto/16 :goto_0

    .line 367
    :cond_7
    sget v3, Lemt$g;->dt_search_narrow_group:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 369
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->i(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)V

    goto/16 :goto_0

    .line 371
    :cond_8
    sget v3, Lemt$g;->dt_search_category_sender:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 373
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->g(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)V

    goto/16 :goto_0

    .line 374
    :cond_9
    sget v3, Lemt$g;->dt_im_search_filter_journal:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 376
    iget-object v3, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$3;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->h(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$a;->d()V

    goto/16 :goto_0
.end method
