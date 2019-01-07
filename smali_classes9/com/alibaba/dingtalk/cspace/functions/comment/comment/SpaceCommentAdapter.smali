.class public Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "SpaceCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lgqw;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lgqw;>;"
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    if-nez p2, :cond_1

    .line 56
    new-instance v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;-><init>(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;B)V

    .line 57
    .local v7, "viewHolder":Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->m:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lfzs$g;->space_comment_item_layout:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    sget v8, Lfzs$f;->img_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v8, v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 59
    sget v8, Lfzs$f;->tv_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;->b:Landroid/widget/TextView;

    .line 60
    sget v8, Lfzs$f;->tv_time:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;->d:Landroid/widget/TextView;

    .line 61
    sget v8, Lfzs$f;->tv_content:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;->c:Landroid/widget/TextView;

    .line 62
    sget v8, Lfzs$f;->view_divider:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;->e:Landroid/view/View;

    .line 63
    sget v8, Lfzs$f;->view_divider_full:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;->f:Landroid/view/View;

    .line 64
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgqw;

    .line 72
    .local v2, "commentIContentModel":Lgqw;
    iget-object v8, v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v9, v2, Lgqw;->e:Ljava/lang/String;

    iget-object v10, v2, Lgqw;->f:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v8, v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;->b:Landroid/widget/TextView;

    iget-object v9, v2, Lgqw;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v2, Lgqw;->k:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->m:Landroid/content/Context;

    invoke-static {v10, v11, v12}, Lcog;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, " "

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, v2, Lgqw;->k:Ljava/lang/Long;

    .line 76
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->m:Landroid/content/Context;

    invoke-static {v10, v11, v12}, Lcog;->c(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 75
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "timeString":Ljava/lang/String;
    iget-object v8, v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v8

    iget-object v9, v2, Lgqw;->i:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcok;->a(Ljava/lang/String;)Z

    move-result v4

    .line 81
    .local v4, "isAllEmotion":Z
    iget-object v9, v2, Lgqw;->h:Ljava/util/Map;

    iget-object v8, v2, Lgqw;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->m:Landroid/content/Context;

    .line 82
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lfzs$c;->text_color_blue:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 1064
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1066
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 84
    .local v3, "content":Landroid/text/SpannableStringBuilder;
    :cond_0
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->m:Landroid/content/Context;

    .line 85
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v4, :cond_4

    const/high16 v8, 0x41f00000    # 30.0f

    :goto_1
    invoke-virtual {v9, v10, v11, v8}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v5

    .line 87
    .local v5, "spannableString":Landroid/text/SpannableString;
    iget-object v8, v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move/from16 v0, p1

    if-ne v0, v8, :cond_5

    .line 90
    iget-object v8, v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;->f:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v8, v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;->e:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :goto_2
    return-object p2

    .line 67
    .end local v2    # "commentIContentModel":Lgqw;
    .end local v3    # "content":Landroid/text/SpannableStringBuilder;
    .end local v4    # "isAllEmotion":Z
    .end local v5    # "spannableString":Landroid/text/SpannableString;
    .end local v6    # "timeString":Ljava/lang/String;
    .end local v7    # "viewHolder":Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;

    .restart local v7    # "viewHolder":Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;
    goto/16 :goto_0

    .line 1070
    .restart local v2    # "commentIContentModel":Lgqw;
    .restart local v4    # "isAllEmotion":Z
    .restart local v6    # "timeString":Ljava/lang/String;
    :cond_2
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v10, v8

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1071
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 1072
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1075
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "@"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1077
    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 1079
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "@"

    aput-object v15, v10, v14

    const/4 v14, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1080
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "@"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1082
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v13

    invoke-virtual {v3, v13, v10, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1083
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1085
    new-instance v15, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v15, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1086
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v13

    const/16 v16, 0x21

    .line 1085
    move/from16 v0, v16

    invoke-virtual {v3, v15, v13, v14, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 85
    .restart local v3    # "content":Landroid/text/SpannableStringBuilder;
    :cond_4
    const/high16 v8, 0x41c00000    # 24.0f

    goto/16 :goto_1

    .line 93
    .restart local v5    # "spannableString":Landroid/text/SpannableString;
    :cond_5
    iget-object v8, v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;->e:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v8, v7, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter$a;->f:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method
