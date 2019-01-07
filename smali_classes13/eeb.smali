.class public final Leeb;
.super Landroid/widget/BaseAdapter;
.source "AttendanceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leeb$b;,
        Leeb$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lefz;",
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
            "Lefz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lefz;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    iput-object p1, p0, Leeb;->b:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Leeb;->a:Ljava/util/List;

    .line 62
    return-void
.end method

.method static synthetic a(Leeb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Leeb;

    .prologue
    .line 53
    iget-object v0, p0, Leeb;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Leeb;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Leeb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v0, p0, Leeb;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Leeb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 72
    iget-object v0, p0, Leeb;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Leeb;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lefz;

    .line 220
    .local v1, "nodeItemObject":Lefz;
    if-eqz v1, :cond_0

    .line 221
    iget-object v0, v1, Lefz;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 222
    .local v0, "data":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->ordinal()I

    move-result v2

    .line 224
    .end local v0    # "data":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 84
    invoke-virtual/range {p0 .. p1}, Leeb;->getItemViewType(I)I

    move-result v12

    .line 85
    .local v12, "type":I
    const/4 v10, -0x1

    .line 86
    .local v10, "nextType":I
    invoke-virtual/range {p0 .. p0}, Leeb;->getCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p1

    if-ge v0, v14, :cond_0

    .line 87
    add-int/lit8 v14, p1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Leeb;->getItemViewType(I)I

    move-result v10

    .line 89
    :cond_0
    invoke-virtual/range {p0 .. p1}, Leeb;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lefz;

    .line 90
    .local v11, "nodeItemObject":Lefz;
    if-nez v11, :cond_1

    move-object/from16 v2, p2

    .line 214
    .end local p2    # "convertView":Landroid/view/View;
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .local v2, "convertView":Landroid/view/View;
    :goto_0
    return-object v2

    .line 93
    .end local v2    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    sget-object v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->ordinal()I

    move-result v14

    if-ne v12, v14, :cond_6

    .line 95
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Leeb$a;

    if-eqz v14, :cond_3

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Leeb$a;

    .line 106
    .local v8, "holder":Leeb$a;
    :goto_1
    iget-object v14, v11, Lefz;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v4, v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 107
    .local v4, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-object v14, v8, Leeb$a;->b:Landroid/widget/TextView;

    iget v15, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v14, v8, Leeb$a;->a:Landroid/widget/TextView;

    iget-object v15, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget v14, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    if-gtz v14, :cond_4

    .line 110
    iget-object v14, v8, Leeb$a;->d:Landroid/widget/ImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    :goto_2
    new-instance v14, Leeb$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4, v11}, Leeb$1;-><init>(Leeb;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;Lefz;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    if-eq v12, v10, :cond_2

    const/4 v14, -0x1

    if-ne v10, v14, :cond_5

    .line 128
    :cond_2
    iget-object v14, v8, Leeb$a;->c:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .end local v4    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v8    # "holder":Leeb$a;
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :goto_3
    move-object/from16 v2, p2

    .line 214
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v2    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 98
    .end local v2    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_3
    new-instance v8, Leeb$a;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14}, Leeb$a;-><init>(Leeb;B)V

    .line 99
    .restart local v8    # "holder":Leeb$a;
    move-object/from16 v0, p0

    iget-object v14, v0, Leeb;->b:Landroid/app/Activity;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    sget v15, Ledz$g;->oa_item_org_dept:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 100
    sget v14, Ledz$f;->tv_dept_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v8, Leeb$a;->a:Landroid/widget/TextView;

    .line 101
    sget v14, Ledz$f;->tv_dept_mem_count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v8, Leeb$a;->b:Landroid/widget/TextView;

    .line 102
    sget v14, Ledz$f;->divider_dept_employee:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v8, Leeb$a;->c:Landroid/view/View;

    .line 103
    sget v14, Ledz$f;->expand:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v8, Leeb$a;->d:Landroid/widget/ImageView;

    .line 104
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 112
    .restart local v4    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_4
    iget-object v14, v8, Leeb$a;->d:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 130
    :cond_5
    iget-object v14, v8, Leeb$a;->c:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 134
    .end local v4    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v8    # "holder":Leeb$a;
    :cond_6
    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Leeb$b;

    if-eqz v14, :cond_a

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Leeb$b;

    .line 148
    .local v8, "holder":Leeb$b;
    :goto_4
    iget-object v14, v11, Lefz;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v7, v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 149
    .local v7, "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    iget-object v14, v11, Lefz;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v13, v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 151
    .local v13, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {v7, v13}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    .line 153
    .local v3, "currentSelectModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v13, :cond_7

    .line 154
    iget-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v14, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 155
    iget-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v14, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 157
    iget-object v14, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v14, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    .line 158
    iget-object v14, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v14, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    .line 161
    :cond_7
    iget-object v14, v8, Leeb$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 162
    invoke-virtual {v14}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 163
    .local v1, "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v14, v8, Leeb$b;->d:Landroid/view/View;

    .line 164
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 165
    .local v6, "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v14, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 166
    iget-object v14, v8, Leeb$b;->c:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Leeb;->b:Landroid/app/Activity;

    const/high16 v15, 0x41900000    # 18.0f

    invoke-static {v14, v15}, Lcms;->c(Landroid/content/Context;F)I

    move-result v14

    iput v14, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Leeb;->b:Landroid/app/Activity;

    const/high16 v15, 0x41900000    # 18.0f

    invoke-static {v14, v15}, Lcms;->c(Landroid/content/Context;F)I

    move-result v14

    iput v14, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 177
    :goto_5
    const-string/jumbo v5, ""

    .line 178
    .local v5, "displayName":Ljava/lang/String;
    if-eqz v7, :cond_c

    iget-object v14, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 179
    iget-object v5, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 183
    :cond_8
    :goto_6
    if-nez v5, :cond_9

    .line 184
    const-string/jumbo v5, ""

    .line 187
    :cond_9
    iget-object v14, v8, Leeb$b;->b:Landroid/widget/TextView;

    .line 2228
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v14, v8, Leeb$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    check-cast p3, Landroid/widget/AbsListView;

    .line 2232
    .end local p3    # "parent":Landroid/view/ViewGroup;
    iget-object v15, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v14, v5, v15, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 189
    iget-boolean v14, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->hasSubordinate:Z

    if-eqz v14, :cond_e

    .line 190
    iget-object v14, v8, Leeb$b;->f:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :goto_7
    iget-object v9, v11, Lefz;->b:Ljava/lang/String;

    .line 196
    .local v9, "navUrl":Ljava/lang/String;
    new-instance v14, Leeb$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9, v7}, Leeb$2;-><init>(Leeb;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Leeb;->getCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_f

    .line 209
    iget-object v14, v8, Leeb$b;->d:Landroid/view/View;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 137
    .end local v1    # "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "currentSelectModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v6    # "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .end local v8    # "holder":Leeb$b;
    .end local v9    # "navUrl":Ljava/lang/String;
    .end local v13    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_a
    new-instance v8, Leeb$b;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14}, Leeb$b;-><init>(Leeb;B)V

    .line 138
    .restart local v8    # "holder":Leeb$b;
    move-object/from16 v0, p0

    iget-object v14, v0, Leeb;->b:Landroid/app/Activity;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    sget v15, Ledz$g;->oa_item_contact:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 139
    sget v14, Ledz$f;->tv_contact_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v8, Leeb$b;->b:Landroid/widget/TextView;

    .line 140
    sget v14, Ledz$f;->tv_contact_title:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v8, Leeb$b;->c:Landroid/widget/TextView;

    .line 141
    sget v14, Ledz$f;->divider_line:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v8, Leeb$b;->d:Landroid/view/View;

    .line 142
    sget v14, Ledz$f;->tv_avatar:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v14, v8, Leeb$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 143
    sget v14, Ledz$f;->checkbox:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    iput-object v14, v8, Leeb$b;->e:Landroid/widget/CheckBox;

    .line 144
    sget v14, Ledz$f;->expand:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v8, Leeb$b;->f:Landroid/view/View;

    .line 145
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 170
    .restart local v1    # "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3    # "currentSelectModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .restart local v6    # "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v7    # "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .restart local v13    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_b
    iget-object v14, v8, Leeb$b;->c:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v14, v0, Leeb;->b:Landroid/app/Activity;

    const/high16 v15, 0x41000000    # 8.0f

    invoke-static {v14, v15}, Lcms;->c(Landroid/content/Context;F)I

    move-result v14

    iput v14, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Leeb;->b:Landroid/app/Activity;

    const/high16 v15, 0x41200000    # 10.0f

    invoke-static {v14, v15}, Lcms;->c(Landroid/content/Context;F)I

    move-result v14

    iput v14, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 173
    iget-object v14, v8, Leeb$b;->c:Landroid/widget/TextView;

    iget-object v15, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v14, v8, Leeb$b;->c:Landroid/widget/TextView;

    .line 1240
    iget-object v15, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    .line 1241
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 180
    .restart local v5    # "displayName":Ljava/lang/String;
    :cond_c
    if-eqz v13, :cond_8

    .line 181
    iget-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_d

    iget-object v5, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    goto/16 :goto_6

    :cond_d
    iget-object v5, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto/16 :goto_6

    .line 192
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_e
    iget-object v14, v8, Leeb$b;->f:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 211
    .restart local v9    # "navUrl":Ljava/lang/String;
    :cond_f
    iget-object v14, v8, Leeb$b;->d:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method
