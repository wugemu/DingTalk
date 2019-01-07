.class public final Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;
.super Landroid/widget/BaseAdapter;
.source "SelectorHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/widget/SelectorHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/org/model/SelectModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/user/widget/SelectorHorizontalListView;)V
    .locals 1

    .prologue
    .line 342
    iput-object p1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->b:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/user/widget/SelectorHorizontalListView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;-><init>(Lcom/alibaba/android/user/widget/SelectorHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 424
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 433
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 438
    iget-object v2, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .line 439
    .local v0, "data":Lcom/alibaba/android/user/contact/org/model/SelectModel;
    iget-object v2, v0, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->ordinal()I

    move-result v1

    .line 440
    .local v1, "type":I
    return v1
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
    const/4 v9, 0x0

    const/4 v8, 0x5

    .line 450
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->getItemViewType(I)I

    move-result v4

    .line 451
    .local v4, "type":I
    sget-object v6, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->DEPT:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->ordinal()I

    move-result v6

    if-ne v4, v6, :cond_4

    .line 453
    if-nez p2, :cond_2

    .line 454
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lezg$j;->department_item_view:I

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 455
    sget v6, Lezg$h;->tv_depart_txt:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 456
    .local v2, "mDeptView":Landroid/widget/TextView;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 460
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->a:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .line 461
    .local v1, "itemObject":Lcom/alibaba/android/user/contact/org/model/SelectModel;
    if-eqz v1, :cond_0

    iget-object v6, v1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 462
    iget-object v6, v1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_3

    iget-object v6, v1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    move-object v5, p2

    .line 484
    .end local v1    # "itemObject":Lcom/alibaba/android/user/contact/org/model/SelectModel;
    .end local v2    # "mDeptView":Landroid/widget/TextView;
    :cond_1
    :goto_2
    return-object v5

    .line 458
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .restart local v2    # "mDeptView":Landroid/widget/TextView;
    goto :goto_0

    .line 462
    .restart local v1    # "itemObject":Lcom/alibaba/android/user/contact/org/model/SelectModel;
    :cond_3
    iget-object v6, v1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    goto :goto_1

    .line 466
    .end local v1    # "itemObject":Lcom/alibaba/android/user/contact/org/model/SelectModel;
    .end local v2    # "mDeptView":Landroid/widget/TextView;
    :cond_4
    move-object v5, p2

    .line 467
    .local v5, "v":Landroid/view/View;
    if-nez p2, :cond_5

    .line 468
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lezg$j;->layout_select_avatar:I

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 471
    :cond_5
    if-ltz p1, :cond_1

    iget-object v6, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge p1, v6, :cond_1

    .line 472
    iget-object v6, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->a:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .line 473
    .restart local v1    # "itemObject":Lcom/alibaba/android/user/contact/org/model/SelectModel;
    iget-object v3, v1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 475
    .local v3, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v3, :cond_1

    .line 476
    sget v6, Lezg$h;->tv_avatar:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 478
    .local v0, "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    if-eqz v0, :cond_1

    .line 479
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v6}, Lcpt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x2

    return v0
.end method
