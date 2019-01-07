.class public final Lfmd;
.super Landroid/widget/BaseAdapter;
.source "CustomerFollowerAdapter.java"


# instance fields
.field public a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field public b:Ljava/lang/String;

.field private c:Landroid/app/Activity;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lfhx;

.field private f:Lfhx;

.field private g:I


# direct methods
.method public varargs constructor <init>(Landroid/app/Activity;Ljava/util/List;I[Lfhx;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "chooseType"    # I
    .param p4, "chooseControls"    # [Lfhx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;I[",
            "Lfhx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "orgNodeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    iput-object p1, p0, Lfmd;->c:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Lfmd;->d:Ljava/util/List;

    .line 62
    iput p3, p0, Lfmd;->g:I

    .line 63
    const/4 v0, 0x0

    aget-object v0, p4, v0

    iput-object v0, p0, Lfmd;->e:Lfhx;

    .line 64
    const/4 v0, 0x1

    aget-object v0, p4, v0

    iput-object v0, p0, Lfmd;->f:Lfhx;

    .line 65
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v2, p0, Lfmd;->d:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lfmd;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 177
    iget-object v2, p0, Lfmd;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 178
    .local v0, "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v3, v4, :cond_2

    .line 179
    iget-object v3, p0, Lfmd;->f:Lfhx;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-interface {v3, v4}, Lfhx;->c(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    .end local v0    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_1
    :goto_0
    return v1

    .line 182
    .restart local v0    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_2
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v3, v4, :cond_0

    .line 183
    iget-object v3, p0, Lfmd;->e:Lfhx;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    const/4 v5, 0x0

    .line 184
    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    .line 183
    invoke-interface {v3, v4}, Lfhx;->c(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 189
    .end local v0    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lfmd;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfmd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
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
    .line 79
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 84
    iget-object v2, p0, Lfmd;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 85
    .local v0, "data":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->ordinal()I

    move-result v1

    .line 86
    .local v1, "type":I
    iget v2, p0, Lfmd;->g:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 87
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v2, v3, :cond_1

    .line 88
    sget-object v2, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->FOLLOWER:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->ordinal()I

    move-result v1

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    sget-object v2, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->DEPT:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->ordinal()I

    move-result v1

    goto :goto_0

    .line 92
    :cond_2
    iget v2, p0, Lfmd;->g:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 93
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v2, v3, :cond_3

    .line 94
    sget-object v2, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->FOLLOWER:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->ordinal()I

    move-result v1

    goto :goto_0

    .line 96
    :cond_3
    sget-object v2, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->DEPT:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->ordinal()I

    move-result v1

    goto :goto_0

    .line 98
    :cond_4
    iget v2, p0, Lfmd;->g:I

    if-nez v2, :cond_6

    .line 99
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v2, v3, :cond_5

    .line 100
    sget-object v2, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->MULTIPLE_EMPLOYEE:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->ordinal()I

    move-result v1

    goto :goto_0

    .line 102
    :cond_5
    sget-object v2, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->MULTIPLE_DEPT:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->ordinal()I

    move-result v1

    goto :goto_0

    .line 104
    :cond_6
    iget v2, p0, Lfmd;->g:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 105
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v2, v3, :cond_7

    .line 106
    sget-object v2, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->MULTIPLE_EMPLOYEE:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->ordinal()I

    move-result v1

    goto :goto_0

    .line 108
    :cond_7
    sget-object v2, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->DEPT:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->ordinal()I

    move-result v1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lfmd;->getItemViewType(I)I

    move-result v3

    .line 122
    .local v3, "type":I
    const/4 v2, -0x1

    .line 123
    .local v2, "nextType":I
    invoke-virtual {p0}, Lfmd;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_0

    .line 124
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v5}, Lfmd;->getItemViewType(I)I

    move-result v2

    .line 127
    :cond_0
    if-nez p2, :cond_6

    .line 128
    iget-object v5, p0, Lfmd;->c:Landroid/app/Activity;

    invoke-static {v3, v5}, Lfim;->a(ILandroid/app/Activity;)Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;

    move-result-object v4

    .line 129
    .local v4, "viewHolder":Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;
    instance-of v5, v4, Lfii;

    if-eqz v5, :cond_1

    move-object v5, v4

    .line 130
    check-cast v5, Lfii;

    iget-object v6, p0, Lfmd;->b:Ljava/lang/String;

    .line 1084
    iput-object v6, v5, Lfii;->k:Ljava/lang/String;

    .line 133
    :cond_1
    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->a()Landroid/view/View;

    move-result-object p2

    .line 134
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 139
    :goto_0
    invoke-virtual {p0}, Lfmd;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->a(I)V

    .line 140
    if-eq v3, v2, :cond_2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_7

    :cond_2
    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->a(Z)V

    .line 141
    iget-object v5, p0, Lfmd;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v5, :cond_3

    .line 142
    iget-object v5, p0, Lfmd;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 145
    :cond_3
    iget-object v5, p0, Lfmd;->d:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 147
    .local v1, "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v1, :cond_5

    .line 148
    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v5, v6, :cond_8

    .line 149
    iget-object v5, p0, Lfmd;->f:Lfhx;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->a(Lfhx;)V

    .line 154
    :cond_4
    :goto_2
    invoke-virtual {v4, v1, p1, p3}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V

    .line 156
    move-object v0, v4

    .line 157
    .local v0, "holder":Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;
    new-instance v5, Lfmd$1;

    invoke-direct {v5, p0, v0, v1, p1}, Lfmd$1;-><init>(Lfmd;Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;I)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .end local v0    # "holder":Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;
    :cond_5
    return-object p2

    .line 136
    .end local v1    # "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v4    # "viewHolder":Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;

    .restart local v4    # "viewHolder":Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;
    goto :goto_0

    .line 140
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 150
    .restart local v1    # "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_8
    iget v5, p0, Lfmd;->g:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 151
    iget-object v5, p0, Lfmd;->e:Lfhx;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->a(Lfhx;)V

    goto :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->values()[Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
