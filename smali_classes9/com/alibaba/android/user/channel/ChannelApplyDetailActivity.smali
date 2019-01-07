.class public Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ChannelApplyDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Lcjo$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    .line 2298
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    .line 2299
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2300
    invoke-direct {p0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->b()V

    :goto_0
    return-void

    .line 2302
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$l;->dt_channel_reject_apply_of_phone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 268
    new-instance v0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$4;-><init>(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)V

    .line 293
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v0, Lcma;

    .line 294
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lfai;->a()Lezs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-wide v2, v2, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->id:J

    invoke-interface {v1, v2, v3, v0}, Lezs;->a(JLcma;)V

    .line 295
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->l:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->g:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.channel_apply_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "list_view_position"

    iget v2, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    const-string/jumbo v1, "channel_apply_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 265
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->org_user_layout:I

    if-ne v0, v1, :cond_2

    .line 169
    new-instance v7, Lfjl;

    invoke-direct {v7, p0}, Lfjl;-><init>(Landroid/app/Activity;)V

    .line 170
    .local v7, "navigator":Lfjl;
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDataComplete:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v7, v0, v1}, Lfjl;->a(J)V

    .line 220
    .end local v7    # "navigator":Lfjl;
    :cond_0
    :goto_0
    return-void

    .line 173
    .restart local v7    # "navigator":Lfjl;
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ORG_CONTACT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ordinal()I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lfjl;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 175
    .end local v7    # "navigator":Lfjl;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->org_reject_btn:I

    if-ne v0, v1, :cond_3

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    if-eqz v0, :cond_0

    .line 177
    new-instance v6, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$2;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$2;-><init>(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)V

    .line 198
    .local v6, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v1, Lcma;

    invoke-interface {v0, v6, v1, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v6, Lcma;

    .line 199
    .restart local v6    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lfai;->a()Lezs;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-wide v2, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->id:J

    sget-object v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    iget v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->status:I

    invoke-interface {v0, v2, v3, v1, v6}, Lezs;->c(JILcma;)V

    goto :goto_0

    .line 201
    .end local v6    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->org_agree_btn:I

    if-ne v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->isInOrgExtContact:Z

    if-eqz v0, :cond_4

    .line 206
    invoke-direct {p0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->b()V

    goto :goto_0

    .line 208
    :cond_4
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    .line 209
    .local v4, "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    .line 215
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-wide v2, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->orgId:J

    const-string/jumbo v5, "ACTIVITY_IDENTIFY_CHANNEL_DETAIL_APPLY"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    sget v0, Lezg$j;->activity_channel_apply_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->setContentView(I)V

    .line 1101
    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "channel_apply_model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_2

    .line 1109
    :cond_0
    :goto_0
    sget v0, Lezg$h;->org_user_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a:Landroid/view/View;

    .line 1110
    sget v0, Lezg$h;->org_apply_detail_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1111
    sget v0, Lezg$h;->org_apply_detail_nick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->c:Landroid/widget/TextView;

    .line 1112
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "("

    aput-object v1, v0, v3

    sget v1, Lezg$l;->my_local_contact:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string/jumbo v2, ")"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->m:Ljava/lang/String;

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->k:Ljava/lang/String;

    .line 1116
    iput-boolean v5, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->l:Z

    .line 1121
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v2, v2, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    sget v0, Lezg$h;->org_apply_detail_mobile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->d:Landroid/widget/TextView;

    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    sget v0, Lezg$h;->org_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->e:Landroid/widget/TextView;

    .line 1125
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    sget v0, Lezg$h;->org_reject_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->f:Landroid/widget/Button;

    .line 1128
    sget v0, Lezg$h;->org_agree_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->g:Landroid/widget/Button;

    .line 1129
    sget v0, Lezg$h;->tv_reject:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->h:Landroid/widget/TextView;

    .line 1132
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->status:I

    sget-object v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    iget v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->status:I

    if-ne v0, v1, :cond_4

    .line 1133
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1136
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->h:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_user_org_apply_agreed:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1150
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1151
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2063
    new-instance v0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;-><init>(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->n:Lcjo$a;

    .line 2086
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->n:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->a(Lcjo$a;)V

    .line 2223
    new-instance v1, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$3;-><init>(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)V

    .line 2254
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2255
    const-string/jumbo v0, "com.workapp.channel_apply_change"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2256
    const-string/jumbo v0, "com.workapp.org.external.added"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2257
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    invoke-interface {v0, v1, p0, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->detail_info:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 98
    return-void

    .line 1105
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "list_view_position"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->j:I

    goto/16 :goto_0

    .line 1118
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->k:Ljava/lang/String;

    .line 1119
    iput-boolean v3, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->l:Z

    goto/16 :goto_1

    .line 1138
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->status:I

    sget-object v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    iget v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->status:I

    if-ne v0, v1, :cond_5

    .line 1139
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1142
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->h:Landroid/widget/TextView;

    sget v1, Lezg$l;->hint_reject:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 1143
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->i:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget v0, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->status:I

    sget-object v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->SHIELD:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    iget v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->status:I

    if-ne v0, v1, :cond_1

    .line 1144
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1145
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1147
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->h:Landroid/widget/TextView;

    sget v1, Lezg$l;->hint_shield:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 309
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->n:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->b(Lcjo$a;)V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->n:Lcjo$a;

    .line 311
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 312
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onPause()V

    .line 164
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 159
    return-void
.end method
