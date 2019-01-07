.class public final Letx;
.super Lete;
.source "MsgSearchViewHolder.java"


# instance fields
.field public e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/ImageView;

.field l:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lete;-><init>(Landroid/app/Activity;I)V

    .line 65
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    sget v1, Lemt$e;->session_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v1, p0, Letx;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 75
    sget v1, Lemt$e;->session_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Letx;->f:Landroid/widget/TextView;

    .line 78
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    iget-object v2, p0, Letx;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    const/4 v0, 0x1

    .line 80
    .local v0, "isSearchFilterOptimize":Z
    sget v1, Lemt$e;->layout_session_content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    iput-object v1, p0, Letx;->h:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    .line 86
    :goto_1
    sget v1, Lemt$e;->tv_create_time:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Letx;->i:Landroid/widget/TextView;

    .line 87
    sget v1, Lemt$e;->group_divider:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Letx;->b:Landroid/view/View;

    .line 88
    sget v1, Lemt$e;->iv_merged_msg_server_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Letx;->j:Landroid/widget/ImageView;

    .line 89
    sget v1, Lemt$e;->iv_unmerged_msg_server_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Letx;->k:Landroid/widget/ImageView;

    .line 91
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Letx;->h:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    new-instance v2, Letx$1;

    invoke-direct {v2, p0}, Letx$1;-><init>(Letx;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->setOnExpandStateChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;)V

    .line 125
    sget v1, Lemt$e;->iv_expand:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Letx;->l:Landroid/view/View;

    .line 126
    iget-object v1, p0, Letx;->l:Landroid/view/View;

    iget-object v2, p0, Letx;->h:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 82
    .end local v0    # "isSearchFilterOptimize":Z
    :cond_2
    const/4 v0, 0x0

    .line 83
    .restart local v0    # "isSearchFilterOptimize":Z
    sget v1, Lemt$e;->session_content_tv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Letx;->g:Landroid/widget/TextView;

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/AbsListView;)V
    .locals 8
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "msgModel":Lcom/alibaba/android/search/model/MsgModel;
    instance-of v1, p1, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 135
    check-cast v0, Lcom/alibaba/android/search/model/MsgModel;

    .line 138
    :cond_0
    if-nez v0, :cond_1

    .line 2196
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->processData()V

    .line 1152
    if-nez v0, :cond_9

    move-object v1, v3

    .line 1153
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_a

    .line 1154
    :cond_2
    iget-object v1, p0, Letx;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    :cond_3
    :goto_2
    iget-object v3, p0, Letx;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->isMerge()Z

    move-result v1

    if-eqz v1, :cond_b

    const/high16 v1, 0x41700000    # 15.0f

    :goto_3
    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTextSize(F)V

    .line 1161
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->isMerge()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Letx;->a:Landroid/app/Activity;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v1, v3}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v1

    move v3, v1

    .line 1162
    :goto_4
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->isMerge()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Letx;->a:Landroid/app/Activity;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v1, v4}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v1

    move v4, v1

    .line 1164
    :goto_5
    iget-object v1, p0, Letx;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1165
    if-eqz v1, :cond_4

    .line 1166
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1167
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1168
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1169
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1170
    iget-object v3, p0, Letx;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1204
    :cond_4
    iget-object v1, p0, Letx;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Letx;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1205
    iget-object v3, p0, Letx;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->isMerge()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Letx;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lemt$b;->ui_common_level1_text_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_6
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1207
    iget-object v3, p0, Letx;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->isMerge()Z

    move-result v1

    if-eqz v1, :cond_f

    const/high16 v1, 0x41880000    # 17.0f

    :goto_7
    invoke-virtual {v3, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1213
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    iget-object v3, p0, Letx;->a:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1215
    iget-object v3, p0, Letx;->l:Landroid/view/View;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->isMerge()Z

    move-result v1

    if-nez v1, :cond_10

    move v1, v5

    :goto_8
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    :cond_5
    iget-object v1, p0, Letx;->g:Landroid/widget/TextView;

    iget-object v3, p0, Letx;->a:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/MsgModel;->getDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Letx;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1219
    iget-object v3, p0, Letx;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->isMerge()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Letx;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lemt$b;->ui_common_level2_text_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_9
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1221
    iget-object v3, p0, Letx;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->isMerge()Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v2

    :goto_a
    invoke-virtual {v3, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2176
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 2177
    iget-object v1, p0, Letx;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->getCreateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2178
    iget-object v1, p0, Letx;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2179
    iget-object v3, p0, Letx;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->isMerge()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Letx;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lemt$b;->uidic_global_color_6_7:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_b
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2181
    iget-object v1, p0, Letx;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->isMerge()Z

    move-result v3

    if-eqz v3, :cond_6

    const/high16 v2, 0x41400000    # 12.0f

    :cond_6
    invoke-virtual {v1, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2189
    :goto_c
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->isMixed()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_MERGED_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->getLogSearchType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_MERGED_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 2190
    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->getLogSearchType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2191
    :cond_8
    iget-object v1, p0, Letx;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2192
    iget-object v1, p0, Letx;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1152
    :cond_9
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->getAvatar()Ljava/util/List;

    move-result-object v1

    goto/16 :goto_1

    .line 1155
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 1156
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/SearchUserIconObject;

    .line 1157
    iget-object v3, p0, Letx;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v3, v1, p2}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/android/search/SearchUserIconObject;Landroid/widget/AbsListView;)V

    .line 1158
    iget-object v1, p0, Letx;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/MsgModel;->fillAvatarRightBottomIconRes(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    goto/16 :goto_2

    :cond_b
    move v1, v2

    .line 1160
    goto/16 :goto_3

    .line 1161
    :cond_c
    iget-object v1, p0, Letx;->a:Landroid/app/Activity;

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v1, v3}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v1

    move v3, v1

    goto/16 :goto_4

    .line 1162
    :cond_d
    iget-object v1, p0, Letx;->a:Landroid/app/Activity;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v1, v4}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v1

    move v4, v1

    goto/16 :goto_5

    .line 1205
    :cond_e
    iget-object v1, p0, Letx;->a:Landroid/app/Activity;

    .line 1206
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lemt$b;->ui_common_level2_text_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto/16 :goto_6

    :cond_f
    move v1, v2

    .line 1207
    goto/16 :goto_7

    :cond_10
    move v1, v6

    .line 1215
    goto/16 :goto_8

    .line 1219
    :cond_11
    iget-object v1, p0, Letx;->a:Landroid/app/Activity;

    .line 1220
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lemt$b;->ui_common_level1_text_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto/16 :goto_9

    .line 1221
    :cond_12
    const/high16 v1, 0x41880000    # 17.0f

    goto/16 :goto_a

    .line 2179
    :cond_13
    iget-object v1, p0, Letx;->a:Landroid/app/Activity;

    .line 2180
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lemt$b;->ui_common_level3_text_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto/16 :goto_b

    .line 2183
    :cond_14
    iget-object v1, p0, Letx;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 2193
    :cond_15
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->isMixed()Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_UNMERGED_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->getLogSearchType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    :cond_16
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_UNMERGED_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 2194
    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->getLogSearchType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2195
    :cond_17
    iget-object v1, p0, Letx;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2196
    iget-object v1, p0, Letx;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2198
    :cond_18
    iget-object v1, p0, Letx;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2199
    iget-object v1, p0, Letx;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method
