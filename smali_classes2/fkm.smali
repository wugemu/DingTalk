.class public Lfkm;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;
.source "VideoDeviceViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field l:Landroid/widget/TextView;

.field m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Landroid/view/View;

.field q:Landroid/view/View;

.field r:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;-><init>(Landroid/app/Activity;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 41
    sget v0, Lezg$h;->tv_letter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfkm;->l:Landroid/widget/TextView;

    .line 42
    sget v0, Lezg$h;->tv_friend_nick:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfkm;->n:Landroid/widget/TextView;

    .line 43
    sget v0, Lezg$h;->tv_org_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfkm;->o:Landroid/widget/TextView;

    .line 44
    sget v0, Lezg$h;->ll_org_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfkm;->p:Landroid/view/View;

    .line 45
    sget v0, Lezg$h;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfkm;->q:Landroid/view/View;

    .line 46
    sget v0, Lezg$h;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lfkm;->m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 47
    sget v0, Lezg$h;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfkm;->r:Landroid/widget/CheckBox;

    .line 48
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 4
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 77
    iget v1, p0, Lfkm;->b:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 78
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 79
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v1, p0, Lfkm;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lfkm;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    iget-object v1, p0, Lfkm;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->onSingleChoose(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    new-instance v1, Lfjl;

    iget-object v2, p0, Lfkm;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lfjl;-><init>(Landroid/app/Activity;)V

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v1, v2, v3}, Lfjl;->a(J)V

    goto :goto_0
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ILandroid/view/ViewGroup;)V
    .locals 6
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "position"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 52
    if-lez p2, :cond_1

    .line 53
    iget-object v0, p0, Lfkm;->e:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkm;->e:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->originalOrgId:J

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->originalOrgId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lfkm;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :goto_0
    iget-object v0, p0, Lfkm;->m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v1}, Lcpt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1, v2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 66
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 67
    iget-object v0, p0, Lfkm;->n:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_1
    iget-object v0, p0, Lfkm;->p:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 73
    return-void

    .line 57
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_0
    iget-object v0, p0, Lfkm;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lfkm;->l:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lfkm;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lfkm;->l:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v0, p0, Lfkm;->n:Landroid/widget/TextView;

    invoke-static {p1}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {p0, p1}, Lfkm;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {p0, p1, p2, p3}, Lfkm;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lezg$j;->item_friends:I

    return v0
.end method

.method public final e()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    return-object v0
.end method
