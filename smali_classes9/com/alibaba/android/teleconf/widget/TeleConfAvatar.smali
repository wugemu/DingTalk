.class public Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;
.super Landroid/widget/LinearLayout;
.source "TeleConfAvatar.java"


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public e:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1060
    if-nez p1, :cond_0

    .line 1061
    :goto_0
    return-void

    .line 1063
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->layout_conf_custom_avatar:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1065
    sget v0, Leuj$i;->session_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1066
    sget v0, Leuj$i;->three_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->b:Landroid/view/View;

    .line 1068
    new-array v0, v6, [Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->d:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1069
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->d:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->b:Landroid/view/View;

    sget v2, Leuj$i;->session_user_three_icon0:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v4

    .line 1070
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->d:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->b:Landroid/view/View;

    sget v2, Leuj$i;->session_user_three_icon1:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v3

    .line 1071
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->d:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->b:Landroid/view/View;

    sget v2, Leuj$i;->session_user_three_icon2:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v5

    .line 1074
    sget v0, Leuj$i;->four_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->c:Landroid/view/View;

    .line 1075
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->e:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1076
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->e:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->c:Landroid/view/View;

    sget v2, Leuj$i;->session_user_four_icon0:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v4

    .line 1077
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->e:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->c:Landroid/view/View;

    sget v2, Leuj$i;->session_user_four_icon1:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v3

    .line 1078
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->e:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->c:Landroid/view/View;

    sget v2, Leuj$i;->session_user_four_icon2:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v5

    .line 1079
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->e:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->c:Landroid/view/View;

    sget v2, Leuj$i;->session_user_four_icon3:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v6

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;I)V
    .locals 6
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 119
    .local p1, "avatarList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 120
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 121
    if-ge v0, v2, :cond_1

    .line 122
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    .line 123
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->e:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v3, v3, v0

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .restart local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->d:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v3, v3, v0

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 129
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->d:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v3, v3, v0

    sget v4, Leuj$h;->avatar_nobody:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto :goto_1

    .line 132
    :cond_2
    return-void
.end method


# virtual methods
.method public setAvatar(Ljava/lang/String;)V
    .locals 3
    .param p1, "nick"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setAvatars(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "icons":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;>;"
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 90
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 95
    .local v1, "size":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 96
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 97
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->c:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 99
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    .line 100
    .local v0, "iconObj":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    if-eqz v0, :cond_2

    .line 101
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    goto :goto_0

    .line 105
    .end local v0    # "iconObj":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    :cond_3
    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    if-ne v1, v5, :cond_5

    .line 106
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 107
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->b:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->c:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-direct {p0, p1, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->a(Ljava/util/List;I)V

    goto :goto_0

    .line 110
    :cond_5
    if-lt v1, v6, :cond_0

    .line 111
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 112
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->c:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-direct {p0, p1, v6}, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->a(Ljava/util/List;I)V

    goto :goto_0
.end method
