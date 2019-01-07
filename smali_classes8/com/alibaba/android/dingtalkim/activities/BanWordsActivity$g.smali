.class final Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;
.super Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$f;
.source "BanWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:J

.field final synthetic e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V
    .locals 2

    .prologue
    .line 793
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .line 794
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$f;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V

    .line 795
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->c:Landroid/view/View;

    sget v1, Lctk$f;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 796
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->c:Landroid/view/View;

    sget v1, Lctk$f;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->a:Landroid/widget/TextView;

    .line 797
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->c:Landroid/view/View;

    sget v1, Lctk$f;->time_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->g:Landroid/widget/TextView;

    .line 798
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->c:Landroid/view/View;

    sget v1, Lctk$f;->remove:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->h:Landroid/view/View;

    .line 799
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->c:Landroid/view/View;

    sget v1, Lctk$f;->top_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->i:Landroid/view/View;

    .line 800
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->c:Landroid/view/View;

    sget v1, Lctk$f;->bottom_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->j:Landroid/view/View;

    .line 801
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 858
    sget v0, Lctk$g;->activity_ban_words_list_item_black:I

    return v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 14
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 805
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/alibaba/wukong/im/UserBanObject;

    if-eqz v0, :cond_1

    move-object v10, p1

    .line 806
    check-cast v10, Lcom/alibaba/wukong/im/UserBanObject;

    .line 807
    .local v10, "userBanObject":Lcom/alibaba/wukong/im/UserBanObject;
    iget-wide v0, v10, Lcom/alibaba/wukong/im/UserBanObject;->openId:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->b:J

    .line 808
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;Landroid/view/View;J)V

    .line 809
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, v10, Lcom/alibaba/wukong/im/UserBanObject;->openId:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v11

    .line 810
    .local v11, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v11, :cond_3

    .line 811
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->a:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->CHAT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {v0, v1}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v6

    .line 815
    .local v6, "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .line 816
    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-static {v2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    iget-wide v4, v10, Lcom/alibaba/wukong/im/UserBanObject;->openId:J

    new-instance v7, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g$1;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;)V

    const-class v12, Lcom/alibaba/wukong/Callback;

    iget-object v13, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .line 819
    invoke-static {v7, v12, v13}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/Callback;

    .line 815
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    .line 842
    .end local v6    # "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    :goto_0
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v8

    .line 843
    .local v8, "currentTime":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    .line 844
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    sget v2, Lctk$i;->dt_group_setting_member_silent_time_to_release:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->e:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    iget-wide v12, v10, Lcom/alibaba/wukong/im/UserBanObject;->banWordsTime:J

    sub-long/2addr v12, v8

    invoke-static {v5, v12, v13}, Lcog;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->h:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g$2;

    invoke-direct {v1, p0, v10}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;Lcom/alibaba/wukong/im/UserBanObject;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 854
    .end local v8    # "currentTime":J
    .end local v10    # "userBanObject":Lcom/alibaba/wukong/im/UserBanObject;
    .end local v11    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    return-void

    .line 836
    .restart local v10    # "userBanObject":Lcom/alibaba/wukong/im/UserBanObject;
    .restart local v11    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->a:Landroid/widget/TextView;

    iget-object v1, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 839
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-wide v2, v10, Lcom/alibaba/wukong/im/UserBanObject;->openId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$g;->a:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
