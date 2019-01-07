.class public final Lfkz;
.super Landroid/widget/BaseAdapter;
.source "CheckMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfkz$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    iput-object p1, p0, Lfkz;->c:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lfkz;->a:Ljava/util/List;

    .line 52
    iget-object v1, p0, Lfkz;->a:Ljava/util/List;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfkz;->a:Ljava/util/List;

    .line 55
    :cond_0
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v1

    invoke-virtual {v1}, Lfku;->b()Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    move-result-object v0

    .line 56
    .local v0, "orgCreation":Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getSelectedBosses()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lfkz;->b:Ljava/util/Set;

    .line 59
    :cond_1
    return-void
.end method

.method static synthetic a(Lfkz;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lfkz;

    .prologue
    .line 43
    iget-object v0, p0, Lfkz;->b:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lfkz;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lfkz;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 43
    iput-object p1, p0, Lfkz;->b:Ljava/util/Set;

    return-object p1
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lfkz;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfkz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 88
    if-nez p2, :cond_0

    .line 89
    iget-object v3, p0, Lfkz;->c:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lezg$j;->item_check_member_grid:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 90
    new-instance v1, Lfkz$a;

    invoke-direct {v1, p0, v6}, Lfkz$a;-><init>(Lfkz;B)V

    .line 91
    .local v1, "holder":Lfkz$a;
    sget v3, Lezg$h;->iv_member_avatar:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v3, v1, Lfkz$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 92
    sget v3, Lezg$h;->tv_member_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lfkz$a;->b:Landroid/widget/TextView;

    .line 93
    sget v3, Lezg$h;->iv_member_check_icon:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lfkz$a;->c:Landroid/widget/ImageView;

    .line 94
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    :goto_0
    iget-object v3, v1, Lfkz$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v3, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 100
    iget-object v3, v1, Lfkz$a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v4, v1, Lfkz$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p0, Lfkz;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v3, p0, Lfkz;->a:Ljava/util/List;

    .line 103
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 102
    invoke-virtual {v4, v5, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lfkz;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    .line 105
    .local v2, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v4, v1, Lfkz$a;->b:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v3, p0, Lfkz;->b:Ljava/util/Set;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lfkz;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    iget-object v3, v1, Lfkz$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    :goto_2
    iget-object v0, v1, Lfkz$a;->c:Landroid/widget/ImageView;

    .line 114
    .local v0, "checkIcon":Landroid/widget/ImageView;
    new-instance v3, Lfkz$1;

    invoke-direct {v3, p0, v2, v0}, Lfkz$1;-><init>(Lfkz;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-object p2

    .line 96
    .end local v0    # "checkIcon":Landroid/widget/ImageView;
    .end local v1    # "holder":Lfkz$a;
    .end local v2    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfkz$a;

    .restart local v1    # "holder":Lfkz$a;
    goto :goto_0

    .line 105
    .restart local v2    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    goto :goto_1

    .line 110
    :cond_2
    iget-object v3, v1, Lfkz$a;->c:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
