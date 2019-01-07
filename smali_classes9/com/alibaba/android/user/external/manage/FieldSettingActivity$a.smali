.class final Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;
.super Landroid/widget/BaseAdapter;
.source "FieldSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/FieldSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 357
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

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
    .line 366
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

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
    .line 371
    int-to-long v0, p1

    return-wide v0
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
    .line 377
    if-nez p2, :cond_0

    .line 378
    new-instance v5, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    iget-object v6, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-direct {v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;-><init>(Landroid/content/Context;)V

    .line 379
    .local v5, "view":Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;
    sget v6, Lezg$g;->icon_red_delete:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 380
    sget-object v6, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_XXS:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setLeftImageSize(Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V

    .line 381
    const/4 v6, 0x0

    sget-object v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 382
    const/4 v6, 0x0

    sget-object v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 383
    sget v6, Lezg$g;->right_arrow:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 388
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 389
    .local v3, "item":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    if-nez v3, :cond_1

    .line 432
    :goto_1
    return-object v5

    .end local v3    # "item":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    .end local v5    # "view":Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;
    :cond_0
    move-object v5, p2

    .line 385
    check-cast v5, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    .restart local v5    # "view":Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;
    goto :goto_0

    .line 393
    .restart local v3    # "item":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    :cond_1
    iget-boolean v6, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v6, :cond_2

    .line 394
    iget-object v6, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    sget v7, Lezg$l;->input_required:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "hint":Ljava/lang/String;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, " "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "fieldTipStr":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 397
    .local v4, "spannableString":Landroid/text/SpannableString;
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 398
    .local v2, "hintIndex":I
    new-instance v6, Lfxr;

    iget-object v7, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-virtual {v7}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$e;->pure_white:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iget-object v8, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    .line 399
    invoke-virtual {v8}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lezg$e;->C3:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-direct {v6, v7, v8, v9}, Lfxr;-><init>(III)V

    .line 400
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    const/4 v8, 0x0

    .line 398
    invoke-virtual {v4, v6, v2, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 401
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-virtual {v7}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$f;->text_size_10:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 402
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    const/4 v8, 0x0

    .line 401
    invoke-virtual {v4, v6, v2, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 403
    sget v6, Lezg$h;->cell_title:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 407
    .end local v0    # "fieldTipStr":Ljava/lang/String;
    .end local v1    # "hint":Ljava/lang/String;
    .end local v2    # "hintIndex":I
    .end local v4    # "spannableString":Landroid/text/SpannableString;
    :goto_2
    new-instance v6, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a$1;

    invoke-direct {v6, p0, v3}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a$1;-><init>(Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;Lcom/alibaba/android/user/model/OrgExtFieldObject;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    new-instance v6, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a$2;

    invoke-direct {v6, p0, p1}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a$2;-><init>(Lcom/alibaba/android/user/external/manage/FieldSettingActivity$a;I)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setLeftImageOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    if-nez p1, :cond_3

    .line 425
    const/4 v6, 0x0

    sget-object v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 426
    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    goto/16 :goto_1

    .line 405
    :cond_2
    iget-object v6, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setTitle(Ljava/lang/String;)V

    goto :goto_2

    .line 428
    :cond_3
    const/4 v6, 0x0

    sget-object v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignHeader:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 429
    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    goto/16 :goto_1
.end method
