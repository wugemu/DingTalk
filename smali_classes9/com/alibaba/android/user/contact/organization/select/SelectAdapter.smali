.class public final Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;
.super Lfxq;
.source "SelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;,
        Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lcom/alibaba/android/user/contact/organization/select/SelectModel;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lfki;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;)Lfki;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->a:Lfki;

    return-object v0
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 55
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/organization/select/SelectModel;

    .line 56
    .local v0, "data":Lcom/alibaba/android/user/contact/organization/select/SelectModel;
    iget-object v1, v0, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->orgDeptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->DEPT:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->ordinal()I

    move-result v1

    .line 59
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->USER:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->ordinal()I

    move-result v1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->getItemViewType(I)I

    move-result v3

    .line 65
    .local v3, "type":I
    sget-object v5, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->DEPT:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->ordinal()I

    move-result v2

    .line 66
    .local v2, "nextType":I
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_0

    .line 67
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->getItemViewType(I)I

    move-result v2

    .line 69
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->h:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/organization/select/SelectModel;

    .line 70
    .local v1, "model":Lcom/alibaba/android/user/contact/organization/select/SelectModel;
    const/4 v4, 0x0

    .line 71
    .local v4, "viewHolder":Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;
    sget-object v5, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->USER:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->ordinal()I

    move-result v5

    if-ne v5, v3, :cond_5

    .line 72
    if-nez p2, :cond_2

    .line 73
    new-instance v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;

    .end local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;
    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;-><init>(Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;)V

    .line 74
    .restart local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->i:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lezg$j;->item_select_result:I

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    sget v5, Lezg$h;->tv_avatar:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 76
    sget v5, Lezg$h;->tv_nick:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->b:Landroid/widget/TextView;

    .line 77
    sget v5, Lezg$h;->icon_remove:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->c:Landroid/widget/TextView;

    .line 78
    sget v5, Lezg$h;->divider_line:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->d:Landroid/view/View;

    .line 79
    sget v5, Lezg$h;->v_mask:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->f:Landroid/view/View;

    .line 80
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :goto_0
    if-eqz v1, :cond_1

    if-nez v4, :cond_3

    :cond_1
    move-object v0, p2

    .line 141
    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "convertView":Landroid/view/View;
    :goto_1
    return-object v0

    .line 82
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;
    check-cast v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;

    .restart local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;
    goto :goto_0

    .line 88
    :cond_3
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v6, v1, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->userObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v7, v1, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->userObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 89
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->b:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->userObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_4
    :goto_2
    iget-boolean v5, v1, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->isClick:Z

    if-eqz v5, :cond_a

    .line 119
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->f:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 128
    :goto_3
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->c:Landroid/widget/TextView;

    new-instance v6, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$1;

    invoke-direct {v6, p0, p1, v1}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$1;-><init>(Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;ILcom/alibaba/android/user/contact/organization/select/SelectModel;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, p2

    .line 141
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto :goto_1

    .line 92
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_5
    sget-object v5, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->DEPT:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->ordinal()I

    move-result v5

    if-ne v3, v5, :cond_4

    .line 93
    if-nez p2, :cond_7

    .line 94
    new-instance v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;

    .end local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;
    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;-><init>(Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;)V

    .line 95
    .restart local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->i:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lezg$j;->item_select_dept_result:I

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    sget v5, Lezg$h;->divider_dept_employee:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->e:Landroid/view/View;

    .line 97
    sget v5, Lezg$h;->tv_nick:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->b:Landroid/widget/TextView;

    .line 98
    sget v5, Lezg$h;->icon_remove:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->c:Landroid/widget/TextView;

    .line 99
    sget v5, Lezg$h;->divider_line:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->d:Landroid/view/View;

    .line 100
    sget v5, Lezg$h;->v_mask:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->f:Landroid/view/View;

    .line 101
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    :goto_4
    if-eqz v1, :cond_6

    if-nez v4, :cond_8

    :cond_6
    move-object v0, p2

    .line 107
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto/16 :goto_1

    .line 103
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;
    check-cast v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;

    .restart local v4    # "viewHolder":Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;
    goto :goto_4

    .line 110
    :cond_8
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->b:Landroid/widget/TextView;

    const-string/jumbo v6, "%1$s (%2$d)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->orgDeptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    aput-object v8, v7, v9

    iget-object v8, v1, Lcom/alibaba/android/user/contact/organization/select/SelectModel;->orgDeptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    if-eq v2, v3, :cond_9

    .line 112
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->e:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 114
    :cond_9
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->e:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 123
    :cond_a
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->f:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->c:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v5, v4, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x2

    return v0
.end method
