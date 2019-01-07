.class public final Lfnq;
.super Lfxq;
.source "ExternalListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfnq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/widget/CheckBox;

.field public b:Z

.field private c:I

.field private d:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;ZJ)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "chooseMode"    # I
    .param p3, "orgPersonChooseControl"    # Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;
    .param p4, "showChannelFocusStates"    # Z
    .param p5, "orgId"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lfnq;->c:I

    .line 51
    iput p2, p0, Lfnq;->c:I

    .line 52
    iput-object p3, p0, Lfnq;->d:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    .line 53
    iput-boolean p4, p0, Lfnq;->e:Z

    .line 54
    iput-wide p5, p0, Lfnq;->f:J

    .line 55
    return-void
.end method

.method static synthetic a(Lfnq;)I
    .locals 1
    .param p0, "x0"    # Lfnq;

    .prologue
    .line 39
    iget v0, p0, Lfnq;->c:I

    return v0
.end method

.method static synthetic b(Lfnq;)Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;
    .locals 1
    .param p0, "x0"    # Lfnq;

    .prologue
    .line 39
    iget-object v0, p0, Lfnq;->d:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    return-object v0
.end method

.method static synthetic c(Lfnq;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lfnq;

    .prologue
    .line 39
    iget-object v0, p0, Lfnq;->a:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic d(Lfnq;)J
    .locals 2
    .param p0, "x0"    # Lfnq;

    .prologue
    .line 39
    iget-wide v0, p0, Lfnq;->f:J

    return-wide v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 97
    if-nez p2, :cond_2

    .line 98
    move-object/from16 v0, p0

    iget-object v10, v0, Lfnq;->i:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    sget v11, Lezg$j;->external_list_item_layout:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 99
    new-instance v1, Lfnq$a;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lfnq$a;-><init>(Landroid/view/View;)V

    .line 100
    .local v1, "holder":Lfnq$a;
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lfnq;->h:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 105
    .local v6, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v6, :cond_a

    .line 106
    iget-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v11, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v10, v11}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v8

    .line 1211
    .local v8, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v11, v1, Lfnq$a;->a:Landroid/widget/CheckBox;

    .line 107
    move-object/from16 v0, p0

    iget v10, v0, Lfnq;->c:I

    if-nez v10, :cond_3

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v11, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 108
    iget-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v10, :cond_a

    iget-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v10, :cond_a

    .line 109
    move-object/from16 v0, p0

    iget-object v10, v0, Lfnq;->d:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    if-eqz v10, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-object v10, v0, Lfnq;->d:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v10, v8}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v7

    .line 2211
    .local v7, "selected":Z
    iget-object v10, v1, Lfnq$a;->a:Landroid/widget/CheckBox;

    .line 111
    invoke-virtual {v10, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3211
    .end local v7    # "selected":Z
    :cond_0
    iget-object v11, v1, Lfnq$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 113
    iget-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v10, :cond_1

    iget-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_4

    :cond_1
    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v10}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setShowInactiveMask(Z)V

    .line 4211
    iget-object v10, v1, Lfnq$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 114
    iget-object v11, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v11, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v12, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v12, v12, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5211
    iget-object v10, v1, Lfnq$a;->c:Landroid/widget/TextView;

    .line 115
    iget-object v11, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v11, v11, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->followerEmpName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 6211
    iget-object v10, v1, Lfnq$a;->d:Landroid/widget/TextView;

    .line 117
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7211
    iget-object v10, v1, Lfnq$a;->d:Landroid/widget/TextView;

    .line 118
    move-object/from16 v0, p0

    iget-object v11, v0, Lfnq;->i:Landroid/app/Activity;

    sget v12, Lezg$l;->dt_external_at_incharge:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v15, v15, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->followerEmpName:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_3
    iget-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->companyName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 9211
    iget-object v10, v1, Lfnq$a;->e:Landroid/widget/TextView;

    .line 123
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10211
    iget-object v10, v1, Lfnq$a;->e:Landroid/widget/TextView;

    .line 124
    iget-object v11, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v11, v11, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->companyName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_4
    iget-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->labels:Ljava/util/List;

    if-eqz v10, :cond_8

    iget-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->labels:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_8

    .line 12211
    iget-object v10, v1, Lfnq$a;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 129
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 13211
    iget-object v10, v1, Lfnq$a;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 130
    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildCount()I

    move-result v3

    .line 131
    .local v3, "l":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v3, :cond_9

    .line 14211
    iget-object v10, v1, Lfnq$a;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 132
    invoke-virtual {v10, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 133
    .local v9, "v":Landroid/widget/TextView;
    iget-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->labels:Ljava/util/List;

    if-eqz v10, :cond_7

    iget-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->labels:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_7

    .line 134
    iget-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->labels:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .line 135
    .local v5, "m":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    const/high16 v11, -0x1000000

    or-int/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    .end local v5    # "m":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 102
    .end local v1    # "holder":Lfnq$a;
    .end local v2    # "i":I
    .end local v3    # "l":I
    .end local v6    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v8    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v9    # "v":Landroid/widget/TextView;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfnq$a;

    .restart local v1    # "holder":Lfnq$a;
    goto/16 :goto_0

    .line 107
    .restart local v6    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .restart local v8    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    const/16 v10, 0x8

    goto/16 :goto_1

    .line 113
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 8211
    :cond_5
    iget-object v10, v1, Lfnq$a;->d:Landroid/widget/TextView;

    .line 120
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 11211
    :cond_6
    iget-object v10, v1, Lfnq$a;->e:Landroid/widget/TextView;

    .line 126
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 139
    .restart local v2    # "i":I
    .restart local v3    # "l":I
    .restart local v9    # "v":Landroid/widget/TextView;
    :cond_7
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 15211
    .end local v2    # "i":I
    .end local v3    # "l":I
    .end local v9    # "v":Landroid/widget/TextView;
    :cond_8
    iget-object v10, v1, Lfnq$a;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 143
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 145
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lfnq;->e:Z

    if-eqz v10, :cond_c

    iget-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->subChannelStatus:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_c

    .line 16211
    iget-object v10, v1, Lfnq$a;->a:Landroid/widget/CheckBox;

    .line 146
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 17211
    iget-object v10, v1, Lfnq$a;->a:Landroid/widget/CheckBox;

    .line 147
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 148
    const/high16 v10, 0x3f000000    # 0.5f

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 149
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22211
    .end local v8    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_a
    :goto_7
    iget-object v10, v1, Lfnq$a;->g:Landroid/view/View;

    .line 195
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 196
    .local v4, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v4, :cond_b

    .line 197
    invoke-virtual/range {p0 .. p0}, Lfnq;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    move/from16 v0, p1

    if-ne v0, v10, :cond_f

    .line 198
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 24211
    :goto_8
    iget-object v10, v1, Lfnq$a;->g:Landroid/view/View;

    .line 206
    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    :cond_b
    return-object p2

    .line 150
    .end local v4    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v8    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lfnq;->d:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lfnq;->d:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v10, v8}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 18211
    iget-object v10, v1, Lfnq$a;->a:Landroid/widget/CheckBox;

    .line 151
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 19211
    iget-object v10, v1, Lfnq$a;->a:Landroid/widget/CheckBox;

    .line 152
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 153
    const/high16 v10, 0x3f000000    # 0.5f

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 154
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 155
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lfnq;->d:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    if-eqz v10, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Lfnq;->d:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v10, v8}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 20211
    iget-object v10, v1, Lfnq$a;->a:Landroid/widget/CheckBox;

    .line 156
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 157
    const/high16 v10, 0x3f000000    # 0.5f

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 158
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 21211
    :cond_e
    iget-object v10, v1, Lfnq$a;->a:Landroid/widget/CheckBox;

    .line 160
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 161
    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 162
    new-instance v10, Lfnq$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v6, v8}, Lfnq$1;-><init>(Lfnq;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 23211
    .end local v8    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .restart local v4    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_f
    iget-object v10, v1, Lfnq$a;->a:Landroid/widget/CheckBox;

    .line 200
    invoke-virtual {v10}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_10

    .line 201
    invoke-virtual/range {p0 .. p0}, Lfnq;->e()Landroid/app/Activity;

    move-result-object v10

    const/high16 v11, 0x42d80000    # 108.0f

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_8

    .line 203
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lfnq;->e()Landroid/app/Activity;

    move-result-object v10

    const/high16 v11, 0x42900000    # 72.0f

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_8
.end method

.method public final notifyDataSetChanged()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lfnq;->a:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lfnq;->h:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfnq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 69
    iget-object v2, p0, Lfnq;->a:Landroid/widget/CheckBox;

    .line 1078
    iget-object v0, p0, Lfnq;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfnq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lfnq;->d:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    if-eqz v0, :cond_2

    .line 1079
    iget-object v0, p0, Lfnq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1080
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    .line 1081
    iget-object v5, p0, Lfnq;->d:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v5, v4}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lfnq;->d:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    .line 1082
    invoke-virtual {v5, v4}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lfnq;->e:Z

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v5, :cond_1

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->subChannelStatus:Ljava/lang/Integer;

    .line 1083
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    :cond_1
    iget-object v0, p0, Lfnq;->d:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    move v0, v1

    .line 69
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 74
    :cond_3
    :goto_1
    invoke-super {p0}, Lfxq;->notifyDataSetChanged()V

    .line 75
    return-void

    .line 1089
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :cond_5
    iget-object v0, p0, Lfnq;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
