.class public Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "OrgApplyDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/browser/PhotoObject;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcjo$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->s:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 677
    .line 4704
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4705
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4706
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4708
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4709
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4710
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4712
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->k:Landroid/widget/TextView;

    sget v1, Lezg$l;->action_agree:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4713
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->l:Landroid/widget/TextView;

    sget v1, Lezg$l;->shield_the_person:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4714
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->m:Landroid/widget/TextView;

    sget v1, Lezg$l;->reject:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne p1, v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 682
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->k:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_user_org_apply_agreed:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne p1, v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->m:Landroid/widget/TextView;

    sget v1, Lezg$l;->hint_reject:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 693
    :cond_2
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->SHIELD:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne p1, v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->m:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_group_apply_hint_blocked:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private a(J)V
    .locals 5
    .param p1, "uid"    # J

    .prologue
    .line 669
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 674
    :goto_0
    return-void

    .line 672
    :cond_0
    new-instance v0, Lfjl;

    invoke-direct {v0, p0}, Lfjl;-><init>(Landroid/app/Activity;)V

    .line 673
    .local v0, "navigator":Lfjl;
    invoke-virtual {v0, p1, p2}, Lfjl;->a(J)V

    goto :goto_0
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 10
    .param p1, "itemContainerLayout"    # Landroid/widget/LinearLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;>;"
    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 277
    if-nez p1, :cond_0

    .line 345
    :goto_0
    return-void

    .line 280
    :cond_0
    if-nez p2, :cond_1

    .line 281
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    const/4 v4, 0x0

    .local v4, "position":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_b

    .line 287
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;

    .line 288
    .local v0, "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;
    if-eqz v0, :cond_2

    .line 293
    iget v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    .line 3493
    packed-switch v6, :pswitch_data_0

    move v5, v7

    .line 294
    .local v5, "typeLegal":Z
    :goto_2
    if-eqz v5, :cond_2

    .line 298
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v6, -0x1

    const/4 v8, -0x2

    invoke-direct {v2, v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 301
    .local v2, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    .line 3506
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 3507
    const/4 v3, 0x0

    .line 3508
    packed-switch v6, :pswitch_data_1

    .line 302
    .local v3, "newItemView":Landroid/view/View;
    :goto_3
    if-nez v3, :cond_3

    .line 303
    const-string/jumbo v6, "OrgApplyDetailActivity"

    const-string/jumbo v8, "handleItemGroup : unknown error"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    .end local v2    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "newItemView":Landroid/view/View;
    .end local v5    # "typeLegal":Z
    :cond_2
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3496
    :pswitch_0
    const/4 v5, 0x1

    goto :goto_2

    .line 3510
    .restart local v2    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v5    # "typeLegal":Z
    :pswitch_1
    sget v6, Lezg$j;->item_org_apply_inner_text:I

    invoke-virtual {v8, v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    .line 3513
    :pswitch_2
    sget v6, Lezg$j;->item_org_apply_inner_list_image:I

    invoke-virtual {v8, v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    .line 4351
    .restart local v3    # "newItemView":Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->bodyJson:Ljava/lang/String;

    if-nez v6, :cond_5

    :cond_4
    move v1, v7

    .line 307
    .local v1, "loadItemDataSuccess":Z
    :goto_5
    if-nez v1, :cond_7

    .line 308
    const-string/jumbo v6, "OrgApplyDetailActivity"

    const-string/jumbo v8, "handleItemGroup : loadItemData fail"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 4356
    .end local v1    # "loadItemDataSuccess":Z
    :cond_5
    iget v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    packed-switch v6, :pswitch_data_2

    :cond_6
    move v6, v7

    :goto_6
    move v1, v6

    .line 4370
    goto :goto_5

    .line 4358
    :pswitch_3
    invoke-static {v3, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Landroid/view/View;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;)Z

    move-result v6

    goto :goto_6

    .line 4361
    :pswitch_4
    instance-of v6, v3, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_6

    move-object v6, v3

    .line 4362
    check-cast v6, Landroid/widget/LinearLayout;

    .line 4363
    invoke-direct {p0, v6, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Landroid/widget/LinearLayout;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;)Z

    move-result v6

    goto :goto_6

    .line 312
    .restart local v1    # "loadItemDataSuccess":Z
    :cond_7
    iget v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    packed-switch v6, :pswitch_data_3

    .line 333
    if-nez v4, :cond_a

    .line 334
    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 338
    :goto_7
    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 341
    :goto_8
    invoke-virtual {p1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 314
    :pswitch_5
    if-nez v4, :cond_8

    .line 315
    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 319
    :goto_9
    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_8

    .line 317
    :cond_8
    sget v6, Lezg$f;->dp4:I

    invoke-static {v6}, Leda;->d(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_9

    .line 323
    :pswitch_6
    if-nez v4, :cond_9

    .line 324
    sget v6, Lezg$f;->dp4:I

    invoke-static {v6}, Leda;->d(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 325
    sget v6, Lezg$f;->dp4:I

    invoke-static {v6}, Leda;->d(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_8

    .line 327
    :cond_9
    sget v6, Lezg$f;->dp8:I

    invoke-static {v6}, Leda;->d(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 328
    sget v6, Lezg$f;->dp4:I

    invoke-static {v6}, Leda;->d(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_8

    .line 336
    :cond_a
    sget v6, Lezg$f;->dp4:I

    invoke-static {v6}, Leda;->d(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_7

    .line 344
    .end local v0    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;
    .end local v1    # "loadItemDataSuccess":Z
    .end local v2    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "newItemView":Landroid/view/View;
    .end local v5    # "typeLegal":Z
    :cond_b
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 3493
    .line 3508
    .line 4356
    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;
    .param p1, "x1"    # J

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(J)V

    return-void
.end method

.method private static a(Landroid/view/View;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;)Z
    .locals 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 374
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget v10, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    if-eqz v10, :cond_1

    :cond_0
    move v8, v9

    .line 411
    :goto_0
    return v8

    .line 379
    :cond_1
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v10, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->bodyJson:Ljava/lang/String;

    invoke-direct {v6, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 380
    .local v6, "textJson":Lorg/json/JSONObject;
    const-string/jumbo v10, "key"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 381
    .local v5, "labelObj":Ljava/lang/Object;
    if-nez v5, :cond_2

    .line 382
    new-instance v10, Lorg/json/JSONException;

    const-string/jumbo v11, "label is null."

    invoke-direct {v10, v11}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 401
    .end local v5    # "labelObj":Ljava/lang/Object;
    .end local v6    # "textJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v10, "OrgApplyDetailActivity"

    new-array v11, v12, [Ljava/lang/String;

    const-string/jumbo v12, "loadText: json parse failure!"

    aput-object v12, v11, v9

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v8, v11}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move v8, v9

    .line 404
    goto :goto_0

    .line 384
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v5    # "labelObj":Ljava/lang/Object;
    .restart local v6    # "textJson":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, "label":Ljava/lang/String;
    const-string/jumbo v10, "value"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 387
    .local v1, "contentObj":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 388
    new-instance v10, Lorg/json/JSONException;

    const-string/jumbo v11, "content is null."

    invoke-direct {v10, v11}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    .end local v1    # "contentObj":Ljava/lang/Object;
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "labelObj":Ljava/lang/Object;
    .end local v6    # "textJson":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 406
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "OrgApplyDetailActivity"

    new-array v11, v12, [Ljava/lang/String;

    const-string/jumbo v12, "loadText: fatal error!"

    aput-object v12, v11, v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v8, v11}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v8, v9

    .line 408
    goto :goto_0

    .line 390
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "contentObj":Ljava/lang/Object;
    .restart local v4    # "label":Ljava/lang/String;
    .restart local v5    # "labelObj":Ljava/lang/Object;
    .restart local v6    # "textJson":Lorg/json/JSONObject;
    :cond_3
    :try_start_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "content":Ljava/lang/String;
    sget v10, Lezg$h;->tv_key:I

    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 394
    .local v3, "keyView":Landroid/view/View;
    sget v10, Lezg$h;->tv_value:I

    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 395
    .local v7, "valueView":Landroid/view/View;
    instance-of v10, v3, Landroid/widget/TextView;

    if-eqz v10, :cond_4

    instance-of v10, v7, Landroid/widget/TextView;

    if-eqz v10, :cond_4

    .line 396
    check-cast v3, Landroid/widget/TextView;

    .end local v3    # "keyView":Landroid/view/View;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    check-cast v7, Landroid/widget/TextView;

    .end local v7    # "valueView":Landroid/view/View;
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 399
    .restart local v3    # "keyView":Landroid/view/View;
    .restart local v7    # "valueView":Landroid/view/View;
    :cond_4
    new-instance v10, Ljava/lang/Exception;

    const-string/jumbo v11, "inner view is not a TextView."

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method private a(Landroid/widget/LinearLayout;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;)Z
    .locals 15
    .param p1, "imageGroup"    # Landroid/widget/LinearLayout;
    .param p2, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 415
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 416
    :cond_0
    const/4 v4, 0x0

    .line 486
    :goto_0
    return v4

    .line 420
    :cond_1
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->bodyJson:Ljava/lang/String;

    invoke-direct {v13, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 424
    .local v13, "obj":Lorg/json/JSONObject;
    const-string/jumbo v4, "values"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 425
    .local v12, "mediaIdArray":Lorg/json/JSONArray;
    if-nez v12, :cond_2

    .line 426
    new-instance v4, Lorg/json/JSONException;

    const-string/jumbo v5, "Media array is null."

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 472
    .end local v12    # "mediaIdArray":Lorg/json/JSONArray;
    .end local v13    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 473
    .local v9, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "OrgApplyDetailActivity"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "loadImageGroup: json parse failure!"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    .line 475
    const/4 v4, 0x0

    goto :goto_0

    .line 431
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v12    # "mediaIdArray":Lorg/json/JSONArray;
    .restart local v13    # "obj":Lorg/json/JSONObject;
    :cond_2
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v10, v4, :cond_4

    .line 432
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 433
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v10, v4, :cond_3

    .line 434
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 436
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 476
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v10    # "index":I
    .end local v12    # "mediaIdArray":Lorg/json/JSONArray;
    .end local v13    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v9

    .line 477
    .local v9, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v4, "OrgApplyDetailActivity"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "loadImageGroup: mediaId parse url failure!"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v9}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    invoke-virtual {v9}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 479
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 440
    .end local v9    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .restart local v10    # "index":I
    .restart local v12    # "mediaIdArray":Lorg/json/JSONArray;
    .restart local v13    # "obj":Lorg/json/JSONObject;
    :cond_4
    const/4 v10, 0x0

    :goto_3
    :try_start_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v10, v4, :cond_5

    .line 441
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 442
    .local v11, "mediaId":Ljava/lang/String;
    invoke-static {v11}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "url":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 445
    .restart local v2    # "imageView":Landroid/widget/ImageView;
    const-string/jumbo v4, "IMAGE"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 446
    .local v1, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    const/4 v4, 0x0

    const/16 v5, 0x16

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 455
    new-instance v14, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v14}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 456
    .local v14, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iput-object v3, v14, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 457
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->s:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    new-instance v4, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$4;

    invoke-direct {v4, p0, v3}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 440
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 480
    .end local v1    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "url":Ljava/lang/String;
    .end local v10    # "index":I
    .end local v11    # "mediaId":Ljava/lang/String;
    .end local v12    # "mediaIdArray":Lorg/json/JSONArray;
    .end local v13    # "obj":Lorg/json/JSONObject;
    .end local v14    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :catch_2
    move-exception v9

    .line 481
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OrgApplyDetailActivity"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "loadImageGroup: fatal error!"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 483
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 486
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "index":I
    .restart local v12    # "mediaIdArray":Lorg/json/JSONArray;
    .restart local v13    # "obj":Lorg/json/JSONObject;
    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    .line 5643
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org_apply_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5644
    const-string/jumbo v1, "list_view_position"

    iget v2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5645
    const-string/jumbo v1, "org_apply_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5646
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 71
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->q:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->s:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->o:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 534
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lezg$h;->org_user_layout:I

    if-ne v3, v4, :cond_2

    .line 535
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 4657
    if-eqz v3, :cond_0

    .line 4660
    iget-boolean v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDataComplete:Z

    if-eqz v4, :cond_1

    .line 4661
    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-direct {p0, v4, v5}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(J)V

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 4663
    :cond_1
    new-instance v4, Lfjl;

    invoke-direct {v4, p0}, Lfjl;-><init>(Landroid/app/Activity;)V

    .line 4664
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ORG_CONTACT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    .line 4665
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ordinal()I

    move-result v6

    .line 4664
    invoke-virtual {v4, v5, v3, v6}, Lfjl;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 536
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lezg$h;->btn_reject:I

    if-ne v3, v4, :cond_3

    .line 537
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 538
    .local v1, "editText":Landroid/widget/EditText;
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 539
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v3, Lezg$l;->dt_group_apply_reject_reason_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 540
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 541
    sget v3, Lezg$l;->cancel:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 542
    sget v3, Lezg$l;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$5;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 564
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 565
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 566
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v1    # "editText":Landroid/widget/EditText;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lezg$h;->btn_agree:I

    if-ne v3, v4, :cond_6

    .line 568
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_0

    .line 571
    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->q:Z

    if-eqz v3, :cond_5

    .line 572
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->p:Ljava/lang/String;

    .line 577
    .local v2, "userName":Ljava/lang/String;
    :goto_1
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v3, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/contact/manage_staff.html"

    new-instance v5, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$6;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$6;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 572
    .end local v2    # "userName":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto :goto_1

    .line 574
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->content:Ljava/lang/String;

    .restart local v2    # "userName":Ljava/lang/String;
    goto :goto_1

    .line 591
    .end local v2    # "userName":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lezg$h;->btn_block:I

    if-ne v3, v4, :cond_0

    .line 592
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 593
    .restart local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v3, Lezg$l;->shield_apply_hint:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lezg$l;->cancel:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 594
    sget v3, Lezg$l;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$7;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$7;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 614
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 615
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    sget v0, Lezg$j;->activity_org_apply_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->setContentView(I)V

    .line 1141
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_apply"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .line 1142
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    .line 130
    :goto_0
    if-nez v0, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->finish()V

    .line 138
    :goto_1
    return-void

    .line 1145
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "list_view_position"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->o:I

    move v0, v2

    .line 1146
    goto :goto_0

    .line 1150
    :cond_2
    sget v0, Lezg$h;->org_user_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a:Landroid/view/View;

    .line 1151
    sget v0, Lezg$h;->org_apply_detail_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1152
    sget v0, Lezg$h;->org_apply_detail_nick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->c:Landroid/widget/TextView;

    .line 1153
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lezg$l;->my_local_contact:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->r:Ljava/lang/String;

    .line 1155
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1156
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->r:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->p:Ljava/lang/String;

    .line 1157
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->q:Z

    .line 1162
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    sget v0, Lezg$h;->org_apply_detail_mobile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->d:Landroid/widget/TextView;

    .line 1164
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    invoke-static {v1}, Lfrb;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    sget v0, Lezg$h;->tv_apply_org_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->e:Landroid/widget/TextView;

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    sget v0, Lezg$h;->tv_apply_dept_key:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->f:Landroid/widget/TextView;

    .line 1168
    sget v0, Lezg$h;->tv_apply_dept:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->g:Landroid/widget/TextView;

    .line 1169
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->dept:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->dept:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1170
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1171
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1177
    :goto_3
    sget v0, Lezg$h;->tv_apply_remark_key:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->h:Landroid/widget/TextView;

    .line 1178
    sget v0, Lezg$h;->tv_apply_remark:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->i:Landroid/widget/TextView;

    .line 1179
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->remark:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1180
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->i:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_group_apply_reason_none:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    :goto_4
    sget v0, Lezg$h;->ll_container_items:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->j:Landroid/widget/LinearLayout;

    .line 1185
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_user_org_apply_items_new"

    invoke-virtual {v0, v1}, Lchx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1186
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1188
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->items:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 1192
    :cond_4
    sget v0, Lezg$h;->tv_apply_invite:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1193
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->inviterEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->inviterEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1194
    :cond_5
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v3

    .line 1220
    :goto_5
    sget v0, Lezg$h;->tv_apply_operate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1221
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->optEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->optEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1222
    :cond_6
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move v2, v3

    .line 1262
    :goto_6
    sget v0, Lezg$h;->divider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v1, :cond_7

    if-eqz v2, :cond_11

    :cond_7
    :goto_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1264
    sget v0, Lezg$h;->btn_agree:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->k:Landroid/widget/TextView;

    .line 1265
    sget v0, Lezg$h;->btn_reject:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->m:Landroid/widget/TextView;

    .line 1266
    sget v0, Lezg$h;->btn_block:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->l:Landroid/widget/TextView;

    .line 1268
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(I)V

    .line 1270
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1271
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1272
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1273
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2100
    new-instance v0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->t:Lcjo$a;

    .line 2123
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->t:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->a(Lcjo$a;)V

    .line 2620
    new-instance v1, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$8;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)V

    .line 2637
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2638
    const-string/jumbo v0, "com.workapp.org_apply_change"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2639
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    invoke-interface {v0, v1, p0, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->detail_info:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 1159
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->p:Ljava/lang/String;

    .line 1160
    iput-boolean v3, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->q:Z

    goto/16 :goto_2

    .line 1173
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1175
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->dept:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1182
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1197
    :cond_b
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1199
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->inviterEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->uid:J

    .line 1200
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->inviterEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->name:Ljava/lang/String;

    .line 1202
    sget v7, Lezg$l;->dt_group_apply_inviter_tips:I

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v1, v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1204
    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1205
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v8

    .line 1207
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1208
    new-instance v7, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$2;

    invoke-direct {v7, p0, p0, v4, v5}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;Landroid/content/Context;J)V

    invoke-virtual {v9, v7, v8, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1214
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1215
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move v1, v2

    goto/16 :goto_5

    .line 1225
    :cond_c
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1227
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->optEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->uid:J

    .line 1228
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->optEmployeeModel:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->name:Ljava/lang/String;

    .line 1231
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v4, v7, :cond_e

    .line 1232
    sget v4, Lezg$l;->dt_group_apply_operator_tips:I

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-virtual {p0, v4, v7}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1239
    :goto_8
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1240
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v7

    .line 1242
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1243
    new-instance v4, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$3;

    invoke-direct {v4, p0, p0, v8, v9}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;Landroid/content/Context;J)V

    invoke-virtual {v10, v4, v7, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1250
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-eq v4, v5, :cond_d

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-eq v4, v5, :cond_d

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->SHIELD:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v4, v5, :cond_10

    .line 1254
    :cond_d
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1255
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_6

    .line 1233
    :cond_e
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v4, v7, :cond_f

    .line 1234
    sget v4, Lezg$l;->dt_group_apply_operator_tips_refuse:I

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-virtual {p0, v4, v7}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 1235
    :cond_f
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->SHIELD:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v4, v7, :cond_12

    .line 1236
    sget v4, Lezg$l;->dt_group_apply_operator_tips_block:I

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-virtual {p0, v4, v7}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 1258
    :cond_10
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move v2, v3

    goto/16 :goto_6

    :cond_11
    move v3, v6

    .line 1262
    goto/16 :goto_7

    :cond_12
    move-object v4, v5

    goto :goto_8
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 651
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 652
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->t:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->b(Lcjo$a;)V

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->t:Lcjo$a;

    .line 654
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 529
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onPause()V

    .line 530
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 524
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 525
    return-void
.end method
