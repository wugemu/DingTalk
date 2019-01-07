.class final Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;
.super Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$f;
.source "BanWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:J

.field final synthetic e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V
    .locals 2

    .prologue
    .line 717
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .line 718
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$f;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V

    .line 719
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->c:Landroid/view/View;

    sget v1, Lctk$f;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 720
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->c:Landroid/view/View;

    sget v1, Lctk$f;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->a:Landroid/widget/TextView;

    .line 721
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->c:Landroid/view/View;

    sget v1, Lctk$f;->remove:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->g:Landroid/view/View;

    .line 722
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->c:Landroid/view/View;

    sget v1, Lctk$f;->top_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->h:Landroid/view/View;

    .line 723
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->c:Landroid/view/View;

    sget v1, Lctk$f;->bottom_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->i:Landroid/view/View;

    .line 724
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 776
    sget v0, Lctk$g;->activity_ban_words_list_item_white:I

    return v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 728
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alibaba/wukong/im/UserBanObject;

    if-eqz v0, :cond_0

    move-object v8, p1

    .line 729
    check-cast v8, Lcom/alibaba/wukong/im/UserBanObject;

    .line 730
    .local v8, "userBanObject":Lcom/alibaba/wukong/im/UserBanObject;
    iget-wide v0, v8, Lcom/alibaba/wukong/im/UserBanObject;->openId:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->b:J

    .line 731
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;Landroid/view/View;J)V

    .line 732
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, v8, Lcom/alibaba/wukong/im/UserBanObject;->openId:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v9

    .line 733
    .local v9, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v9, :cond_2

    .line 734
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->a:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->CHAT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {v0, v1}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v6

    .line 738
    .local v6, "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .line 739
    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-static {v2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    iget-wide v4, v8, Lcom/alibaba/wukong/im/UserBanObject;->openId:J

    new-instance v7, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j$1;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;)V

    const-class v10, Lcom/alibaba/wukong/Callback;

    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .line 742
    invoke-static {v7, v10, v11}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/Callback;

    .line 738
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    .line 765
    .end local v6    # "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->g:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j$2;

    invoke-direct {v1, p0, v8}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;Lcom/alibaba/wukong/im/UserBanObject;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    .end local v8    # "userBanObject":Lcom/alibaba/wukong/im/UserBanObject;
    .end local v9    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_0
    return-void

    .line 759
    .restart local v8    # "userBanObject":Lcom/alibaba/wukong/im/UserBanObject;
    .restart local v9    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->a:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-wide v2, v8, Lcom/alibaba/wukong/im/UserBanObject;->openId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$j;->a:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
