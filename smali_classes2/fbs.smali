.class public final Lfbs;
.super Landroid/widget/BaseAdapter;
.source "ChannelPeopleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfbs$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcfc;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcfc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "invitedAdapters":Ljava/util/List;, "Ljava/util/List<Lcfc;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfbs;->a:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lfbs;->a:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lfbs;->b:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lfbs;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfbs;->a:Ljava/util/List;

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
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 59
    if-nez p2, :cond_1

    .line 60
    move-object/from16 v0, p0

    iget-object v10, v0, Lfbs;->b:Landroid/content/Context;

    sget v11, Lezg$j;->external_list_item_layout:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance v9, Lfbs$a;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lfbs$a;-><init>(Lfbs;)V

    .line 62
    .local v9, "viewHolder":Lfbs$a;
    sget v10, Lezg$h;->checkbox:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, v9, Lfbs$a;->a:Landroid/widget/CheckBox;

    .line 63
    sget v10, Lezg$h;->external_list_item_avatar:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v10, v9, Lfbs$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 64
    sget v10, Lezg$h;->external_list_item_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lfbs$a;->c:Landroid/widget/TextView;

    .line 65
    sget v10, Lezg$h;->external_list_item_owner:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lfbs$a;->d:Landroid/widget/TextView;

    .line 66
    sget v10, Lezg$h;->external_list_item_org_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lfbs$a;->e:Landroid/widget/TextView;

    .line 67
    sget v10, Lezg$h;->external_list_item_label_layout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    iput-object v10, v9, Lfbs$a;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 68
    sget v10, Lezg$h;->last_div:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v9, Lfbs$a;->g:Landroid/view/View;

    .line 69
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :goto_0
    iget-object v10, v9, Lfbs$a;->a:Landroid/widget/CheckBox;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 77
    iget-object v10, v9, Lfbs$a;->g:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    .local v6, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v6, :cond_0

    .line 79
    invoke-virtual/range {p0 .. p0}, Lfbs;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    move/from16 v0, p1

    if-ne v0, v10, :cond_2

    .line 80
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 84
    :goto_1
    iget-object v10, v9, Lfbs$a;->g:Landroid/view/View;

    invoke-virtual {v10, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lfbs;->a:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcfc;

    .line 88
    .local v7, "orgNodeItemModel":Lcfc;
    iget-object v10, v9, Lfbs$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v11, v7, Lcfc;->b:Lcew;

    iget-object v11, v11, Lcew;->h:Ljava/lang/String;

    iget-object v12, v7, Lcfc;->f:Lcgk;

    iget-object v12, v12, Lcgk;->e:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v10, v9, Lfbs$a;->c:Landroid/widget/TextView;

    iget-object v11, v7, Lcfc;->b:Lcew;

    iget-object v11, v11, Lcew;->h:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v10, v7, Lcfc;->b:Lcew;

    iget-object v10, v10, Lcew;->x:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 93
    iget-object v10, v9, Lfbs$a;->d:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v10, v9, Lfbs$a;->d:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lfbs;->b:Landroid/content/Context;

    sget v12, Lezg$l;->dt_external_at_incharge:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v7, Lcfc;->b:Lcew;

    iget-object v15, v15, Lcew;->x:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_2
    iget-object v10, v7, Lcfc;->b:Lcew;

    iget-object v10, v10, Lcew;->B:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 100
    iget-object v10, v9, Lfbs$a;->e:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v10, v9, Lfbs$a;->e:Landroid/widget/TextView;

    iget-object v11, v7, Lcfc;->b:Lcew;

    iget-object v11, v11, Lcew;->B:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_3
    iget-object v10, v7, Lcfc;->b:Lcew;

    iget-object v4, v10, Lcew;->v:Ljava/util/List;

    .line 107
    .local v4, "labels":Ljava/util/List;, "Ljava/util/List<Lcec;>;"
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 108
    iget-object v10, v9, Lfbs$a;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 109
    iget-object v10, v9, Lfbs$a;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildCount()I

    move-result v1

    .line 110
    .local v1, "childCount":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 111
    .local v5, "labelsSize":I
    if-le v5, v1, :cond_5

    move v8, v1

    .line 112
    .local v8, "size":I
    :goto_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v8, :cond_6

    .line 113
    iget-object v10, v9, Lfbs$a;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    invoke-virtual {v10, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    .line 114
    .local v2, "colorLabelTextView":Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setVisibility(I)V

    .line 115
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcec;

    iget-object v10, v10, Lcec;->b:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcec;

    iget-object v10, v10, Lcec;->c:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/high16 v11, -0x1000000

    or-int/2addr v10, v11

    invoke-virtual {v2, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextColor(I)V

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 71
    .end local v1    # "childCount":I
    .end local v2    # "colorLabelTextView":Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;
    .end local v3    # "i":I
    .end local v4    # "labels":Ljava/util/List;, "Ljava/util/List<Lcec;>;"
    .end local v5    # "labelsSize":I
    .end local v6    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "orgNodeItemModel":Lcfc;
    .end local v8    # "size":I
    .end local v9    # "viewHolder":Lfbs$a;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfbs$a;

    .restart local v9    # "viewHolder":Lfbs$a;
    goto/16 :goto_0

    .line 82
    .restart local v6    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lfbs;->b:Landroid/content/Context;

    const/high16 v11, 0x42900000    # 72.0f

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 96
    .restart local v7    # "orgNodeItemModel":Lcfc;
    :cond_3
    iget-object v10, v9, Lfbs$a;->d:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 103
    :cond_4
    iget-object v10, v9, Lfbs$a;->e:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .restart local v1    # "childCount":I
    .restart local v4    # "labels":Ljava/util/List;, "Ljava/util/List<Lcec;>;"
    .restart local v5    # "labelsSize":I
    :cond_5
    move v8, v5

    .line 111
    goto :goto_4

    .line 119
    .restart local v3    # "i":I
    .restart local v8    # "size":I
    :cond_6
    if-ge v5, v1, :cond_8

    .line 120
    move v3, v5

    :goto_6
    if-ge v3, v1, :cond_8

    .line 121
    iget-object v10, v9, Lfbs$a;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    invoke-virtual {v10, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 125
    .end local v1    # "childCount":I
    .end local v3    # "i":I
    .end local v5    # "labelsSize":I
    .end local v8    # "size":I
    :cond_7
    iget-object v10, v9, Lfbs$a;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 143
    :cond_8
    return-object p2
.end method
