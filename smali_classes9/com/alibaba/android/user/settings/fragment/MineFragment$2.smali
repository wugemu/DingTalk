.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$2;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lcry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$2;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/16 v8, 0x8

    const/4 v2, 0x0

    .line 703
    check-cast p1, Lcry;

    .line 1706
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->t()Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    move-result-object v4

    .line 1708
    new-instance v5, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

    invoke-direct {v5}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;-><init>()V

    .line 1709
    if-eqz v4, :cond_4

    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    move v3, v0

    .line 1710
    :goto_0
    if-nez p1, :cond_0

    .line 1711
    new-instance p1, Lcry;

    invoke-direct {p1}, Lcry;-><init>()V

    .line 1713
    :cond_0
    if-eqz v4, :cond_1

    .line 1714
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    .line 1715
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v10, :cond_1

    .line 1716
    new-instance v6, Lcom/alibaba/android/user/settings/fragment/MineFragment$2$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/settings/fragment/MineFragment$2$1;-><init>(Lcom/alibaba/android/user/settings/fragment/MineFragment$2;)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1723
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v3, :cond_1

    if-lez v3, :cond_1

    .line 1724
    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    .line 1728
    :cond_1
    if-lez v3, :cond_5

    move v0, v1

    .line 2055
    :goto_1
    iput-boolean v0, p1, Lcry;->b:Z

    .line 1729
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_NUM:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v0

    .line 3047
    iput v0, p1, Lcry;->a:I

    .line 3111
    iput v3, p1, Lcry;->i:I

    .line 1731
    invoke-virtual {v5, v4}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->setNewFriendUnreadObject(Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;)V

    .line 1732
    invoke-virtual {v5, p1}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->setViewObjectNewFriend(Lcry;)V

    .line 1733
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$2;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->i(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lfwk;

    move-result-object v6

    .line 4095
    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->getNewFriendUnreadObject()Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    move-result-object v7

    .line 4097
    const-string/jumbo v3, "unreadCount=%d,userCount=%d"

    new-array v4, v10, [Ljava/lang/Object;

    if-eqz v7, :cond_6

    iget v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    .line 4098
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    if-eqz v7, :cond_7

    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    .line 4099
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 4097
    invoke-static {v3, v4}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4101
    if-eqz v7, :cond_2

    iget v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 4103
    :cond_2
    iput v2, v6, Lfwk;->a:I

    .line 4104
    iget-object v0, v6, Lfwk;->b:Landroid/widget/TextView;

    invoke-static {v0, v8}, Lfxp;->a(Landroid/view/View;I)V

    .line 4105
    iget-object v0, v6, Lfwk;->j:Landroid/view/View;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 4106
    iget-object v0, v6, Lfwk;->i:Landroid/view/View;

    invoke-static {v0, v8}, Lfxp;->a(Landroid/view/View;I)V

    .line 4107
    iget-object v0, v6, Lfwk;->k:Landroid/view/View;

    invoke-static {v0, v8}, Lfxp;->a(Landroid/view/View;I)V

    .line 4108
    invoke-static {}, Lflw;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4109
    iget-object v0, v6, Lfwk;->c:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 4113
    :goto_4
    const-string/jumbo v0, "unreadCount 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4167
    :cond_3
    :goto_5
    return-void

    :cond_4
    move v3, v2

    .line 1709
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 1728
    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 4097
    goto :goto_2

    :cond_7
    move v0, v2

    .line 4099
    goto :goto_3

    .line 4111
    :cond_8
    iget-object v0, v6, Lfwk;->c:Landroid/widget/TextView;

    invoke-static {v0, v8}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_4

    .line 4114
    :cond_9
    iget v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    if-ne v0, v1, :cond_11

    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_11

    .line 4116
    iget-object v0, v6, Lfwk;->b:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 4117
    iget-object v0, v6, Lfwk;->j:Landroid/view/View;

    invoke-static {v0, v8}, Lfxp;->a(Landroid/view/View;I)V

    .line 4118
    iget-object v0, v6, Lfwk;->i:Landroid/view/View;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 4119
    iget-object v0, v6, Lfwk;->k:Landroid/view/View;

    invoke-static {v0, v8}, Lfxp;->a(Landroid/view/View;I)V

    .line 4120
    const-string/jumbo v0, "unreadCount 1"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4124
    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;

    .line 4126
    if-eqz v0, :cond_c

    .line 4127
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->FRIEND_APPLY:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    if-ne v3, v4, :cond_d

    .line 4129
    iput v1, v6, Lfwk;->a:I

    .line 4130
    iget-object v1, v6, Lfwk;->b:Landroid/widget/TextView;

    sget v3, Lezg$l;->dt_contact_new_friend:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 4137
    :cond_a
    :goto_6
    iget-object v1, v6, Lfwk;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->nick:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->avatar:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4138
    iget-object v1, v6, Lfwk;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->nick:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4139
    iget-object v1, v6, Lfwk;->e:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 4142
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->orgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4143
    iget-object v1, v6, Lfwk;->e:Landroid/widget/TextView;

    invoke-static {v1, v8}, Lfxp;->a(Landroid/view/View;I)V

    .line 4148
    :goto_7
    iget v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->orgAuthLevel:I

    if-lez v1, :cond_f

    iget-object v1, v6, Lfwk;->n:Landroid/content/Context;

    if-eqz v1, :cond_f

    iget-object v1, v6, Lfwk;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 4149
    iget v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->orgAuthLevel:I

    invoke-static {v1}, Lfls;->a(I)Lecw;

    move-result-object v1

    .line 4150
    if-eqz v1, :cond_b

    .line 4151
    iget-object v3, v6, Lfwk;->n:Landroid/content/Context;

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 5070
    iput v3, v1, Lecw;->a:I

    .line 4152
    iget-object v3, v6, Lfwk;->n:Landroid/content/Context;

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 5079
    iput v3, v1, Lecw;->b:I

    .line 4154
    :cond_b
    iget-object v3, v6, Lfwk;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v9, v9, v1, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4158
    :goto_8
    iget-object v1, v6, Lfwk;->f:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 4159
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->remark:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4160
    iget-object v0, v6, Lfwk;->f:Landroid/widget/TextView;

    invoke-static {v0, v8}, Lfxp;->a(Landroid/view/View;I)V

    .line 4166
    :cond_c
    :goto_9
    iget-object v0, v6, Lfwk;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->getViewObjectNewFriend()Lcry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    goto/16 :goto_5

    .line 4132
    :cond_d
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->FRIEND_RECOMMEND:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    if-ne v1, v3, :cond_a

    .line 4134
    const/4 v1, 0x3

    iput v1, v6, Lfwk;->a:I

    .line 4135
    iget-object v1, v6, Lfwk;->b:Landroid/widget/TextView;

    sget v3, Lezg$l;->dt_user_friend_recommand:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 4145
    :cond_e
    iget-object v1, v6, Lfwk;->e:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->orgName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 4156
    :cond_f
    iget-object v1, v6, Lfwk;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 4162
    :cond_10
    iget-object v1, v6, Lfwk;->f:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->remark:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 4169
    :cond_11
    iget-object v0, v6, Lfwk;->b:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 4170
    iget-object v0, v6, Lfwk;->j:Landroid/view/View;

    invoke-static {v0, v8}, Lfxp;->a(Landroid/view/View;I)V

    .line 4171
    iget-object v0, v6, Lfwk;->i:Landroid/view/View;

    invoke-static {v0, v8}, Lfxp;->a(Landroid/view/View;I)V

    .line 4172
    iget-object v0, v6, Lfwk;->k:Landroid/view/View;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 4174
    iget v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    .line 4175
    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "unreadCount multiple:"

    aput-object v4, v3, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4176
    iget-object v3, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    invoke-static {v3}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4179
    iget-object v3, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v0, v3, :cond_12

    .line 4180
    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4183
    :cond_12
    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v4, v0

    :goto_a
    iget-object v0, v6, Lfwk;->m:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    array-length v0, v0

    if-ge v3, v0, :cond_15

    .line 4184
    if-ltz v4, :cond_14

    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_14

    .line 4185
    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;

    .line 4186
    if-eqz v0, :cond_13

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    if-eqz v8, :cond_13

    .line 4187
    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->ordinal()I

    move-result v8

    iput v8, v6, Lfwk;->a:I

    .line 4188
    iget-object v8, v6, Lfwk;->m:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v8, v8, v3

    invoke-static {v8, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 4189
    iget-object v8, v6, Lfwk;->m:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v8, v8, v3

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->nick:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->avatar:Ljava/lang/String;

    invoke-virtual {v8, v9, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4183
    :goto_b
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a

    .line 4191
    :cond_13
    iget-object v0, v6, Lfwk;->m:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v0, v0, v3

    const/4 v8, 0x4

    invoke-static {v0, v8}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_b

    .line 4194
    :cond_14
    iget-object v0, v6, Lfwk;->m:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v0, v0, v3

    const/4 v8, 0x4

    invoke-static {v0, v8}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_b

    .line 4197
    :cond_15
    iget v0, v6, Lfwk;->a:I

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->FRIEND_APPLY:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_17

    .line 4199
    iput v1, v6, Lfwk;->a:I

    .line 4200
    iget-object v0, v6, Lfwk;->b:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_contact_new_friend:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4207
    :cond_16
    :goto_c
    iget-object v0, v6, Lfwk;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->getViewObjectNewFriend()Lcry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    goto/16 :goto_5

    .line 4202
    :cond_17
    iget v0, v6, Lfwk;->a:I

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->FRIEND_RECOMMEND:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 4204
    const/4 v0, 0x3

    iput v0, v6, Lfwk;->a:I

    .line 4205
    iget-object v0, v6, Lfwk;->b:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_user_friend_recommand:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c
.end method
