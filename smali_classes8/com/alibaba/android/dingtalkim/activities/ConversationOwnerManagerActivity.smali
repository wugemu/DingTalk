.class public Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ConversationOwnerManagerActivity.java"

# interfaces
.implements Leao$b;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Leao$a;

.field private G:Landroid/widget/RelativeLayout;

.field private H:Lcom/alibaba/wukong/im/Member$RoleType;

.field private I:Ljava/lang/String;

.field private J:Landroid/content/BroadcastReceiver;

.field private K:Lcom/alibaba/wukong/im/ConversationChangeListener;

.field private a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field private b:Lcom/alibaba/wukong/im/Conversation;

.field private c:Landroid/widget/ToggleButton;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ToggleButton;

.field private f:Landroid/widget/ToggleButton;

.field private g:Landroid/widget/ToggleButton;

.field private h:Landroid/widget/ToggleButton;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ToggleButton;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/ToggleButton;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/TextView;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->B:Z

    .line 138
    sget-object v0, Lcom/alibaba/wukong/im/Member$RoleType;->ADMIN:Lcom/alibaba/wukong/im/Member$RoleType;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->H:Lcom/alibaba/wukong/im/Member$RoleType;

    .line 191
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->J:Landroid/content/BroadcastReceiver;

    .line 1105
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$18;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$18;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->K:Lcom/alibaba/wukong/im/ConversationChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    return-object p1
.end method

.method private a(I)V
    .locals 5
    .param p1, "res"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1236
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1237
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lctk$i;->tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 1238
    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 1239
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$19;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$19;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    .line 1240
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1251
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1252
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "groupAdminManageable"    # Z

    .prologue
    .line 271
    if-eqz p1, :cond_0

    .line 272
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->e(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private static a(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Z)V
    .locals 2
    .param p0, "adsView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .param p1, "show"    # Z

    .prologue
    .line 555
    new-instance v0, Lcry;

    invoke-direct {v0}, Lcry;-><init>()V

    .line 556
    .local v0, "viewObject":Lcry;
    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v1

    .line 11047
    iput v1, v0, Lcry;->a:I

    .line 11055
    iput-boolean p1, v0, Lcry;->b:Z

    .line 558
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    .line 559
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 82
    .line 14962
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 14963
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 14966
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14967
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 14968
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 14969
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 14970
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 82
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .param p2, "x2"    # Z

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 82
    .line 15217
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 15222
    :cond_0
    :goto_0
    return-void

    .line 15220
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15221
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v0, v1, :cond_2

    .line 15222
    sget v0, Lctk$i;->conversation_kickoff:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(I)V

    goto :goto_0

    .line 15223
    :cond_2
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v0, v1, :cond_0

    .line 15224
    sget v0, Lctk$i;->conversation_disband_warning:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->E:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 405
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 10042
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->F(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_im_assist_enable"

    .line 9083
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 413
    if-eqz v2, :cond_0

    .line 417
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    .line 418
    .local v0, "orgId":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "im_org_group_assist_enable"

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->k:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$20;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$20;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    invoke-static {}, Ldyd;->a()Ldyd;

    move-result-object v3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$21;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$21;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    const-class v6, Lcma;

    invoke-interface {v2, v5, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 10037
    if-eqz v2, :cond_0

    .line 10040
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10041
    const-string/jumbo v3, ""

    const-string/jumbo v4, "param invalid"

    invoke-interface {v2, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10045
    :cond_2
    new-instance v5, Ldyd$1;

    invoke-direct {v5, v3, v2}, Ldyd$1;-><init>(Ldyd;Lcma;)V

    .line 10051
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLIntelligentService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLIntelligentService;

    .line 10052
    if-eqz v2, :cond_0

    .line 10053
    invoke-interface {v2, v4, v5}, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLIntelligentService;->getIntelliConfig(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 82
    .line 15255
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 15256
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 15257
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15258
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->sync()V

    .line 15259
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->F:Leao$a;

    invoke-interface {v0, p1}, Leao$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 15261
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->F:Leao$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->H:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-interface {v0, v1}, Leao$a;->a(Lcom/alibaba/wukong/im/Member$RoleType;)V

    .line 82
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .param p1, "groupRingId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 519
    invoke-static {}, Lebc;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->I:Ljava/lang/String;

    .line 523
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->y:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_im_group_sound_default_option_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 529
    :cond_2
    invoke-static {}, Leas;->a()Leas;

    move-result-object v1

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$24;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$24;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Ljava/lang/String;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, p1, v0}, Leas;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->D:Z

    return v0
.end method

.method private c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 858
    const/4 v0, 0x0

    .line 859
    .local v0, "doIHaveOrgInfo":Z
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 860
    .local v1, "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 861
    const/4 v0, 0x1

    .line 863
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 864
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v3, "deptId"

    .line 865
    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 866
    :cond_1
    invoke-direct {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->e(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 867
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 868
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->u:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 880
    :goto_0
    return-void

    .line 870
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 871
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->u:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 873
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->t:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$10;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    .line 13230
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.choose.people.from.group.member"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13231
    const-string/jumbo v1, "activity_identify"

    const-string/jumbo v2, "activity_identify_transfer_success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13232
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 82
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 720
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    :goto_0
    return-void

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->n:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_conversation_setting_group_desc_null_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->e(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    .line 14204
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->B:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->H:Lcom/alibaba/wukong/im/Member$RoleType;

    sget-object v1, Lcom/alibaba/wukong/im/Member$RoleType;->ADMIN:Lcom/alibaba/wukong/im/Member$RoleType;

    if-eq v0, v1, :cond_1

    .line 14205
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->finish()V

    .line 14206
    :cond_0
    :goto_0
    return-void

    .line 14208
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->c:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_2

    .line 14209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->c:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getOnlyOwnerModifiable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 14211
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->f:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 14212
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->f:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->joinValidationType()Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->ONLY_MASTER:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    invoke-virtual {v1, v2}, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method private e(Z)Z
    .locals 2
    .param p1, "groupAdminManageable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 267
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->H:Lcom/alibaba/wukong/im/Member$RoleType;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1, p1}, Ldjt;->a(Lcom/alibaba/wukong/im/Member$RoleType;Lcom/alibaba/wukong/im/Conversation;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->E:Ljava/lang/String;

    return-object v0
.end method

.method private f(Z)Z
    .locals 4
    .param p1, "forceGet"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->z:Z

    if-eqz v0, :cond_0

    .line 608
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->A:Z

    .line 617
    :goto_0
    return v0

    .line 610
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->z:Z

    .line 611
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->x(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {v1}, Ldjl;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->A:Z

    .line 617
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->A:Z

    goto :goto_0

    .line 614
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->A:Z

    goto :goto_1
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->w:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/wukong/im/Member$RoleType;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->H:Lcom/alibaba/wukong/im/Member$RoleType;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->c:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->e:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Leao$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->F:Leao$a;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->f:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->g:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->h:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->p:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    .line 14916
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14917
    sget v1, Lctk$i;->conversation_disband_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$14;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$14;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    .line 14918
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->conversation_disband_ok:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    .line 14923
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 14958
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 82
    return-void
.end method

.method static synthetic u(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    .line 14975
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14976
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->c()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 982
    return-object p0
.end method

.method public final a(J)V
    .locals 0
    .param p1, "groupId"    # J

    .prologue
    .line 987
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "shareText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1016
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1017
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1018
    sget v1, Lctk$b;->group_id_share:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$15;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$15;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1034
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1035
    return-void
.end method

.method public final a(ZZ)V
    .locals 3
    .param p1, "searchable"    # Z
    .param p2, "privateGroup"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1044
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1045
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lctk$i;->dt_group_searchable_first_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1046
    if-eqz p2, :cond_0

    sget v1, Lctk$i;->dt_private_group_searchable_first_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1047
    sget v1, Lctk$i;->sure:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$16;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$16;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1059
    sget v1, Lctk$i;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$17;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$17;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1068
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1069
    return-void

    .line 1046
    :cond_0
    sget v1, Lctk$i;->dt_group_searchable_first_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final a(ZZJ)V
    .locals 4
    .param p1, "showSearchableView"    # Z
    .param p2, "searchable"    # Z
    .param p3, "groupId"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 991
    if-eqz p1, :cond_3

    .line 12002
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_2

    .line 12003
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->j(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12005
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12006
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v3, "f_im_industry_setting_show_share"

    .line 12083
    invoke-virtual {v0, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 12006
    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 991
    :goto_0
    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->e(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 992
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 993
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 994
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 998
    :goto_1
    if-eqz p2, :cond_1

    .line 999
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 12011
    goto :goto_0

    .line 996
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->j:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a_(Z)V
    .locals 2
    .param p1, "privateGroup"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget v0, Lctk$i;->private_conversation_can_searchable_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    return-void

    .line 1039
    :cond_0
    sget v0, Lctk$i;->conversation_can_searchable_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "restricted"    # Z

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->e:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1077
    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 1
    .param p1, "sync"    # Z

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->p:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->p:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 0
    .param p1, "canShow"    # Z

    .prologue
    .line 1092
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 729
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 730
    if-eqz p3, :cond_0

    .line 731
    const-string/jumbo v1, "intent_key_group_desc"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "desc":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->c(Ljava/lang/String;)V

    .line 733
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1, v0}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 736
    .end local v0    # "desc":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    sget v0, Lctk$g;->activity_conversation_owner_manager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->setContentView(I)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v3, Lctk$i;->dt_conversation_manager_setting_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2170
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 2171
    const-string/jumbo v0, "conversation"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 2173
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->B:Z

    .line 2174
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->B:Z

    if-eqz v0, :cond_4

    .line 2175
    sget-object v0, Lcom/alibaba/wukong/im/Member$RoleType;->MASTER:Lcom/alibaba/wukong/im/Member$RoleType;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->H:Lcom/alibaba/wukong/im/Member$RoleType;

    .line 151
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->H:Lcom/alibaba/wukong/im/Member$RoleType;

    sget-object v3, Lcom/alibaba/wukong/im/Member$RoleType;->MASTER:Lcom/alibaba/wukong/im/Member$RoleType;

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->finish()V

    .line 167
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 2173
    goto :goto_0

    .line 2177
    :cond_4
    const-string/jumbo v0, "intent_key_role_type"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2178
    invoke-static {v0}, Lcom/alibaba/wukong/im/Member$RoleType;->fromValue(I)Lcom/alibaba/wukong/im/Member$RoleType;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->H:Lcom/alibaba/wukong/im/Member$RoleType;

    goto :goto_1

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;Z)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-nez v0, :cond_6

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->finish()V

    goto :goto_2

    .line 162
    :cond_6
    new-instance v0, Leap;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, v3, p0}, Leap;-><init>(Lcom/alibaba/wukong/im/Conversation;Leao$b;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->F:Leao$a;

    .line 2282
    sget v0, Lctk$f;->rl_enterprise_modify:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Landroid/view/View;Z)V

    .line 2283
    sget v0, Lctk$f;->conversation_setting_owner_modify_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->c:Landroid/widget/ToggleButton;

    .line 2284
    sget v0, Lctk$f;->conversation_setting_owner_modify_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->d:Landroid/widget/TextView;

    .line 2287
    sget v0, Lctk$f;->rl_at_all_restricted_admin:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Landroid/view/View;Z)V

    .line 2288
    sget v0, Lctk$f;->conversation_at_all_restricted_admin_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->e:Landroid/widget/ToggleButton;

    .line 2291
    sget v0, Lctk$f;->rl_only_master_validate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Landroid/view/View;Z)V

    .line 2292
    sget v0, Lctk$f;->conversation_setting_only_master_validate_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->f:Landroid/widget/ToggleButton;

    .line 2295
    sget v0, Lctk$f;->rl_show_hirstory:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Landroid/view/View;Z)V

    .line 2296
    sget v0, Lctk$f;->conversation_show_history_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->g:Landroid/widget/ToggleButton;

    .line 2299
    sget v0, Lctk$f;->rl_group_searchable:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->j:Landroid/widget/RelativeLayout;

    .line 2300
    sget v0, Lctk$f;->conversation_setting_groupid_searchable_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->i:Landroid/widget/TextView;

    .line 2301
    sget v0, Lctk$f;->conversation_setting_groupid_searchable_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->h:Landroid/widget/ToggleButton;

    .line 2304
    sget v0, Lctk$f;->conversation_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Landroid/view/View;Z)V

    .line 2305
    sget v0, Lctk$f;->conversation_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->m:Landroid/view/View;

    .line 2306
    sget v0, Lctk$f;->conversation_desc_sub_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->n:Landroid/widget/TextView;

    .line 2309
    sget v0, Lctk$f;->rl_sync_file_cspace:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->o:Landroid/view/View;

    .line 2310
    sget v0, Lctk$f;->toggle_sync_file_to_cspace:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->p:Landroid/widget/ToggleButton;

    .line 2311
    sget v0, Lctk$f;->tv_sync_file_to_cspace_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->q:Landroid/widget/TextView;

    .line 2314
    sget v0, Lctk$f;->conversation_setting_ban_words:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->r:Landroid/widget/RelativeLayout;

    .line 2315
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->r:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Landroid/view/View;Z)V

    .line 2318
    sget v0, Lctk$f;->conversation_setting_transmit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->s:Landroid/widget/RelativeLayout;

    .line 2319
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->s:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Landroid/view/View;Z)V

    .line 2322
    sget v0, Lctk$f;->conversation_setting_disban:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->t:Landroid/widget/TextView;

    .line 2323
    sget v0, Lctk$f;->divider_disband:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->u:Landroid/view/View;

    .line 2324
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->t:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Landroid/view/View;Z)V

    .line 2325
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->u:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Landroid/view/View;Z)V

    .line 2329
    sget v0, Lctk$f;->conversation_setting_assist_helper:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->k:Landroid/widget/RelativeLayout;

    .line 2330
    sget v0, Lctk$f;->tv_assist_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->l:Landroid/widget/TextView;

    .line 2333
    sget v0, Lctk$f;->conversation_setting_live_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->v:Landroid/widget/TextView;

    .line 2334
    sget v0, Lctk$f;->conversation_setting_live_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->w:Landroid/widget/ToggleButton;

    .line 2335
    sget v0, Lctk$f;->conversation_setting_live:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Landroid/view/View;Z)V

    .line 2337
    sget v0, Lctk$f;->rl_group_admin:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->G:Landroid/widget/RelativeLayout;

    .line 2339
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2340
    sget v0, Lctk$f;->conversation_setting_owner_modify:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2341
    sget v3, Lctk$i;->dt_conversation_only_owner_admin_modify:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2343
    sget v0, Lctk$f;->conversation_at_all_restricted_admin:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2344
    sget v3, Lctk$i;->dt_im_conversation_owner_admin_at_all_title:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2346
    sget v0, Lctk$f;->tv_at_all_auth_prompt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2347
    sget v3, Lctk$i;->dt_im_conversation_owner_admin_at_all_desc:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2349
    sget v0, Lctk$f;->tv_master_validate_prompt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2350
    sget v3, Lctk$i;->dt_im_settings_join_group_settings_summary_v2:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2353
    :cond_7
    invoke-static {}, Lebc;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2354
    sget v0, Lctk$f;->conversation_group_ring:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->x:Landroid/widget/RelativeLayout;

    .line 2355
    sget v0, Lctk$f;->tv_group_ring_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->y:Landroid/widget/TextView;

    .line 2356
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2358
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->x:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$12;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2576
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_9

    .line 2577
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getOnlyOwnerModifiable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2578
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2582
    :goto_3
    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->f(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2583
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->v()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2584
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->d:Landroid/widget/TextView;

    sget v3, Lctk$i;->and_conversation_only_owner_strict_modify_tips_with_robots:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2596
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->c:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$25;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$25;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2625
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getAtAllType()I

    move-result v0

    if-ne v0, v1, :cond_15

    .line 2626
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2631
    :goto_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->e:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$26;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$26;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2643
    sget v0, Lctk$f;->conversation_setting_only_master_validate_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->f:Landroid/widget/ToggleButton;

    .line 2644
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_a

    .line 2645
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->joinValidationType()Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    move-result-object v0

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->ONLY_MASTER:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    invoke-virtual {v0, v3}, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2646
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2650
    :goto_6
    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->f(Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2651
    sget v0, Lctk$f;->rl_only_master_validate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2652
    sget v0, Lctk$f;->rl_only_master_validate_splitter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2658
    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->f:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2672
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_b

    .line 2673
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getShowHistoryType()I

    move-result v0

    if-ne v0, v1, :cond_18

    .line 2674
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2680
    :cond_b
    :goto_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->g:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2694
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->h:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2701
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->F:Leao$a;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->H:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-interface {v0, v3}, Leao$a;->a(Lcom/alibaba/wukong/im/Member$RoleType;)V

    .line 2705
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->m:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2716
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->H(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->c(Ljava/lang/String;)V

    .line 2784
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2786
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2787
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "newCSpaceIdIM"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    move v0, v1

    .line 2742
    :goto_9
    if-eqz v0, :cond_1c

    .line 3777
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 3779
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-ne v8, v0, :cond_1a

    const-wide/16 v4, 0x2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 3780
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1a

    move v0, v1

    .line 2742
    :goto_a
    if-eqz v0, :cond_1c

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->e(Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2743
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2744
    sget v0, Lctk$f;->toggle_sync_file_to_cspace:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->p:Landroid/widget/ToggleButton;

    .line 2746
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_d

    .line 2747
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->w(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 2748
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2749
    sget v0, Lctk$i;->dt_im_conversation_sync_file_cspace_des_org_name_default:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2752
    :cond_c
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->q:Landroid/widget/TextView;

    sget v4, Lctk$i;->dt_im_conversation_sync_file_cspace_des_v1:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2753
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 2752
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2755
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2756
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2758
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "orgGroupSync"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v3, "0"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2759
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->p:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2765
    :goto_b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->p:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3794
    :goto_c
    sget v0, Lctk$f;->conversation_setting_group_anchor:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3817
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->r:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$8;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3883
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_f

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 4290
    if-eqz v3, :cond_20

    .line 5267
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v4, "f_svg_set_forbidden_add_friend_enable"

    .line 6083
    invoke-virtual {v0, v4, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 5267
    if-nez v0, :cond_1d

    move v0, v2

    .line 4290
    :goto_d
    if-eqz v0, :cond_20

    .line 4291
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-ne v8, v0, :cond_20

    .line 4292
    const-string/jumbo v0, "addFriendManageable"

    invoke-interface {v3, v0}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "0"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_e
    move v0, v1

    .line 3883
    :goto_e
    if-eqz v0, :cond_f

    .line 3884
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->e(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3885
    sget v0, Lctk$f;->rl_forbidden_add_friend:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3886
    sget v0, Lctk$f;->conversation_forbidden_add_friend_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 3887
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v3}, Ldjl;->k(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 3888
    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$11;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Landroid/widget/ToggleButton;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6833
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->s:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$9;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2393
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->c()V

    .line 2395
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b()V

    .line 7466
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    .line 7467
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->v:Landroid/widget/TextView;

    if-eqz v3, :cond_21

    sget v0, Lctk$i;->dt_lv_conversation_live_disabled_tips:I

    :goto_f
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 7469
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->w:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 7471
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->w:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$22;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$22;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7486
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7489
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->e(Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7490
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7492
    sget v0, Lctk$f;->iv_admin_ads_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 7493
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Ldjt;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    .line 7494
    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Z)V

    .line 7495
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->G:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$23;

    invoke-direct {v3, p0, v1, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$23;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;ZLcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2400
    :cond_10
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "groupRingId"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->I:Ljava/lang/String;

    .line 2401
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->I:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b(Ljava/lang/String;)V

    .line 165
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->K:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 8184
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 8185
    const-string/jumbo v1, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8186
    const-string/jumbo v1, "action_group_ring_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8187
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_2

    .line 2580
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_3

    .line 2586
    :cond_12
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->d:Landroid/widget/TextView;

    sget v3, Lctk$i;->and_conversation_only_owner_strict_modify_tips:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 2589
    :cond_13
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->v()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2590
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->d:Landroid/widget/TextView;

    sget v3, Lctk$i;->conversation_only_owner_modify_tips_with_robots:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 2592
    :cond_14
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->d:Landroid/widget/TextView;

    sget v3, Lctk$i;->conversation_only_owner_modify_tips:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 2628
    :cond_15
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_5

    .line 2648
    :cond_16
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_6

    .line 2654
    :cond_17
    sget v0, Lctk$f;->rl_only_master_validate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2655
    sget v0, Lctk$f;->rl_only_master_validate_splitter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 2676
    :cond_18
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_8

    :cond_19
    move v0, v2

    .line 2787
    goto/16 :goto_9

    :cond_1a
    move v0, v2

    .line 3780
    goto/16 :goto_a

    .line 2762
    :cond_1b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->p:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_b

    .line 2772
    :cond_1c
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 5270
    :cond_1d
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v4, "im_manage_add_friends_enabled"

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    move v0, v2

    .line 5271
    goto/16 :goto_d

    :cond_1e
    move v0, v1

    .line 5273
    goto/16 :goto_d

    :cond_1f
    move v0, v2

    .line 4293
    goto/16 :goto_e

    :cond_20
    move v0, v2

    .line 4295
    goto/16 :goto_e

    .line 7467
    :cond_21
    sget v0, Lctk$i;->dt_lv_conversation_live_enabled_tips:I

    goto/16 :goto_f

    .line 2400
    :cond_22
    const-string/jumbo v0, ""

    goto/16 :goto_10
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1096
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 1097
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->K:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 1098
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->J:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1100
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1102
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 563
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onResume()V

    .line 565
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->D:Z

    if-eqz v0, :cond_0

    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->D:Z

    .line 568
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b()V

    .line 570
    :cond_0
    return-void
.end method
