.class public Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;
.super Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;
.source "SingleChatConversationSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ldbw;

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private C:Landroid/view/View$OnClickListener;

.field private D:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private E:Ldgx;

.field private F:Z

.field private G:Z

.field private H:Landroid/content/BroadcastReceiver;

.field private I:Lcom/alibaba/wukong/im/ConversationChangeListener;

.field protected c:Landroid/widget/LinearLayout;

.field protected d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ToggleButton;

.field private n:Landroid/widget/ToggleButton;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/LinearLayout;

.field private t:Ldqi;

.field private u:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

.field private v:Landroid/widget/ToggleButton;

.field private w:Landroid/widget/LinearLayout;

.field private x:Ljava/lang/String;

.field private y:J

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->B:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->H:Landroid/content/BroadcastReceiver;

    .line 280
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$16;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$16;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->I:Lcom/alibaba/wukong/im/ConversationChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->y:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;Ldbw;)Ldbw;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;
    .param p1, "x1"    # Ldbw;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->A:Ldbw;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 85
    .line 6722
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->D:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 6723
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->D:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 6726
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6727
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->D:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 6728
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->D:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6729
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->D:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 6730
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->D:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 85
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;J)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;
    .param p1, "x1"    # J

    .prologue
    .line 85
    .line 5741
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_set_thirdencryption_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 5743
    invoke-static {p1, p2}, Ldjl;->c(J)Ljava/lang/String;

    move-result-object v0

    .line 5744
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "https://h5.dingtalk.com/safety/encrypt.html?lwfrom=20160511153723743"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "&corpId="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5745
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, p0, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 6
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 590
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v2, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 595
    .local v0, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;

    invoke-direct {v4, p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;J)V

    const-class v5, Lcma;

    invoke-interface {v2, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->v:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 85
    .line 2176
    sget v0, Lctk$f;->tv_avatar_oto:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 2177
    sget v0, Lctk$f;->tv_user_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->f:Landroid/widget/TextView;

    .line 2178
    sget v0, Lctk$f;->tv_user_dep:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->g:Landroid/widget/TextView;

    .line 2179
    sget v0, Lctk$f;->rl_profile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->h:Landroid/widget/RelativeLayout;

    .line 2180
    sget v0, Lctk$f;->ll_members_add:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->c:Landroid/widget/LinearLayout;

    .line 2181
    sget v0, Lctk$f;->ll_encrypt_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->i:Landroid/widget/LinearLayout;

    .line 2182
    sget v0, Lctk$f;->text_encrypted:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->j:Landroid/widget/TextView;

    .line 2183
    sget v0, Lctk$f;->tv_encrypt_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->l:Landroid/widget/TextView;

    .line 2184
    sget v0, Lctk$f;->img_encrypt_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->k:Landroid/widget/ImageView;

    .line 2185
    sget v0, Lctk$f;->conversation_setting_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->m:Landroid/widget/ToggleButton;

    .line 2186
    sget v0, Lctk$f;->conversation_sticky_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->n:Landroid/widget/ToggleButton;

    .line 2187
    sget v0, Lctk$f;->ll_clear_history:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->o:Landroid/widget/LinearLayout;

    .line 2188
    sget v0, Lctk$f;->rl_burn_chat_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->p:Landroid/widget/LinearLayout;

    .line 2189
    sget v0, Lctk$f;->ll_search_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->r:Landroid/widget/LinearLayout;

    .line 2190
    sget v0, Lctk$f;->dd_user_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->u:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    .line 2193
    sget v0, Lctk$f;->rl_auto_trans:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->w:Landroid/widget/LinearLayout;

    .line 2194
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    :goto_0
    invoke-static {v0}, Lddo;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2195
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2196
    sget v0, Lctk$f;->auto_trans_setting_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->v:Landroid/widget/ToggleButton;

    .line 2197
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->v:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    :goto_1
    invoke-static {v0}, Lddo;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2198
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->v:Landroid/widget/ToggleButton;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$12;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2216
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->t_()V

    .line 3827
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v4, :cond_5

    .line 3828
    const/4 v0, 0x1

    .line 2839
    :goto_3
    if-nez v0, :cond_6

    .line 2840
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->s:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2841
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2219
    :cond_0
    :goto_4
    sget v0, Lctk$f;->ll_chat_background:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2220
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2222
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_1

    .line 2223
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2225
    :cond_1
    invoke-static {}, Ldfr;->a()Ldfr;

    invoke-static {v1}, Ldfr;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 2226
    if-eqz v0, :cond_8

    move v0, v2

    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 85
    return-void

    :cond_2
    move-object v0, v1

    .line 2194
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 2197
    goto :goto_1

    .line 2213
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 3830
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v4, "450_conversation_entry_mini_app_enabled"

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 2846
    :cond_6
    sget v0, Lctk$f;->ll_mini_apps_in_chat:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->s:Landroid/widget/LinearLayout;

    .line 2847
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2857
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->s:Landroid/widget/LinearLayout;

    sget v4, Lctk$f;->lastest_mini_app_layout:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2858
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->t:Ldqi;

    if-nez v4, :cond_7

    .line 2859
    new-instance v4, Ldqi;

    invoke-direct {v4, v0}, Ldqi;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->t:Ldqi;

    .line 2862
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->s:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$11;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2881
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2882
    const-string/jumbo v4, "mini_app_list_type"

    const-string/jumbo v5, "applications_in_chat"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2883
    const-string/jumbo v4, "conversation_id"

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2884
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    .line 2885
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$13;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$13;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    .line 2884
    invoke-virtual {v4, v0, v5}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->fetchMiniAppIconListByType(Ljava/lang/String;Lhma;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_8
    move v0, v3

    .line 2226
    goto :goto_5
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 85
    .line 4342
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 4344
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->h:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$17;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$17;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4351
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->r:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$18;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4372
    sget v0, Lctk$f;->rl_send_mail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->q:Landroid/widget/RelativeLayout;

    .line 4373
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->q:Landroid/widget/RelativeLayout;

    .line 4630
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->C:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 4631
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->C:Landroid/view/View$OnClickListener;

    .line 4373
    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4374
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4375
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4380
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->F:Z

    if-eqz v0, :cond_2

    .line 4381
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->c:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$19;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$19;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4395
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->o:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$20;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$20;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4402
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->m:Landroid/widget/ToggleButton;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$21;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$21;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4419
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    :goto_3
    invoke-static {v0}, Lddo;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4420
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4421
    sget v0, Lctk$f;->auto_trans_setting_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->v:Landroid/widget/ToggleButton;

    .line 4422
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->v:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    :goto_4
    invoke-static {v0}, Lddo;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 4423
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->v:Landroid/widget/ToggleButton;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4442
    :goto_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->n:Landroid/widget/ToggleButton;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4483
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->n:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v6

    cmp-long v0, v6, v10

    if-lez v0, :cond_6

    move v0, v2

    :goto_6
    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 4484
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->m:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    :goto_7
    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 4487
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->G:Z

    if-eqz v0, :cond_8

    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ldqm;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4488
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4489
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->p:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4529
    :goto_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_a

    .line 4530
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {v0}, Ldjl;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)J

    move-result-wide v4

    .line 4531
    sget v0, Lctk$f;->ll_encrypt_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4532
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v6, v7}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 4533
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4534
    sget v0, Lctk$f;->rl_encrypt_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$5;

    invoke-direct {v6, p0, v4, v5}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;J)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4547
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->k:Landroid/widget/ImageView;

    sget v4, Lctk$e;->chat_conv_icon_encrypt:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4548
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->j:Landroid/widget/TextView;

    sget v4, Lctk$i;->conversation_encrypt_opened:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 4550
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 4551
    cmp-long v0, v4, v10

    if-lez v0, :cond_9

    .line 4552
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 4749
    const-string/jumbo v1, ""

    .line 4750
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 4751
    if-eqz v0, :cond_9

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v5, :cond_9

    .line 4752
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4753
    if-eqz v4, :cond_12

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 4754
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    :goto_a
    move-object v1, v0

    .line 4756
    goto :goto_9

    .line 4634
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->C:Landroid/view/View$OnClickListener;

    .line 4648
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->C:Landroid/view/View$OnClickListener;

    goto/16 :goto_0

    .line 4377
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 4392
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_3
    move-object v0, v1

    .line 4419
    goto/16 :goto_3

    :cond_4
    move-object v0, v1

    .line 4422
    goto/16 :goto_4

    .line 4439
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    :cond_6
    move v0, v3

    .line 4483
    goto/16 :goto_6

    :cond_7
    move v0, v3

    .line 4484
    goto/16 :goto_7

    .line 4525
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8

    .line 4554
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4555
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->l:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_security_3th_encrypt_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4762
    :cond_a
    :goto_b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 4763
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_e

    .line 4765
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4766
    sget v0, Lctk$f;->rl_conversation_notice_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4774
    :goto_c
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4775
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4776
    array-length v2, v0

    :goto_d
    if-ge v3, v2, :cond_10

    aget-object v4, v0, v3

    .line 4777
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 4778
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4776
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 4557
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->l:Landroid/widget/TextView;

    sget v4, Lctk$i;->dt_security_3th_encrypt_tip_at:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v4, v2}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 4560
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b

    .line 4768
    :cond_e
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->F:Z

    if-eqz v0, :cond_f

    .line 4769
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4771
    :cond_f
    sget v0, Lctk$f;->rl_conversation_notice_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 4781
    :cond_10
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$10;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 4566
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_11

    .line 4567
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 4569
    :cond_11
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4570
    const-string/jumbo v1, "intent_action_chat_theme_applied"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4571
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 85
    return-void

    :cond_12
    move-object v0, v1

    goto/16 :goto_a
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 85
    .line 5652
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 5653
    :cond_0
    const-string/jumbo v0, "im"

    const-string/jumbo v2, "DingtalkConversation or conversation is null, cannot navigatorToAddMemberPage"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5655
    :goto_0
    return-void

    .line 5657
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 5658
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5659
    const-string/jumbo v0, "activity_identify"

    const-string/jumbo v2, "IDENTIFIY_SINGLE_CHAT_CONVERSATION_SETTING"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5660
    const-string/jumbo v0, "choose_people_from_contact_logic"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$CreateConversationLogic;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->B:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$CreateConversationLogic;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5661
    const-string/jumbo v0, "im_navigator_from"

    const-string/jumbo v2, "single_add_member"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5662
    const-string/jumbo v0, "show_local_contact"

    invoke-static {}, Ldjl;->f()Z

    move-result v2

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5663
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 5665
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-nez v4, :cond_2

    .line 5667
    :goto_1
    invoke-static {v1}, Ldjl;->p(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v4

    sget v5, Lctk$i;->create_conversation_choose_limit:I

    const/4 v6, 0x1

    move-object v1, p0

    .line 5663
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Ljava/lang/String;IIIZLandroid/os/Bundle;)V

    goto :goto_0

    .line 5665
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->d:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    goto :goto_1
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    .line 5675
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5676
    sget v1, Lctk$i;->conversation_list_clear:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$9;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    .line 5677
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$8;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    .line 5682
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5718
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 85
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->m:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->n:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Ldbw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->A:Ldbw;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->u:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->o:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    .line 6735
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->D:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->D:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6736
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->D:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 85
    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Ldqi;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->t:Ldqi;

    return-object v0
.end method


# virtual methods
.method protected final a(Z)V
    .locals 1
    .param p1, "isTop"    # Z

    .prologue
    .line 581
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->n:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->n:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 575
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->x:Ljava/lang/String;

    invoke-static {v2}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 576
    .local v0, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 577
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 914
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 915
    .local v0, "id":I
    sget v1, Lctk$f;->ll_chat_background:I

    if-ne v0, v1, :cond_0

    .line 917
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/chat_theme.html"

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$14;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$14;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 926
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 157
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    sget v0, Lctk$g;->activity_single_chat_conversation_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->setContentView(I)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->conversation_setting_OTO:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1168
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->x:Ljava/lang/String;

    .line 1169
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_menu_seed"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->y:J

    .line 1170
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_mini_profile_identity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->z:Ljava/lang/String;

    .line 1171
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_cs_show_add_member"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->F:Z

    .line 1172
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_cs_show_burn_chat"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->G:Z

    .line 1230
    new-instance v0, Ldgx;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$15;-><init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V

    invoke-direct {v0, p0, v1}, Ldgx;-><init>(Landroid/app/Activity;Ldgw$b;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->E:Ldgx;

    .line 1276
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->I:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 1277
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->E:Ldgx;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldgx;->a(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 804
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->onDestroy()V

    .line 806
    :try_start_0
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->D:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 812
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->A:Ldbw;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->A:Ldbw;

    invoke-virtual {v0}, Ldbw;->a()V

    .line 814
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->A:Ldbw;

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->I:Lcom/alibaba/wukong/im/ConversationChangeListener;

    if-eqz v0, :cond_1

    .line 818
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->I:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 819
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->I:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 821
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
