.class public Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;
.super Lcom/alibaba/android/user/UserBaseFragment;
.source "GroupLinkFragment.java"


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/alibaba/wukong/im/Conversation;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->o:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 218
    iput-boolean v4, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->p:Z

    .line 219
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->f:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_im_group_generate_link_fail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const-string/jumbo v0, "user"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "generate group link getConversation fail:"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, " reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->g:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 222
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->p:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "shortLink"    # Ljava/lang/String;
    .param p2, "originalLink"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 327
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->g:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 330
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->p:Z

    .line 331
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->q:Ljava/lang/String;

    .line 332
    iput-object p2, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->r:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->f()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    .prologue
    .line 46
    invoke-static {}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->o:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->r:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->m:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_preset_link"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->n:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->m:Ljava/lang/String;

    .line 1188
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$4;-><init>(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)V

    invoke-interface {v0, v2, v1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private static g()Ljava/lang/String;
    .locals 5

    .prologue
    .line 173
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 174
    .local v0, "myProfile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    const-string/jumbo v1, ""

    .line 175
    .local v1, "userName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 176
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->realName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->realName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "("

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_0
    :goto_0
    return-object v1

    .line 178
    :cond_1
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->realName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 179
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->realName:Ljava/lang/String;

    goto :goto_0

    .line 180
    :cond_2
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)V
    .locals 11
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 46
    .line 2133
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->o:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 2136
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->o:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v3

    .line 2137
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2139
    :try_start_0
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2145
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->r:Ljava/lang/String;

    .line 2147
    invoke-static {}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->g()Ljava/lang/String;

    move-result-object v0

    .line 2149
    sget v1, Lezg$l;->dt_im_group_link_share_title:I

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-virtual {p0, v1, v4}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2151
    sget v1, Lezg$l;->dt_im_group_link_share_content:I

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v0, v5, v8

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->o:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-virtual {p0, v1, v5}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2152
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2153
    const-string/jumbo v0, "sms_content"

    new-array v1, v10, [Ljava/lang/String;

    aput-object v5, v1, v8

    iget-object v8, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->r:Ljava/lang/String;

    aput-object v8, v1, v9

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    const-string/jumbo v0, "internal_url"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->r:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    const-string/jumbo v0, "browser_url"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->r:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    const-string/jumbo v0, "copy_url"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->r:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    const-string/jumbo v0, "friend_url"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->r:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    const-string/jumbo v0, "favorite_url"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->r:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    new-instance v8, Lgwr$a;

    invoke-direct {v8}, Lgwr$a;-><init>()V

    .line 3050
    iget-object v0, v8, Lgwr$a;->a:Lgwr;

    .line 4009
    iput-boolean v9, v0, Lgwr;->b:Z

    .line 4045
    iget-object v0, v8, Lgwr$a;->a:Lgwr;

    .line 5009
    iput-boolean v9, v0, Lgwr;->a:Z

    .line 2161
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v0

    .line 2162
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 5060
    iget-object v8, v8, Lgwr$a;->a:Lgwr;

    move-object v9, v7

    move-object v10, v7

    .line 2162
    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->shareCustomContent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lgwr;Ljava/lang/String;Lgwk$a;)V

    .line 46
    :cond_1
    return-void

    .line 2140
    :catch_0
    move-exception v0

    .line 2141
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 46
    .line 5225
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->o:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 5228
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->o:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5229
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->o:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 5230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5231
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5236
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->o:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    .line 5237
    if-eqz v0, :cond_3

    .line 5238
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5239
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5244
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->o:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    .line 5246
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->o:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lfxh;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5247
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5273
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5274
    const-string/jumbo v0, "0"

    const-string/jumbo v1, "cid is null"

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6258
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->o:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lfxh;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 6259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 6260
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6261
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6262
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6263
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6264
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcms;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 v1, 0x438b0000    # 278.0f

    :goto_4
    invoke-static {v2, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 6265
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6266
    :cond_1
    :goto_5
    return-void

    .line 5233
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v1, Lezg$g;->avatar_nobody:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 5241
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 5250
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->c:Landroid/widget/TextView;

    sget v1, Lezg$l;->group_qrcode_member_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->o:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5251
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 5277
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5278
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->n:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5282
    :cond_6
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$5;-><init>(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    .line 5321
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 5282
    invoke-static {v1, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getCode(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 6264
    :cond_7
    const/high16 v1, 0x43820000    # 260.0f

    goto :goto_4

    .line 6267
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6268
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1086
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->b:Landroid/widget/TextView;

    .line 1087
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->img_name_extra:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->d:Landroid/widget/ImageView;

    .line 1088
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_des:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->c:Landroid/widget/TextView;

    .line 1089
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->f:Landroid/widget/TextView;

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_copy_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->h:Landroid/widget/TextView;

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->i:Landroid/widget/TextView;

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->pb_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->g:Landroid/widget/ProgressBar;

    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->iv_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_org_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->j:Landroid/widget/TextView;

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_bottom_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->k:Landroid/widget/LinearLayout;

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->rl_qr_contain:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->l:Landroid/widget/RelativeLayout;

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$1;-><init>(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$2;-><init>(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment$3;-><init>(Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/fragments/GroupLinkFragment;->f()V

    .line 83
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lezg$j;->fragment_group_link:I

    return v0
.end method
