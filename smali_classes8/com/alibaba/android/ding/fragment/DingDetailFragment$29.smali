.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 1313
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 1314
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->P(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layd$a;

    .line 1315
    .local v0, "item":Layd$a;
    if-eqz v0, :cond_0

    .line 2072
    iget v1, v0, Layd$a;->a:I

    .line 1316
    packed-switch v1, :pswitch_data_0

    .line 1398
    .end local v0    # "item":Layd$a;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->S(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1399
    return-void

    .line 2298
    .restart local v0    # "item":Layd$a;
    :pswitch_0
    const-string/jumbo v1, "ding_detail_more_report"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    .line 1319
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->DING:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    .line 1320
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 1321
    invoke-static {v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 1322
    invoke-static {v4}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 2705
    if-eqz v1, :cond_0

    .line 2708
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    .line 2709
    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1326
    :pswitch_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 3310
    const-string/jumbo v1, "ding_detail_collection_click"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1330
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v3

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29$1;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 1348
    invoke-virtual {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 1330
    invoke-static {v1, v4, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v2, v3, v1}, Lbjr;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V

    .line 1349
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    invoke-static {v1}, Lbkh;->N(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    .line 3414
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3415
    const-string/jumbo v3, "repeat"

    if-eqz v1, :cond_1

    const-string/jumbo v1, "1"

    :goto_1
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3416
    const-string/jumbo v1, "ding_detail_more_delete"

    invoke-static {v1, v2}, Lbjz;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 3415
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_1

    .line 1352
    :pswitch_3
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    invoke-static {v1}, Lbkh;->N(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    .line 4292
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4293
    const-string/jumbo v3, "repeat"

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    :goto_2
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4294
    const-string/jumbo v1, "ding_detail_meeting_more_edit"

    invoke-static {v1, v2}, Lbjz;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1353
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lbaf$a;

    move-result-object v1

    invoke-interface {v1}, Lbaf$a;->f()V

    goto/16 :goto_0

    .line 4293
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_2

    .line 5288
    :pswitch_4
    const-string/jumbo v1, "ding_detail_meeting_more_cancel"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    .line 1357
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v3

    .line 5313
    if-eqz v2, :cond_0

    .line 5317
    if-eqz v3, :cond_0

    invoke-static {v3}, Lbkh;->v(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5321
    invoke-static {}, Lbju;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v3}, Lbkh;->N(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v3}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5322
    new-instance v1, Lbkl$2;

    invoke-direct {v1, v2, v3}, Lbkl$2;-><init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-static {v2, v1}, Lbko;->a(Landroid/content/Context;Lbko$a;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 5333
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 5340
    :cond_3
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Laxp$g;->ding_dialog_ding_cancel_tips:I

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 5342
    sget v1, Laxp$f;->et_input:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 5343
    sget v5, Laxp$i;->dt_ding_cancel_conference_edit_tips:I

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 5344
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v5, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5345
    sget v6, Laxp$i;->dt_ding_cancel_conference_tips:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 5346
    invoke-virtual {v6, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v6, 0x0

    .line 5347
    invoke-virtual {v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v6, Laxp$i;->dt_conference_cancel:I

    new-instance v7, Lbkl$4;

    invoke-direct {v7, v2, v1, v3}, Lbkl$4;-><init>(Landroid/app/Activity;Landroid/widget/EditText;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 5348
    invoke-virtual {v4, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Laxp$i;->dt_conference_not_cancel:I

    new-instance v6, Lbkl$3;

    invoke-direct {v6, v2, v1}, Lbkl$3;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 5354
    invoke-virtual {v3, v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5360
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 5362
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lbkl$5;

    invoke-direct {v4, v1, v2}, Lbkl$5;-><init>(Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1360
    :pswitch_5
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->s(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbjv;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1363
    :pswitch_6
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Q(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 5420
    const-string/jumbo v1, "ding_detail_resume_click"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6280
    :pswitch_7
    const-string/jumbo v1, "ding_detail_meeting_more_changeaccepten"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    .line 1368
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    invoke-static {v1, v2}, Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto/16 :goto_0

    .line 6284
    :pswitch_8
    const-string/jumbo v1, "ding_detail_meeting_more_changedecline"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    .line 1372
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_refuse_conference_tips:I

    invoke-static {v1, v2, v3, v5}, Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;ILbkl$a;)V

    goto/16 :goto_0

    .line 1375
    :pswitch_9
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lbaf$a;

    move-result-object v1

    invoke-interface {v1}, Lbaf$a;->j()V

    .line 6398
    const-string/jumbo v1, "ding_detail_task_more_edit"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1379
    :pswitch_a
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->R(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    goto/16 :goto_0

    .line 1382
    :pswitch_b
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lbaf$a;

    move-result-object v1

    invoke-interface {v1}, Lbaf$a;->k()V

    goto/16 :goto_0

    .line 1385
    :pswitch_c
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lbaf$a;

    move-result-object v1

    invoke-interface {v1}, Lbaf$a;->l()V

    goto/16 :goto_0

    .line 1388
    :pswitch_d
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lbaf$a;

    move-result-object v1

    invoke-interface {v1}, Lbaf$a;->m()V

    goto/16 :goto_0

    .line 1391
    :pswitch_e
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$29;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lbaf$a;

    move-result-object v1

    invoke-interface {v1}, Lbaf$a;->n()V

    goto/16 :goto_0

    .line 1316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
