.class public final Lfxt;
.super Landroid/widget/BaseAdapter;
.source "UserBrowserAdapter.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    iput-object p1, p0, Lfxt;->b:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Lfxt;->a:Ljava/util/List;

    .line 60
    return-void
.end method

.method static synthetic a(Lfxt;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfxt;

    .prologue
    .line 51
    iget-object v0, p0, Lfxt;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lfxt;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfxt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lfxt;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lfxt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lfxt;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lfxt;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 217
    .local v0, "nodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v0, :cond_0

    .line 218
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->ordinal()I

    move-result v1

    .line 220
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    invoke-virtual/range {p0 .. p1}, Lfxt;->getItemViewType(I)I

    move-result v12

    .line 83
    .local v12, "type":I
    const/4 v10, -0x1

    .line 84
    .local v10, "nextType":I
    invoke-virtual/range {p0 .. p0}, Lfxt;->getCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p1

    if-ge v0, v14, :cond_0

    .line 85
    add-int/lit8 v14, p1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lfxt;->getItemViewType(I)I

    move-result v10

    .line 87
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lfxt;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 88
    .local v11, "nodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-nez v11, :cond_1

    move-object/from16 v2, p2

    .line 211
    .end local p2    # "convertView":Landroid/view/View;
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .local v2, "convertView":Landroid/view/View;
    :goto_0
    return-object v2

    .line 91
    .end local v2    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    sget-object v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->ordinal()I

    move-result v14

    if-ne v12, v14, :cond_6

    .line 93
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lfxu;

    if-eqz v14, :cond_3

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfxu;

    .line 104
    .local v8, "holder":Lfxu;
    :goto_1
    iget-object v4, v11, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 105
    .local v4, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-object v14, v8, Lfxu;->b:Landroid/widget/TextView;

    iget v15, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v14, v8, Lfxu;->a:Landroid/widget/TextView;

    iget-object v15, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget v14, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    if-gtz v14, :cond_4

    .line 108
    iget-object v14, v8, Lfxu;->d:Landroid/widget/ImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    :goto_2
    new-instance v14, Lfxt$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4, v11}, Lfxt$1;-><init>(Lfxt;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    if-eq v12, v10, :cond_2

    const/4 v14, -0x1

    if-ne v10, v14, :cond_5

    .line 126
    :cond_2
    iget-object v14, v8, Lfxu;->c:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .end local v4    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v8    # "holder":Lfxu;
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :goto_3
    move-object/from16 v2, p2

    .line 211
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v2    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 96
    .end local v2    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_3
    new-instance v8, Lfxu;

    invoke-direct {v8}, Lfxu;-><init>()V

    .line 97
    .restart local v8    # "holder":Lfxu;
    move-object/from16 v0, p0

    iget-object v14, v0, Lfxt;->b:Landroid/app/Activity;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    sget v15, Lfxs$b;->user_kit_browser_item_dept:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 98
    sget v14, Lfxs$a;->tv_dept_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v8, Lfxu;->a:Landroid/widget/TextView;

    .line 99
    sget v14, Lfxs$a;->tv_dept_mem_count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v8, Lfxu;->b:Landroid/widget/TextView;

    .line 100
    sget v14, Lfxs$a;->divider_dept_employee:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v8, Lfxu;->c:Landroid/view/View;

    .line 101
    sget v14, Lfxs$a;->expand:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v8, Lfxu;->d:Landroid/widget/ImageView;

    .line 102
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 110
    .restart local v4    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_4
    iget-object v14, v8, Lfxu;->d:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 128
    :cond_5
    iget-object v14, v8, Lfxu;->c:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 132
    .end local v4    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v8    # "holder":Lfxu;
    :cond_6
    if-eqz p2, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lfxv;

    if-eqz v14, :cond_b

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfxv;

    .line 146
    .local v8, "holder":Lfxv;
    :goto_4
    iget-object v7, v11, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 147
    .local v7, "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    iget-object v13, v11, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 149
    .local v13, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {v7, v13}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    .line 151
    .local v3, "currentSelectModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v13, :cond_7

    .line 152
    iget-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v14, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 153
    iget-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v14, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 155
    if-eqz v7, :cond_7

    .line 156
    iget-object v14, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v14, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    .line 157
    iget-object v14, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v14, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    .line 161
    :cond_7
    iget-object v14, v8, Lfxv;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 162
    invoke-virtual {v14}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 163
    .local v1, "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v14, v8, Lfxv;->d:Landroid/view/View;

    .line 164
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 165
    .local v6, "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v7, :cond_8

    iget-object v14, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 166
    :cond_8
    iget-object v14, v8, Lfxv;->c:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Lfxt;->b:Landroid/app/Activity;

    const/high16 v15, 0x41900000    # 18.0f

    invoke-static {v14, v15}, Lcms;->c(Landroid/content/Context;F)I

    move-result v14

    iput v14, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lfxt;->b:Landroid/app/Activity;

    const/high16 v15, 0x41900000    # 18.0f

    invoke-static {v14, v15}, Lcms;->c(Landroid/content/Context;F)I

    move-result v14

    iput v14, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 177
    :goto_5
    const-string/jumbo v5, ""

    .line 178
    .local v5, "displayName":Ljava/lang/String;
    if-eqz v7, :cond_d

    iget-object v14, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 179
    iget-object v5, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 183
    :cond_9
    :goto_6
    if-nez v5, :cond_a

    .line 184
    const-string/jumbo v5, ""

    .line 187
    :cond_a
    iget-object v14, v8, Lfxv;->b:Landroid/widget/TextView;

    .line 2224
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    if-eqz v7, :cond_f

    iget-object v9, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    .line 189
    .local v9, "mediaId":Ljava/lang/String;
    :goto_7
    iget-object v14, v8, Lfxv;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    move-object/from16 v0, p3

    invoke-virtual {v14, v5, v9, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 190
    if-eqz v7, :cond_11

    iget-boolean v14, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->hasSubordinate:Z

    if-eqz v14, :cond_11

    .line 191
    iget-object v14, v8, Lfxv;->f:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :goto_8
    new-instance v14, Lfxt$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13}, Lfxt$2;-><init>(Lfxt;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lfxt;->getCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_12

    .line 206
    iget-object v14, v8, Lfxv;->d:Landroid/view/View;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 135
    .end local v1    # "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "currentSelectModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v6    # "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .end local v8    # "holder":Lfxv;
    .end local v9    # "mediaId":Ljava/lang/String;
    .end local v13    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_b
    new-instance v8, Lfxv;

    invoke-direct {v8}, Lfxv;-><init>()V

    .line 136
    .restart local v8    # "holder":Lfxv;
    move-object/from16 v0, p0

    iget-object v14, v0, Lfxt;->b:Landroid/app/Activity;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    sget v15, Lfxs$b;->user_kit_browser_item_user:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 137
    sget v14, Lfxs$a;->tv_contact_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v8, Lfxv;->b:Landroid/widget/TextView;

    .line 138
    sget v14, Lfxs$a;->tv_contact_title:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v8, Lfxv;->c:Landroid/widget/TextView;

    .line 139
    sget v14, Lfxs$a;->divider_line:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v8, Lfxv;->d:Landroid/view/View;

    .line 140
    sget v14, Lfxs$a;->tv_avatar:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v14, v8, Lfxv;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 141
    sget v14, Lfxs$a;->checkbox:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    iput-object v14, v8, Lfxv;->e:Landroid/widget/CheckBox;

    .line 142
    sget v14, Lfxs$a;->expand:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v8, Lfxv;->f:Landroid/view/View;

    .line 143
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 170
    .restart local v1    # "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3    # "currentSelectModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .restart local v6    # "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v7    # "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .restart local v13    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_c
    iget-object v14, v8, Lfxv;->c:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v14, v0, Lfxt;->b:Landroid/app/Activity;

    const/high16 v15, 0x41000000    # 8.0f

    invoke-static {v14, v15}, Lcms;->c(Landroid/content/Context;F)I

    move-result v14

    iput v14, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lfxt;->b:Landroid/app/Activity;

    const/high16 v15, 0x41200000    # 10.0f

    invoke-static {v14, v15}, Lcms;->c(Landroid/content/Context;F)I

    move-result v14

    iput v14, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 173
    iget-object v14, v8, Lfxv;->c:Landroid/widget/TextView;

    iget-object v15, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v14, v8, Lfxv;->c:Landroid/widget/TextView;

    .line 1232
    iget-object v15, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    .line 1233
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 180
    .restart local v5    # "displayName":Ljava/lang/String;
    :cond_d
    if-eqz v13, :cond_9

    .line 181
    iget-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_e

    iget-object v5, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    goto/16 :goto_6

    :cond_e
    iget-object v5, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto/16 :goto_6

    .line 188
    :cond_f
    if-eqz v13, :cond_10

    iget-object v9, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    goto/16 :goto_7

    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 193
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .restart local v9    # "mediaId":Ljava/lang/String;
    :cond_11
    iget-object v14, v8, Lfxv;->f:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 208
    :cond_12
    iget-object v14, v8, Lfxv;->d:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method
