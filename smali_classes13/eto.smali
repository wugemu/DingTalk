.class public final Leto;
.super Lete;
.source "ExternalContactSearchViewHolder.java"


# instance fields
.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/widget/CheckBox;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lete;-><init>(Landroid/app/Activity;I)V

    .line 68
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 77
    :cond_0
    sget v0, Lemt$e;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Leto;->k:Landroid/widget/CheckBox;

    .line 78
    sget v0, Lemt$e;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leto;->e:Landroid/widget/TextView;

    .line 79
    sget v0, Lemt$e;->tv_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leto;->f:Landroid/widget/TextView;

    .line 80
    sget v0, Lemt$e;->tv_owner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leto;->g:Landroid/widget/TextView;

    .line 81
    sget v0, Lemt$e;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Leto;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 82
    sget v0, Lemt$e;->label_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    iput-object v0, p0, Leto;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 83
    sget v0, Lemt$e;->iv_profile:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leto;->i:Landroid/view/View;

    .line 84
    sget v0, Lemt$e;->iv_call:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leto;->j:Landroid/view/View;

    .line 85
    sget v0, Lemt$e;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leto;->b:Landroid/view/View;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/AbsListView;)V
    .locals 15
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    if-nez p1, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/search/model/BaseModel;->getAvatar()Ljava/util/List;

    move-result-object v3

    .line 96
    .local v3, "userIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/SearchUserIconObject;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 97
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/SearchUserIconObject;

    .line 98
    .local v2, "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    iget-object v4, p0, Leto;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-object/from16 v0, p2

    invoke-static {v4, v2, v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/android/search/SearchUserIconObject;Landroid/widget/AbsListView;)V

    .line 101
    .end local v2    # "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    :cond_2
    iget-object v4, p0, Leto;->e:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Leto;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 102
    iget-object v4, p0, Leto;->f:Landroid/widget/TextView;

    iget-object v5, p0, Leto;->a:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/android/search/model/BaseModel;->getDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Leto;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 103
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/alibaba/android/search/model/ExternalContactModel;

    if-eqz v4, :cond_4

    move-object/from16 v1, p1

    .line 104
    check-cast v1, Lcom/alibaba/android/search/model/ExternalContactModel;

    .line 105
    .local v1, "externalContactModel":Lcom/alibaba/android/search/model/ExternalContactModel;
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/ExternalContactModel;->getOwnerName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 106
    iget-object v4, p0, Leto;->g:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :goto_1
    iget-object v10, p0, Leto;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/ExternalContactModel;->getLabelList()Ljava/util/List;

    move-result-object v11

    .line 1118
    if-eqz v11, :cond_3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_7

    .line 1119
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v10, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 1163
    .end local v1    # "externalContactModel":Lcom/alibaba/android/search/model/ExternalContactModel;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    .line 1164
    if-eqz v4, :cond_0

    .line 1167
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/search/model/BaseModel;->getChooseMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    .line 1169
    iget-object v5, p0, Leto;->i:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    iget-object v5, p0, Leto;->j:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    iget-object v5, p0, Leto;->i:Landroid/view/View;

    new-instance v6, Leto$1;

    move-object/from16 v0, p1

    invoke-direct {v6, p0, v0}, Leto$1;-><init>(Leto;Lcom/alibaba/android/search/model/BaseModel;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    iget-object v5, p0, Leto;->j:Landroid/view/View;

    new-instance v6, Leto$2;

    move-object/from16 v0, p1

    invoke-direct {v6, p0, v4, v0}, Leto$2;-><init>(Leto;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/search/model/BaseModel;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 108
    .restart local v1    # "externalContactModel":Lcom/alibaba/android/search/model/ExternalContactModel;
    :cond_5
    iget-object v4, p0, Leto;->g:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v5, p0, Leto;->g:Landroid/widget/TextView;

    iget-object v4, p0, Leto;->a:Landroid/app/Activity;

    if-eqz v4, :cond_6

    iget-object v4, p0, Leto;->a:Landroid/app/Activity;

    sget v6, Lemt$g;->dt_external_at_incharge:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/ExternalContactModel;->getOwnerName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/ExternalContactModel;->getOwnerName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1121
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 1123
    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildCount()I

    move-result v6

    .line 1124
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    .line 1125
    if-le v6, v7, :cond_a

    move v5, v6

    .line 1126
    :goto_3
    iget-object v4, p0, Leto;->a:Landroid/app/Activity;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v4, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v12

    .line 1127
    const/4 v4, 0x0

    move v9, v4

    :goto_4
    if-ge v9, v5, :cond_4

    .line 1128
    const/4 v4, 0x0

    .line 1129
    if-ge v9, v7, :cond_e

    .line 1130
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    move-object v8, v4

    .line 1133
    :goto_5
    const/4 v4, 0x0

    .line 1134
    if-ge v9, v6, :cond_8

    .line 1135
    invoke-virtual {v10, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    .line 1138
    :cond_8
    if-nez v8, :cond_b

    if-eqz v4, :cond_b

    .line 1139
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setVisibility(I)V

    .line 1127
    :cond_9
    :goto_6
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto :goto_4

    :cond_a
    move v5, v7

    .line 1125
    goto :goto_3

    .line 1140
    :cond_b
    if-eqz v8, :cond_9

    .line 1141
    if-nez v4, :cond_c

    .line 1142
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    iget-object v13, p0, Leto;->a:Landroid/app/Activity;

    invoke-direct {v4, v13}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;-><init>(Landroid/content/Context;)V

    .line 1143
    const/4 v13, 0x1

    const/high16 v14, 0x41400000    # 12.0f

    invoke-virtual {v4, v13, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextSize(IF)V

    .line 1144
    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v13}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1145
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setLines(I)V

    .line 1146
    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v13}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1147
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v4, v12, v13, v12, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setPadding(IIII)V

    .line 1148
    const/16 v13, 0x10

    invoke-virtual {v4, v13}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setGravity(I)V

    .line 1149
    iget-object v13, p0, Leto;->a:Landroid/app/Activity;

    const/high16 v14, 0x42c80000    # 100.0f

    invoke-static {v13, v14}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setMaxWidth(I)V

    .line 1150
    invoke-virtual {v10, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->addView(Landroid/view/View;)V

    .line 1152
    :cond_c
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setVisibility(I)V

    .line 1153
    iget-object v13, v8, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    invoke-virtual {v4, v13}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    iget v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextColor(I)V

    .line 1155
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->requestLayout()V

    goto :goto_6

    .line 1225
    .end local v1    # "externalContactModel":Lcom/alibaba/android/search/model/ExternalContactModel;
    :cond_d
    iget-object v4, p0, Leto;->i:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    iget-object v4, p0, Leto;->j:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .restart local v1    # "externalContactModel":Lcom/alibaba/android/search/model/ExternalContactModel;
    :cond_e
    move-object v8, v4

    goto :goto_5
.end method
