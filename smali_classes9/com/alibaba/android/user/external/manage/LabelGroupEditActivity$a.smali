.class final Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;
.super Landroid/widget/BaseAdapter;
.source "LabelGroupEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 354
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

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
    .line 368
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 373
    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .line 375
    .local v0, "model":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    if-nez p2, :cond_0

    .line 376
    new-instance v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;

    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;-><init>(Landroid/content/Context;)V

    .line 377
    .local v1, "view":Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;
    sget v2, Lezg$g;->icon_red_delete:I

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1, v2, v4, p3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 378
    sget-object v2, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_XXS:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->setLeftImageSize(Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V

    .line 379
    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    sget v3, Lezg$l;->dt_external_contact_label_group_name_hint:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->setEditHint(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->setTitle(Ljava/lang/String;)V

    .line 385
    :goto_0
    new-instance v2, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$1;-><init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->setEditOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 398
    new-instance v2, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$2;-><init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;I)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->setLeftImageOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->setEditTextMaxLen(I)V

    .line 406
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->setEditText(Ljava/lang/String;)V

    .line 408
    if-nez p1, :cond_1

    .line 409
    sget-object v2, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v1, v5, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 410
    invoke-virtual {v1, v6, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 416
    :goto_1
    return-object v1

    .end local v1    # "view":Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_0
    move-object v1, p2

    .line 382
    check-cast v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;

    .restart local v1    # "view":Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;
    goto :goto_0

    .line 412
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    sget-object v2, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignHeader:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v1, v5, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 413
    invoke-virtual {v1, v6, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    goto :goto_1
.end method
