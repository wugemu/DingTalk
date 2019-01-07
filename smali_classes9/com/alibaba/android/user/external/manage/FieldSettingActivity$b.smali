.class final Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;
.super Landroid/widget/BaseAdapter;
.source "FieldSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/FieldSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 271
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

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
    .line 280
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

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
    .line 285
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
    .line 291
    if-nez p2, :cond_0

    .line 292
    new-instance v5, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iget-object v6, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-direct {v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;-><init>(Landroid/content/Context;)V

    .line 297
    .local v5, "view":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 298
    .local v3, "item":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    if-nez v3, :cond_1

    .line 350
    :goto_1
    return-object v5

    .end local v3    # "item":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    .end local v5    # "view":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;
    :cond_0
    move-object v5, p2

    .line 294
    check-cast v5, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .restart local v5    # "view":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;
    goto :goto_0

    .line 302
    .restart local v3    # "item":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    :cond_1
    if-eqz p1, :cond_2

    const/4 v6, 0x1

    if-ne p1, v6, :cond_3

    .line 303
    :cond_2
    new-instance v6, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b$1;-><init>(Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 324
    :goto_2
    iget-boolean v6, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v6, :cond_4

    .line 325
    iget-object v6, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    sget v7, Lezg$l;->input_required:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 326
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

    .line 327
    .local v0, "fieldTipStr":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 328
    .local v4, "spannableString":Landroid/text/SpannableString;
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 329
    .local v2, "hintIndex":I
    new-instance v6, Lfxr;

    iget-object v7, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-virtual {v7}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$e;->pure_white:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iget-object v8, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    .line 330
    invoke-virtual {v8}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lezg$e;->C3:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const/16 v9, 0x8

    invoke-direct {v6, v7, v8, v9}, Lfxr;-><init>(III)V

    .line 331
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    const/4 v8, 0x0

    .line 329
    invoke-virtual {v4, v6, v2, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 332
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-virtual {v7}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$f;->text_size_10:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 333
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    const/4 v8, 0x0

    .line 332
    invoke-virtual {v4, v6, v2, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 334
    sget v6, Lezg$h;->cell_title:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 339
    .end local v0    # "fieldTipStr":Ljava/lang/String;
    .end local v1    # "hint":Ljava/lang/String;
    .end local v2    # "hintIndex":I
    .end local v4    # "spannableString":Landroid/text/SpannableString;
    :goto_3
    if-nez p1, :cond_5

    .line 340
    const/4 v6, 0x0

    sget-object v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->a(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 344
    :goto_4
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_6

    .line 345
    const/4 v6, 0x0

    sget-object v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    goto/16 :goto_1

    .line 311
    :cond_3
    new-instance v6, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b$2;

    invoke-direct {v6, p0, v3}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b$2;-><init>(Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;Lcom/alibaba/android/user/model/OrgExtFieldObject;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    sget v6, Lezg$g;->right_arrow:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_2

    .line 336
    :cond_4
    iget-object v6, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setTitle(Ljava/lang/String;)V

    goto :goto_3

    .line 342
    :cond_5
    const/4 v6, 0x0

    sget-object v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->a(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    goto :goto_4

    .line 347
    :cond_6
    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    goto/16 :goto_1
.end method
