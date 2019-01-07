.class public final Letg;
.super Lete;
.source "DeptSearchViewHolder.java"


# instance fields
.field e:Landroid/view/View;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lete;-><init>(Landroid/app/Activity;I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 49
    :cond_0
    sget v0, Lemt$e;->layout_friend_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    iput-object v0, p0, Letg;->g:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    .line 50
    sget v0, Lemt$e;->iv_expand:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letg;->e:Landroid/view/View;

    .line 51
    iget-object v0, p0, Letg;->e:Landroid/view/View;

    iget-object v1, p0, Letg;->g:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Letg;->g:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    new-instance v1, Letg$1;

    invoke-direct {v1, p0}, Letg$1;-><init>(Letg;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->setOnExpandStateChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;)V

    .line 84
    sget v0, Lemt$e;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letg;->b:Landroid/view/View;

    .line 86
    sget v0, Lemt$e;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Letg;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 87
    sget v0, Lemt$e;->tv_dept_manager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letg;->h:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/AbsListView;)V
    .locals 5
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Letg;->h:Landroid/widget/TextView;

    iget-object v1, p0, Letg;->a:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/alibaba/android/search/model/BaseModel;->getDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Letg;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1099
    if-nez p1, :cond_3

    const/4 v0, 0x0

    .line 1100
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_4

    .line 1101
    :cond_0
    iget-object v0, p0, Letg;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 1112
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1113
    iget-object v0, p0, Letg;->g:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Letg;->a(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1115
    iget-object v0, p0, Letg;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1117
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1118
    iget-object v0, p0, Letg;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_2
    return-void

    .line 1099
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getAvatar()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1102
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1103
    iget-object v1, p0, Letg;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 1104
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/SearchUserIconObject;

    .line 1105
    iget-object v1, p0, Letg;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v1, v0, p2}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/android/search/SearchUserIconObject;Landroid/widget/AbsListView;)V

    .line 1106
    iget-object v0, p0, Letg;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/search/model/BaseModel;->fillAvatarRightBottomIconRes(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    goto :goto_1

    .line 1121
    :cond_5
    iget-object v0, p0, Letg;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
