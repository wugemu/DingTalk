.class public Lfiw;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;
.source "CommonContactViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;",
        ">;"
    }
.end annotation


# instance fields
.field protected j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;-><init>(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lfiw;)I
    .locals 1
    .param p0, "x0"    # Lfiw;

    .prologue
    .line 43
    iget v0, p0, Lfiw;->b:I

    return v0
.end method

.method static synthetic b(Lfiw;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfiw;

    .prologue
    .line 43
    iget-object v0, p0, Lfiw;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic c(Lfiw;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfiw;

    .prologue
    .line 43
    iget-object v0, p0, Lfiw;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic d(Lfiw;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfiw;

    .prologue
    .line 43
    iget-object v0, p0, Lfiw;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic e(Lfiw;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfiw;

    .prologue
    .line 43
    iget-object v0, p0, Lfiw;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    sget v0, Lezg$h;->checkable_cell:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    iput-object v0, p0, Lfiw;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    .line 58
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;ILandroid/view/ViewGroup;)V
    .locals 8
    .param p1, "commonContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .param p2, "position"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgUserName:Ljava/lang/String;

    .line 63
    .local v1, "orgUserName":Ljava/lang/String;
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgNickName:Ljava/lang/String;

    invoke-static {v2}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgNickName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_0
    invoke-static {v1}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    invoke-static {p1}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)Ljava/lang/String;

    move-result-object v1

    .line 70
    :cond_1
    iget-object v3, p0, Lfiw;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->avatarMediaId:Ljava/lang/String;

    move-object v2, p3

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v3, v4, v5, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 71
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 72
    iget-boolean v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isFriend:Z

    if-eqz v2, :cond_3

    .line 73
    iget-object v2, p0, Lfiw;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    invoke-static {p1}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setTitle(Ljava/lang/String;)V

    .line 86
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :goto_0
    invoke-virtual {p0}, Lfiw;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_7

    .line 87
    iget-object v2, p0, Lfiw;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v2, v6, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 92
    :goto_1
    iget v2, p0, Lfiw;->b:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget v2, p0, Lfiw;->b:I

    if-ne v2, v7, :cond_8

    .line 93
    :cond_2
    iget-object v2, p0, Lfiw;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setCheckVisible(Z)V

    .line 98
    :goto_2
    iget-object v2, p0, Lfiw;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    new-instance v3, Lfiw$1;

    invoke-direct {v3, p0, p1}, Lfiw$1;-><init>(Lfiw;Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    return-void

    .line 74
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->localContactName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 75
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->alias:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->localContactName:Ljava/lang/String;

    .line 76
    .local v0, "nick":Ljava/lang/String;
    :goto_3
    iget-object v2, p0, Lfiw;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setTitle(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lfiw;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->avatarMediaId:Ljava/lang/String;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2, v0, v3, p3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 78
    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    goto :goto_0

    .line 75
    .end local v0    # "nick":Ljava/lang/String;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->alias:Ljava/lang/String;

    goto :goto_3

    .line 80
    :cond_5
    iget-object v2, p0, Lfiw;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    invoke-static {p1}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_6
    iget-object v2, p0, Lfiw;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_7
    iget-object v2, p0, Lfiw;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    const/16 v3, 0x8

    sget-object v4, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    goto :goto_1

    .line 95
    :cond_8
    iget-object v2, p0, Lfiw;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setCheckVisible(Z)V

    goto :goto_2
.end method

.method public final bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    invoke-virtual {p0, p1, p2, p3}, Lfiw;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lezg$j;->item_home_common_contact:I

    return v0
.end method

.method public final e()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 121
    const-class v0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    return-object v0
.end method
