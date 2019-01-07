.class public Lcom/alibaba/alimei/mail/activity/MailDetailActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$a;
.implements Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;


# static fields
.field private static H:Z


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Lcom/alibaba/wukong/im/Conversation;

.field private F:Landroid/content/BroadcastReceiver;

.field private G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private I:Landroid/view/View;

.field private J:Landroid/view/View;

.field private K:I

.field private L:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private M:Z

.field private N:Z

.field a:Lyb;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/view/View;

.field private o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:Ljava/lang/String;

.field private s:Landroid/view/MenuItem;

.field private t:Landroid/view/MenuItem;

.field private u:Landroid/view/MenuItem;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->H:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 161
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->s:Landroid/view/MenuItem;

    .line 162
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->t:Landroid/view/MenuItem;

    .line 163
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->u:Landroid/view/MenuItem;

    .line 165
    iput v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->z:Z

    .line 190
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->L:Ljava/util/HashSet;

    .line 192
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->M:Z

    .line 197
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a:Lyb;

    return-void
.end method

.method private static a(JLjava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p0, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 443
    .local p2, "emailProfileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/4 v0, 0x0

    .line 444
    .local v0, "email":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 445
    const/4 v3, 0x0

    .line 459
    :goto_0
    return-object v3

    .line 449
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 450
    .local v1, "mail":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 451
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v2, :cond_1

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v4, p0, v4

    if-nez v4, :cond_1

    .line 453
    move-object v0, v1

    invoke-static {v1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .end local v1    # "mail":Ljava/lang/String;
    .end local v2    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    move-object v3, v0

    .line 459
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->L:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->G:Ljava/util/Map;

    return-object p1
.end method

.method private a(I)V
    .locals 9
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->showLoadingDialog()V

    .line 748
    new-instance v0, Lafb;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .line 18444
    iget-object v2, v2, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 748
    invoke-direct {v0, p0, v2}, Lafb;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V

    .line 749
    .local v0, "helper":Lafb;
    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;I)V

    .line 19050
    .local v1, "listener":Lafb$a;
    iget-boolean v2, v0, Lafb;->f:Z

    if-eqz v2, :cond_3

    .line 19054
    iput-object v1, v0, Lafb;->e:Lafb$a;

    .line 19056
    iget-object v2, v0, Lafb;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v2, :cond_3

    .line 19057
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 19058
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19059
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 19060
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 19062
    iget-object v6, v0, Lafb;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 19063
    iget-object v6, v0, Lafb;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    invoke-static {v3, v6}, Lafb;->a(Ljava/util/List;Ljava/util/List;)V

    .line 19066
    :cond_0
    iget-object v6, v0, Lafb;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 19067
    iget-object v6, v0, Lafb;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    invoke-static {v4, v6}, Lafb;->a(Ljava/util/List;Ljava/util/List;)V

    .line 19070
    :cond_1
    new-instance v6, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    invoke-direct {v6}, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;-><init>()V

    .line 19071
    iget-object v7, v0, Lafb;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getFrom()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v7

    .line 19073
    if-eqz v7, :cond_2

    .line 19074
    iget-object v8, v7, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iput-object v8, v6, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    .line 19075
    iget-object v8, v7, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 19076
    iget-object v7, v7, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v7}, Lacn;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    .line 19080
    :goto_0
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19083
    :cond_2
    const-string/jumbo v6, "cc"

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19084
    const-string/jumbo v4, "to"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19085
    const-string/jumbo v3, "from"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19117
    iget-object v3, v0, Lafb;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 19118
    invoke-virtual {v0, v2}, Lafb;->a(Ljava/util/Map;)V

    .line 819
    :cond_3
    return-void

    .line 19078
    :cond_4
    iget-object v7, v7, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    iput-object v7, v6, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Lafn;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;
    .param p1, "x1"    # Lafn;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 113
    .line 35468
    if-nez p1, :cond_1

    .line 35545
    :cond_0
    :goto_0
    return-void

    .line 36136
    :cond_1
    iget v0, p1, Lafn;->a:I

    .line 35473
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 49446
    :sswitch_0
    const-string/jumbo v0, "mail_read_more_del_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 35529
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->l()V

    goto :goto_0

    .line 36389
    :sswitch_1
    const-string/jumbo v0, "mail_read_more_phonecall_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 37203
    const-string/jumbo v0, "button"

    .line 37934
    const-string/jumbo v1, "mail_meeting_click"

    invoke-static {v1, v0}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37205
    invoke-direct {p0, v7}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(I)V

    goto :goto_0

    .line 38397
    :sswitch_2
    const-string/jumbo v0, "mail_read_more_ding_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 39209
    const-string/jumbo v0, "button"

    .line 39922
    const-string/jumbo v1, "mail_msg_click"

    invoke-static {v1, v0}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39210
    invoke-static {}, Lacg;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 39211
    sget v0, Laxo$i;->dt_mail_feature_openfor_alimei:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 39214
    :cond_2
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(I)V

    goto :goto_0

    .line 40393
    :sswitch_3
    const-string/jumbo v0, "mail_read_more_top_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 42005
    const-string/jumbo v0, "mail_readmail_backtochat"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 41085
    sget v0, Laxo$i;->dt_mail_detail_sticker_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 41086
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    .line 41087
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getId()J

    move-result-wide v4

    .line 41090
    sget v0, Laxo$i;->dt_mail_sticker_conv_success:I

    invoke-static {v0}, Lcms;->a(I)V

    move-object v1, p0

    .line 41091
    invoke-static/range {v1 .. v6}, Lacg;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0

    .line 42369
    :sswitch_4
    const-string/jumbo v0, "mail_read_more_reply_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 43803
    const-string/jumbo v0, "mail_reply_single_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 42901
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->E:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->E:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-ne v0, v3, :cond_3

    move v6, v3

    .line 42905
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    .line 42907
    :goto_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->E:Lcom/alibaba/wukong/im/Conversation;

    :goto_2
    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/wukong/im/Conversation;Lcma;)V

    goto/16 :goto_0

    :cond_4
    move-object v2, v5

    .line 42905
    goto :goto_1

    :cond_5
    move-object v4, v5

    .line 42907
    goto :goto_2

    .line 44373
    :sswitch_5
    const-string/jumbo v0, "mail_read_more_replyall_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 45811
    const-string/jumbo v0, "mail_reply_all_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 44914
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    .line 44916
    :goto_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->E:Lcom/alibaba/wukong/im/Conversation;

    move-object v0, p0

    move v3, v7

    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/wukong/im/Conversation;Lcma;)V

    goto/16 :goto_0

    :cond_6
    move-object v2, v5

    .line 44914
    goto :goto_3

    .line 46365
    :sswitch_6
    const-string/jumbo v0, "mail_read_forward_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 35496
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->j()V

    goto/16 :goto_0

    .line 46377
    :sswitch_7
    const-string/jumbo v0, "mail_read_more_tag_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 47095
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 47096
    sget v0, Laxo$i;->dt_mail_feature_openfor_alimei:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 47099
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47100
    const-string/jumbo v1, "account_name"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47101
    const-string/jumbo v1, "mail_server_id"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47103
    const-string/jumbo v1, "/mail/marktag.html"

    invoke-virtual {p0, v1, v0, v3}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 47381
    :sswitch_8
    const-string/jumbo v0, "mail_read_more_attention_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 35504
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k()V

    goto/16 :goto_0

    .line 48381
    :sswitch_9
    const-string/jumbo v0, "mail_read_more_attention_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 35508
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k()V

    goto/16 :goto_0

    .line 48385
    :sswitch_a
    const-string/jumbo v0, "mail_read_more_move_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 49018
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    const-class v2, Lxv;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 49040
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v1}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryFolderByMailServerId(Ljava/lang/String;Lxv;)V

    goto/16 :goto_0

    .line 49442
    :sswitch_b
    const-string/jumbo v0, "mail_read_more_trash_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 35516
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->e(Z)V

    goto/16 :goto_0

    .line 35519
    :sswitch_c
    invoke-direct {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->e(Z)V

    goto/16 :goto_0

    .line 35522
    :sswitch_d
    invoke-direct {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d(Z)V

    goto/16 :goto_0

    .line 35525
    :sswitch_e
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d(Z)V

    goto/16 :goto_0

    .line 50434
    :sswitch_f
    const-string/jumbo v0, "mail_read_more_redflag_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 35533
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    const-string/jumbo v1, "1"

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 50436
    :sswitch_10
    const-string/jumbo v0, "mail_read_more_done_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 35537
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    const-string/jumbo v1, "2"

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 35540
    :sswitch_11
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    .line 35541
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_8

    const-string/jumbo v0, "2"

    :goto_4
    invoke-direct {p0, v1, v0, v6, v3}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "1"

    goto :goto_4

    .line 50438
    :sswitch_12
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_0

    .line 50442
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 50443
    sget v0, Laxo$i;->dt_mail_feature_openfor_alimei:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 50447
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-wide v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->timeStamp:J

    sub-long/2addr v0, v2

    const-wide v2, 0x9a7ec800L

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 50448
    sget v0, Laxo$i;->dt_cmail_revoke_fail_for_thrity_days:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 50451
    :cond_a
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50452
    sget v1, Laxo$i;->dt_cmail_sure_revoke:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->dt_cmail_sure_revoke_des:I

    .line 50453
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->sure:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$17;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$17;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    .line 50454
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->cancel:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$16;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$16;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    .line 50459
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 50465
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 35547
    :sswitch_13
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o()V

    goto/16 :goto_0

    .line 35473
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_a
        0x11 -> :sswitch_e
        0x12 -> :sswitch_d
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_6
        0x1a -> :sswitch_b
        0x2e -> :sswitch_8
        0x2f -> :sswitch_9
        0x30 -> :sswitch_1
        0x31 -> :sswitch_2
        0x32 -> :sswitch_3
        0x33 -> :sswitch_7
        0x35 -> :sswitch_f
        0x36 -> :sswitch_11
        0x37 -> :sswitch_10
        0x38 -> :sswitch_c
        0x39 -> :sswitch_12
        0x3a -> :sswitch_13
    .end sparse-switch
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 113
    .line 31438
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    .line 31439
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 113
    return-void
.end method

.method private a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;ZZ)V
    .locals 11
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p2, "tagId"    # Ljava/lang/String;
    .param p3, "isAdd"    # Z
    .param p4, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1559
    if-nez p1, :cond_0

    .line 1633
    :goto_0
    return-void

    .line 1568
    :cond_0
    iget-object v8, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 1573
    .local v8, "serverId":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v7

    .line 1574
    .local v7, "isAliAccount":Z
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1575
    .local v6, "addTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1576
    .local v3, "removeTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    .line 1577
    .local v9, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_1

    .line 1578
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1580
    .restart local v9    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz p3, :cond_6

    .line 1581
    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    invoke-interface {v9, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1583
    const-string/jumbo v0, "1"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1584
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    if-eqz v0, :cond_2

    .line 1585
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    const-string/jumbo v1, "1"

    sget v2, Laxo$i;->icon_task_fill:I

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v5}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Ljava/lang/String;IZ)V

    .line 1588
    :cond_2
    if-eqz v7, :cond_3

    .line 1589
    const-string/jumbo v0, "2"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1610
    :cond_3
    :goto_1
    invoke-interface {v9, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1611
    iput-object v9, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    .line 1613
    new-instance v4, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$10;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$10;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    .line 1631
    .local v4, "listener":Lxv;, "Lxv<Lxv$a;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_8

    move-object v2, v6

    :goto_2
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->addAndRemoveTag(ZLjava/util/List;Ljava/util/List;Lxv;[Ljava/lang/String;)V

    goto :goto_0

    .line 1592
    .end local v4    # "listener":Lxv;, "Lxv<Lxv$a;>;"
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    if-eqz v0, :cond_5

    .line 1593
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    const-string/jumbo v1, "2"

    sget v2, Laxo$i;->icon_right_fill:I

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v5}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Ljava/lang/String;IZ)V

    .line 1596
    :cond_5
    if-eqz v7, :cond_3

    .line 1597
    const-string/jumbo v0, "1"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1601
    :cond_6
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    if-eqz v0, :cond_7

    .line 1602
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    const/4 v1, 0x0

    sget v2, Laxo$i;->icon_roundclose:I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Ljava/lang/String;IZ)V

    .line 1605
    :cond_7
    const-string/jumbo v0, "1"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1606
    if-eqz v7, :cond_3

    .line 1607
    const-string/jumbo v0, "2"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1631
    .restart local v4    # "listener":Lxv;, "Lxv<Lxv$a;>;"
    :cond_8
    const/4 v2, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->N:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 33697
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 33698
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 33699
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 33700
    const-string/jumbo v1, "tempmcs"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 33702
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v2, 0x0

    .line 113
    .line 31481
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->G:Ljava/util/Map;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 31483
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .line 32444
    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 31484
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 31485
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eqz v4, :cond_0

    move v1, v2

    .line 31486
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 31487
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 31488
    if-eqz v0, :cond_3

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_3

    .line 31489
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 31494
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 31495
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 31496
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 31497
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->G:Ljava/util/Map;

    invoke-static {v6, v7, v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(JLjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->chatMailReceiver:Ljava/lang/String;

    .line 31498
    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->G:Ljava/util/Map;

    invoke-static {v4, v5, v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(JLjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->chatMsgSender:Ljava/lang/String;

    .line 31501
    :cond_1
    invoke-static {v0, p0, v3, v2}, Lacg;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V

    .line 31503
    :cond_2
    :goto_1
    return-void

    .line 31486
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 31504
    :cond_4
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->G:Ljava/util/Map;

    .line 32463
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 32464
    if-eqz v4, :cond_6

    .line 32465
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 32466
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32467
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 32468
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 32469
    if-eqz v1, :cond_5

    .line 32470
    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 31504
    :cond_6
    invoke-static {p1, p0, v5, v3, v2}, Lacg;->a(Ljava/util/List;Landroid/app/Activity;Ljava/util/Map;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 113
    .line 32513
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32514
    :cond_0
    :goto_0
    return-void

    .line 32517
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    if-eqz v0, :cond_0

    .line 32521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32522
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .line 33444
    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 32522
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32523
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$20;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$20;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Ljava/util/List;)V

    .line 32557
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    invoke-interface {v2, v0, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 32558
    invoke-static {v1, v0}, Lacg;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method private d(Z)V
    .locals 5
    .param p1, "read"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 951
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v2}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    .line 952
    .local v1, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-nez v1, :cond_0

    .line 953
    const-string/jumbo v2, "MailDetailActivity"

    const-string/jumbo v3, "tokenMailReadOrUnread fail for getMailApi null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    :goto_0
    return-void

    .line 24430
    :cond_0
    const-string/jumbo v2, "mail_read_more_unread_click"

    invoke-static {v2}, Lafe;->a(Ljava/lang/String;)V

    .line 957
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Z)V

    const-class v4, Lxv;

    .line 958
    invoke-interface {v2, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 989
    .local v0, "listener":Lxv;, "Lxv<Lxv$a;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v1, p1, v0, v2}, Lcom/alibaba/alimei/sdk/api/MailApi;->changeMailReadStatus(ZLxv;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    return-object v0
.end method

.method private e(Z)V
    .locals 5
    .param p1, "report"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1044
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v2}, Lafh;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1045
    sget v2, Laxo$i;->dt_mail_feature_openfor_alimei:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 1079
    :goto_0
    return-void

    .line 1049
    :cond_0
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    const-class v4, Lxv;

    invoke-interface {v2, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 1073
    .local v0, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v2}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    .line 1074
    .local v1, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v1, :cond_1

    .line 1075
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    invoke-interface {v1, v2, p1, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->reportOrTrustSpamMail(Ljava/lang/String;ZLxv;)V

    goto :goto_0

    .line 1077
    :cond_1
    const-string/jumbo v2, "MailDetailActivity"

    const-string/jumbo v3, "reportOrTrustSpam fail for get mailApi null, error!!!!!"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    return-object v0
.end method

.method private f(Z)V
    .locals 4
    .param p1, "resetAll"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1735
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->E:Lcom/alibaba/wukong/im/Conversation;

    .line 1737
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    if-eqz v0, :cond_b

    .line 1738
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .line 27497
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    .line 1739
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .line 27834
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->w:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 27835
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->w:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27838
    :cond_0
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 27839
    if-eqz v1, :cond_1

    .line 27840
    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setOnTitleBarWebView(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;)V

    .line 27842
    :cond_1
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    if-eqz v1, :cond_2

    .line 27843
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setOnAttachmentLoadListener(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;)V

    .line 27845
    :cond_2
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->E:Lyb;

    if-eqz v1, :cond_3

    .line 28085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    .line 27846
    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->E:Lyb;

    invoke-interface {v1, v2}, Lya;->a(Lyb;)V

    .line 27847
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->E:Lyb;

    .line 27849
    :cond_3
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->A:Lyb;

    if-eqz v1, :cond_4

    .line 29085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    .line 27850
    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->A:Lyb;

    invoke-interface {v1, v2}, Lya;->a(Lyb;)V

    .line 27851
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->A:Lyb;

    .line 27853
    :cond_4
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->s:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 27854
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27856
    :cond_5
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->f:Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;

    if-eqz v1, :cond_6

    .line 27857
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->f:Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;->setOnLayoutChangedListener(Lsg;)V

    .line 27859
    :cond_6
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->t:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    if-eqz v1, :cond_7

    .line 27860
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->t:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->setOnLayoutChangedListener(Lsg;)V

    .line 27862
    :cond_7
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->c()V

    .line 27865
    if-eqz p1, :cond_8

    .line 29880
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d:Landroid/app/Activity;

    .line 29881
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e:Lsh;

    .line 29882
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->b:Landroid/net/Uri;

    .line 29883
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->f:Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;

    .line 29884
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->g:Landroid/view/View;

    .line 29885
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 29886
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->i:Landroid/widget/TextView;

    .line 29887
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->j:Landroid/widget/TextView;

    .line 29888
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->k:Landroid/widget/TextView;

    .line 29889
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->l:Landroid/widget/TextView;

    .line 29890
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->m:Landroid/widget/RelativeLayout;

    .line 29891
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->n:Landroid/widget/TextView;

    .line 29892
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->o:Landroid/view/View;

    .line 29893
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->p:Landroid/view/View;

    .line 29894
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->q:Landroid/view/ViewStub;

    .line 29895
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->r:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    .line 29896
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->s:Landroid/widget/TextView;

    .line 29897
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->t:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    .line 29898
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    .line 29899
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->v:Landroid/view/View;

    .line 29900
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->w:Landroid/widget/Button;

    .line 29901
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    .line 27869
    :cond_8
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->B:Lxm;

    if-eqz v1, :cond_9

    .line 27870
    const-class v1, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->B:Lxm;

    invoke-static {v1, v2}, Lafv;->b(Ljava/lang/Class;Lxm;)V

    .line 27871
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->B:Lxm;

    .line 27874
    :cond_9
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    if-eqz v1, :cond_a

    .line 27875
    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1740
    :cond_a
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .line 1742
    :cond_b
    return-void
.end method

.method private f(Ljava/lang/String;)Z
    .locals 10
    .param p1, "currentUser"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1905
    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    if-eqz v8, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v6, v7

    .line 1926
    :cond_1
    :goto_0
    return v6

    .line 1908
    :cond_2
    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1909
    .local v3, "result":Z
    if-nez v3, :cond_1

    .line 1912
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-virtual {v8, p1, v9}, Lafc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1914
    .local v2, "isSameOrg":Z
    if-nez v2, :cond_3

    move v6, v7

    .line 1915
    goto :goto_0

    .line 1917
    :cond_3
    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    const-string/jumbo v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1918
    .local v0, "index1":I
    const-string/jumbo v8, "@"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1919
    .local v1, "index2":I
    if-ltz v0, :cond_4

    if-ltz v1, :cond_4

    .line 1920
    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-virtual {v8, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1921
    .local v4, "s1":Ljava/lang/String;
    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1922
    .local v5, "s2":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .end local v4    # "s1":Ljava/lang/String;
    .end local v5    # "s2":Ljava/lang/String;
    :cond_4
    move v6, v7

    .line 1926
    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 113
    .line 34237
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_0

    .line 34239
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lacg;->a(Ljava/lang/String;J)V

    .line 34243
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 34244
    :cond_1
    const-string/jumbo v0, "MailDetailActivity"

    const-string/jumbo v1, "mMailDetailNavServerIdList is empty!"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34245
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->finish()V

    .line 34264
    :goto_0
    return-void

    .line 34249
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    .line 34250
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34251
    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    .line 34252
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34253
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->m()V

    goto :goto_0

    .line 34255
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34256
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    .line 34257
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    if-gez v0, :cond_4

    .line 34258
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    .line 34261
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34263
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->onBackPressed()V

    goto :goto_0

    .line 34266
    :cond_6
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    .line 34267
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->m()V

    .line 34268
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->h()V

    goto :goto_0
.end method

.method private h()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 314
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->f(Z)V

    .line 316
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Ljava/lang/String;Landroid/net/Uri;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    if-nez v1, :cond_2

    .line 324
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-direct {v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .line 327
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->M:Z

    .line 5864
    iput-boolean v2, v1, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->z:Z

    .line 329
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 330
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Laxo$f;->content_frame:I

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 331
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 333
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .line 6497
    iput-object p0, v1, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    .line 335
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->A:Z

    if-nez v1, :cond_4

    .line 6968
    sget-boolean v1, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->H:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "sp_mail_check_send_to_chat"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->H:Z

    if-eqz v1, :cond_3

    .line 6978
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    :goto_0
    return-void

    .line 6971
    :cond_3
    sput-boolean v3, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->H:Z

    .line 6972
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->n()V

    goto :goto_0

    .line 338
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->n()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 113
    .line 34993
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    const-class v2, Lxv;

    .line 34994
    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 35013
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/alibaba/alimei/sdk/api/MailApi;->deleteMailByServerId(Lxv;[Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private i()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 17643
    const-string/jumbo v1, "mail_read_next_click"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 728
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 743
    :goto_0
    return v0

    .line 732
    :cond_0
    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->N:Z

    .line 733
    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    .line 734
    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 735
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    goto :goto_0

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    .line 741
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->m()V

    .line 742
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->h()V

    .line 743
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 23799
    const-string/jumbo v0, "mail_reply_tranmit_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    .line 925
    .local v2, "draftText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->E:Lcom/alibaba/wukong/im/Conversation;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 927
    return-void

    .end local v2    # "draftText":Ljava/lang/String;
    :cond_0
    move-object v2, v5

    .line 923
    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->A:Z

    return v0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->I:Landroid/view/View;

    return-object v0
.end method

.method private k()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1107
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v4}, Lafh;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1108
    sget v4, Laxo$i;->dt_mail_feature_openfor_alimei:I

    invoke-static {v4}, Lcms;->a(I)V

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v4, :cond_0

    .line 1112
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-static {v4}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v1

    .line 1113
    .local v1, "hasImportant":Z
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    .line 1114
    .local v3, "serverId":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v4}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v0

    .line 1115
    .local v0, "additionalApi":Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;
    if-eqz v0, :cond_3

    .line 1116
    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$6;

    invoke-direct {v2, p0, v3, v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Ljava/lang/String;Z)V

    .line 1153
    .local v2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    if-eqz v1, :cond_2

    .line 1154
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    const-string/jumbo v5, "6"

    invoke-interface {v0, v4, v5, v2}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->removeMailTag(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 1156
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    const-string/jumbo v5, "6"

    invoke-interface {v0, v4, v5, v2}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->addMailTag(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 1159
    .end local v2    # "listener":Lxv;, "Lxv<Lxv$a;>;"
    :cond_3
    const-string/jumbo v4, "MailDetailActivity"

    const-string/jumbo v5, "addOrRemoveImportant fail for get addtionApi null, error!!!!!"

    invoke-static {v4, v5}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->n:Landroid/view/View;

    return-object v0
.end method

.method private l()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1218
    const-string/jumbo v1, "more"

    .line 24938
    const-string/jumbo v2, "mail_delete_click"

    invoke-static {v2, v1}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1221
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Laxo$i;->mail_delete_confirm:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->sure:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$8;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$8;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    .line 1222
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->cancel:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$7;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    .line 1227
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1233
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1234
    return-void
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->g:Landroid/view/View;

    return-object v0
.end method

.method private m()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1636
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1659
    :cond_0
    :goto_0
    return-void

    .line 1640
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->s:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->t:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1644
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    if-nez v0, :cond_2

    .line 1645
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->s:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1651
    :goto_1
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1653
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->t:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1647
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->s:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1655
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->t:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private n()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2013
    sput-boolean v2, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->H:Z

    .line 2014
    const-string/jumbo v0, "sp_mail_check_send_to_chat"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2015
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->I:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2016
    sput-boolean v2, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->H:Z

    .line 2017
    const-string/jumbo v0, "sp_mail_check_send_to_chat"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2018
    return-void
.end method

.method static synthetic n(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 113
    .line 50467
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$18;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$18;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    .line 50487
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v1}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v1

    .line 50488
    if-eqz v1, :cond_0

    .line 50489
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->revokeMail(Ljava/lang/String;Lxv;)V

    :goto_0
    return-void

    .line 50491
    :cond_0
    const-string/jumbo v0, "MailDetailActivity"

    const-string/jumbo v1, "doRevoke fail for obtain mailAdditionalApi fail"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2204
    sget v0, Laxo$i;->dt_mail_feature_openfor_alimei:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2210
    :cond_0
    :goto_0
    return-void

    .line 2207
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    if-eqz v0, :cond_0

    .line 2208
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d()V

    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V
    .locals 2
    .param p1, "mailDetailModel"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1764
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailDetailModel;ZLcma;)V

    .line 1765
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 6
    .param p1, "draftContent"    # Ljava/lang/String;
    .param p2, "mode"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2026
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_0

    .line 2027
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iput-object p1, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    .line 2030
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2031
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->ui_common_level1_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2032
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2033
    packed-switch p2, :pswitch_data_0

    .line 2062
    :goto_0
    return-void

    .line 2035
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->l:Landroid/widget/TextView;

    sget v1, Laxo$i;->icon_reply:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2036
    iput v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->K:I

    goto :goto_0

    .line 2039
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->l:Landroid/widget/TextView;

    sget v1, Laxo$i;->icon_replyall:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2040
    iput v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->K:I

    goto :goto_0

    .line 2046
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->cmail_color_7d8082:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2047
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 2049
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->l:Landroid/widget/TextView;

    sget v1, Laxo$i;->icon_reply:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2050
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/String;

    sget v2, Laxo$i;->reply_action:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "..."

    aput-object v2, v1, v3

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2051
    iput v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->K:I

    goto :goto_0

    .line 2054
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->l:Landroid/widget/TextView;

    sget v1, Laxo$i;->icon_replyall:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2055
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/String;

    sget v2, Laxo$i;->reply_all_action:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "..."

    aput-object v2, v1, v3

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2056
    iput v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->K:I

    goto :goto_0

    .line 2033
    .line 2047
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "send"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1943
    if-eqz p1, :cond_0

    .line 1944
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 1945
    .local v1, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1946
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "space_statistic_key"

    const-string/jumbo v3, "space_detail_send_contact_success"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    const-string/jumbo v2, "space_transfer_src"

    const-string/jumbo v3, "mail"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    if-eqz p3, :cond_1

    .line 1949
    invoke-virtual {v1, p0, p2, p1, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1954
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    :cond_0
    :goto_0
    return-void

    .line 1951
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0, p1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "isImport"    # Z

    .prologue
    .line 1769
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->x:Z

    .line 1770
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->supportInvalidateOptionsMenu()V

    .line 1771
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1931
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->A:Z

    .line 1932
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->supportInvalidateOptionsMenu()V

    .line 1933
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$13;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$13;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1939
    return-void
.end method

.method public final b(Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V
    .locals 13
    .param p1, "mailDetailModel"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1792
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 1793
    if-nez p1, :cond_1

    .line 1794
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->finish()V

    .line 1898
    :cond_0
    :goto_0
    return-void

    .line 1799
    :cond_1
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1800
    iput-boolean v9, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->B:Z

    .line 1801
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->supportInvalidateOptionsMenu()V

    .line 1803
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget v2, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->folderType:I

    .line 1804
    .local v2, "folderType":I
    invoke-static {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSendFolder(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 30097
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v6}, Lafh;->f(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 30100
    new-instance v6, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$15;

    invoke-direct {v6, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$15;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    .line 30131
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v7}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v7

    .line 30132
    if-eqz v7, :cond_a

    .line 30133
    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->queryRevokeMailStatus(Ljava/lang/String;Lxv;)V

    .line 1809
    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    .line 1810
    const/4 v0, 0x0

    .line 1812
    .local v0, "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    const/4 v4, 0x0

    .line 1813
    .local v4, "receiverCount":I
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 1814
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 1815
    .local v5, "size":I
    add-int/lit8 v4, v5, 0x0

    .line 1816
    if-ne v5, v9, :cond_3

    .line 1817
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 1820
    .end local v5    # "size":I
    .restart local v0    # "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    :cond_3
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 1821
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 1822
    .restart local v5    # "size":I
    add-int/2addr v4, v5

    .line 1823
    if-ne v5, v9, :cond_4

    if-eqz v0, :cond_4

    .line 1824
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 1838
    .end local v5    # "size":I
    .restart local v0    # "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    :cond_4
    if-ne v4, v9, :cond_5

    if-eqz v0, :cond_5

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 1839
    invoke-direct {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->f(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1840
    iput-boolean v10, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->z:Z

    .line 30343
    :cond_5
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->b:Ljava/util/HashMap;

    .line 30344
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->c:Ljava/util/List;

    .line 30347
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->b:Ljava/util/HashMap;

    sget v7, Laxo$i;->reply_action:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30348
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->b:Ljava/util/HashMap;

    sget v7, Laxo$i;->reply_all_action:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30349
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->b:Ljava/util/HashMap;

    sget v7, Laxo$i;->forward_action:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30350
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->b:Ljava/util/HashMap;

    sget v7, Laxo$i;->dt_cmail_reader_sendtochat:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30352
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->b:Ljava/util/HashMap;

    sget v7, Laxo$i;->dt_mail_detail_op_call:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30353
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->b:Ljava/util/HashMap;

    sget v7, Laxo$i;->dt_cmail_detail_ding:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30354
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->b:Ljava/util/HashMap;

    sget v7, Laxo$i;->dt_mail_action_markunread_title:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30355
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->b:Ljava/util/HashMap;

    sget v7, Laxo$i;->dt_mail_action_moveto_title:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30356
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->b:Ljava/util/HashMap;

    sget v7, Laxo$i;->dt_set_app_conversation_top:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30358
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->c:Ljava/util/List;

    sget v7, Laxo$i;->reply_action:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30359
    iget-boolean v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->z:Z

    if-eqz v6, :cond_6

    .line 30360
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->c:Ljava/util/List;

    sget v7, Laxo$i;->reply_all_action:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30362
    :cond_6
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->c:Ljava/util/List;

    sget v7, Laxo$i;->forward_action:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1845
    invoke-static {}, Lacq;->d()Z

    move-result v1

    .line 1847
    .local v1, "enableQuickReply":Z
    if-eqz v1, :cond_12

    .line 1848
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1849
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->j:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1850
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1851
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Laxo$c;->ui_common_level1_text_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1852
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1853
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    if-eqz v6, :cond_7

    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1855
    :cond_7
    if-gt v4, v9, :cond_8

    if-ne v4, v9, :cond_b

    if-eqz v0, :cond_b

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    if-eqz v6, :cond_b

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 1856
    invoke-direct {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->f(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1858
    :cond_8
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->l:Landroid/widget/TextView;

    sget v7, Laxo$i;->icon_replyall:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1859
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    new-array v7, v11, [Ljava/lang/String;

    sget v8, Laxo$i;->reply_all_action:I

    invoke-virtual {p0, v8}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string/jumbo v8, "..."

    aput-object v8, v7, v9

    invoke-static {v7}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1878
    :goto_2
    if-gt v4, v9, :cond_9

    if-ne v4, v9, :cond_11

    if-eqz v0, :cond_11

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    if-eqz v6, :cond_11

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 1879
    invoke-direct {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->f(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 1880
    :cond_9
    iput v11, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->K:I

    goto/16 :goto_0

    .line 30135
    .end local v0    # "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v1    # "enableQuickReply":Z
    .end local v4    # "receiverCount":I
    :cond_a
    const-string/jumbo v6, "MailDetailActivity"

    const-string/jumbo v7, "queryRevokeStatus fail for obtain mailAdditionalApi fail"

    invoke-static {v6, v7}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1861
    .restart local v0    # "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .restart local v1    # "enableQuickReply":Z
    .restart local v4    # "receiverCount":I
    :cond_b
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->l:Landroid/widget/TextView;

    sget v7, Laxo$i;->icon_reply:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1862
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    new-array v7, v11, [Ljava/lang/String;

    sget v8, Laxo$i;->reply_action:I

    invoke-virtual {p0, v8}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string/jumbo v8, "..."

    aput-object v8, v7, v9

    invoke-static {v7}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1865
    :cond_c
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->l:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v9, :cond_d

    sget v6, Laxo$i;->icon_reply:I

    :goto_3
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_d
    sget v6, Laxo$i;->icon_replyall:I

    goto :goto_3

    .line 1867
    :cond_e
    if-gt v4, v9, :cond_f

    if-ne v4, v9, :cond_10

    if-eqz v0, :cond_10

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    if-eqz v6, :cond_10

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 1868
    invoke-direct {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->f(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 1869
    :cond_f
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Laxo$c;->cmail_color_7d8082:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1870
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    new-array v7, v11, [Ljava/lang/String;

    sget v8, Laxo$i;->reply_all_action:I

    invoke-virtual {p0, v8}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string/jumbo v8, "..."

    aput-object v8, v7, v9

    invoke-static {v7}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1871
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->l:Landroid/widget/TextView;

    sget v7, Laxo$i;->icon_replyall:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 1873
    :cond_10
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Laxo$c;->cmail_color_7d8082:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1874
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    new-array v7, v11, [Ljava/lang/String;

    sget v8, Laxo$i;->reply_action:I

    invoke-virtual {p0, v8}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string/jumbo v8, "..."

    aput-object v8, v7, v9

    invoke-static {v7}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1875
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->l:Landroid/widget/TextView;

    sget v7, Laxo$i;->icon_reply:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 1882
    :cond_11
    iput v9, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->K:I

    goto/16 :goto_0

    .line 1885
    :cond_12
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1889
    .local v3, "param":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1890
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->j:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1892
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1893
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1894
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->n:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "serverId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1759
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;ZLcma;)V

    .line 1760
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "sender"    # Z

    .prologue
    .line 1775
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->C:Z

    .line 1776
    return-void
.end method

.method public final c(Z)V
    .locals 2
    .param p1, "isOutgoing"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 1780
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->y:Z

    .line 1781
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->supportInvalidateOptionsMenu()V

    .line 1782
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$12;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$12;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1788
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2066
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2067
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 31078
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    if-eqz p3, :cond_0

    .line 31079
    const-string/jumbo v0, "mail_server_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31080
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31081
    :cond_0
    :goto_0
    return-void

    .line 31084
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31087
    const-string/jumbo v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 31088
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->tags:Ljava/util/List;

    .line 31089
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    if-eqz v0, :cond_0

    .line 31090
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 27
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 563
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v8

    .line 564
    .local v8, "id":I
    sget v2, Laxo$f;->img_forward:I

    if-ne v2, v8, :cond_1

    .line 7365
    const-string/jumbo v2, "mail_read_forward_click"

    invoke-static {v2}, Lafe;->a(Ljava/lang/String;)V

    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->j()V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    sget v2, Laxo$f;->img_more:I

    if-ne v2, v8, :cond_10

    .line 568
    const-string/jumbo v2, "pref_key_has_show_session_top"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->J:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8347
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 8349
    const/16 v2, 0x30

    sget v3, Laxo$i;->icon_phone:I

    sget v5, Laxo$i;->dt_cmail_detail_call:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v5

    .line 8350
    sget v2, Laxo$c;->cmail_color_15bc83:I

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 9156
    iput v2, v5, Lafn;->d:I

    .line 8351
    const/16 v2, 0x31

    sget v3, Laxo$i;->icon_ding:I

    sget v6, Laxo$i;->dd_cmail_start_ding:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v6

    .line 8352
    sget v2, Laxo$c;->cmail_color_3296FA:I

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 10156
    iput v2, v6, Lafn;->d:I

    .line 8353
    const/16 v2, 0x32

    sget v3, Laxo$i;->icon_imtop:I

    sget v7, Laxo$i;->dt_open_application_top:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v7}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v7

    .line 8354
    sget v2, Laxo$c;->cmail_color_3296FA:I

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 11156
    iput v2, v7, Lafn;->d:I

    .line 8356
    const/16 v2, 0x11

    sget v3, Laxo$i;->icon_read:I

    sget v9, Laxo$i;->dt_mail_mark_read:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v3, v9}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v9

    .line 8357
    const/16 v2, 0x12

    sget v3, Laxo$i;->icon_dmail:I

    sget v10, Laxo$i;->dt_mail_mark_unread:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v3, v10}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v10

    .line 8359
    const/16 v2, 0x15

    sget v3, Laxo$i;->icon_reply:I

    sget v11, Laxo$i;->reply_action:I

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v3, v11}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v11

    .line 8360
    const/16 v2, 0x16

    sget v3, Laxo$i;->icon_replyall:I

    sget v12, Laxo$i;->reply_all_action:I

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v3, v12}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v12

    .line 8361
    const/16 v2, 0x17

    sget v3, Laxo$i;->icon_arrowhead:I

    sget v13, Laxo$i;->forward_action:I

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v3, v13}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v13

    .line 8362
    const/16 v2, 0x33

    sget v3, Laxo$i;->icon_tag:I

    sget v14, Laxo$i;->dd_cmail_add_tag:I

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v3, v14}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v14

    .line 8363
    const/16 v2, 0x2f

    sget v3, Laxo$i;->icon_star_fill:I

    sget v15, Laxo$i;->alm_cmail_tag_important_remove:I

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v3, v15}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v15

    .line 8364
    sget v2, Laxo$c;->cmail_color_3296FA:I

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 12156
    iput v2, v15, Lafn;->d:I

    .line 8365
    const/16 v2, 0x2e

    sget v3, Laxo$i;->icon_star:I

    sget v16, Laxo$i;->dt_mail_follow:I

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v16

    .line 8366
    const/4 v2, 0x2

    sget v3, Laxo$i;->icon_move:I

    sget v17, Laxo$i;->dt_mail_move_to:I

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v17

    .line 8367
    const/16 v2, 0x1a

    sget v3, Laxo$i;->icon_trashcan:I

    sget v18, Laxo$i;->dd_cmail_spam_mail:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v18

    .line 8368
    const/16 v2, 0x38

    sget v3, Laxo$i;->icon_trashcan:I

    sget v19, Laxo$i;->dt_cmail_not_spam_mail:I

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v19

    .line 8369
    const/4 v2, 0x0

    sget v3, Laxo$i;->icon_delete:I

    sget v20, Laxo$i;->dt_mail_delete:I

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v20

    .line 8370
    const/16 v2, 0x39

    sget v3, Laxo$i;->icon_recover:I

    sget v21, Laxo$i;->dt_cmail_revoke_mail:I

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v21

    .line 8371
    const/16 v2, 0x3a

    sget v3, Laxo$i;->icon_multiset:I

    sget v22, Laxo$i;->dt_cmail_view_revoke_status:I

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v22

    .line 8373
    new-instance v23, Lsl;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lsl;-><init>(Landroid/app/Activity;)V

    .line 8374
    const/4 v3, 0x0

    .line 8375
    const/4 v2, 0x0

    .line 8377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 8379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->L:Ljava/util/HashSet;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->folderType:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSendFolder(I)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 8380
    const/4 v3, 0x1

    .line 8382
    const/4 v2, 0x1

    .line 8386
    :cond_2
    if-eqz v3, :cond_6

    .line 8387
    const/4 v3, 0x0

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Lafn;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v5, v24, v25

    const/4 v5, 0x1

    aput-object v6, v24, v5

    const/4 v5, 0x2

    aput-object v7, v24, v5

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Lsl;->a(I[Lafn;)V

    .line 8392
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v3}, Lafh;->f(Ljava/lang/String;)Z

    move-result v3

    .line 8394
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8396
    const/16 v6, 0x35

    sget v7, Laxo$i;->icon_task:I

    sget v24, Laxo$i;->dt_cmail_follows_tag:I

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v6, v7, v0}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v6

    .line 8397
    const/16 v7, 0x37

    sget v24, Laxo$i;->icon_C1_suc:I

    sget v25, Laxo$i;->dt_cmail_complete_tag:I

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v7, v0, v1}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v7

    .line 8398
    const/16 v24, 0x36

    sget v25, Laxo$i;->icon_roundclose:I

    sget v26, Laxo$i;->dt_cmail_cancel_flag_tag:I

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v4}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v4

    .line 8400
    if-eqz v3, :cond_b

    .line 8401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-object/from16 v24, v0

    const-string/jumbo v25, "1"

    invoke-static/range {v24 .. v25}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 8402
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8409
    :goto_2
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-static {v4}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v4

    .line 8412
    if-eqz v4, :cond_9

    .line 8413
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8418
    :goto_3
    if-eqz v2, :cond_3

    .line 8419
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->N:Z

    if-eqz v2, :cond_a

    .line 8420
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8433
    :cond_3
    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-boolean v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->isRead:Z

    if-eqz v2, :cond_d

    .line 8435
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8440
    :goto_5
    if-eqz v3, :cond_4

    .line 8441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v2, :cond_4

    .line 8442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->folderType:I

    .line 8443
    invoke-static {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isJunkFolder(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 8444
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8450
    :cond_4
    :goto_6
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8451
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8452
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8453
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13100
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 8456
    :cond_5
    :goto_7
    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v2, v0, v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$9;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Lsl;)V

    .line 13109
    move-object/from16 v0, v23

    iput-object v2, v0, Lsl;->d:Lafo;

    .line 8463
    invoke-virtual/range {v23 .. v23}, Lsl;->f()V

    goto/16 :goto_0

    .line 8389
    :cond_6
    const/4 v3, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Lafn;

    const/16 v24, 0x0

    aput-object v5, v6, v24

    const/4 v5, 0x1

    aput-object v7, v6, v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v6}, Lsl;->a(I[Lafn;)V

    goto/16 :goto_1

    .line 8403
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    const-string/jumbo v24, "2"

    move-object/from16 v0, v24

    invoke-static {v7, v0}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 8404
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 8406
    :cond_8
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 8415
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 8422
    :cond_a
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 8426
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    const-string/jumbo v7, "1"

    invoke-static {v2, v7}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 8427
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 8429
    :cond_c
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 8437
    :cond_d
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 8446
    :cond_e
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 13103
    :cond_f
    move-object/from16 v0, v23

    iget-object v2, v0, Lsl;->b:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13104
    move-object/from16 v0, v23

    iget-object v2, v0, Lsl;->c:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13105
    move-object/from16 v0, v23

    iget-object v2, v0, Lsl;->a:Lsl$a;

    move-object/from16 v0, v23

    iget-object v3, v0, Lsl;->c:Ljava/util/List;

    invoke-virtual {v2, v3}, Lsl$a;->b(Ljava/util/List;)V

    goto/16 :goto_7

    .line 571
    :cond_10
    sget v2, Laxo$f;->img_send_chat:I

    if-ne v2, v8, :cond_12

    .line 13930
    const-string/jumbo v2, "button"

    .line 14922
    const-string/jumbo v3, "mail_msg_click"

    invoke-static {v3, v2}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13931
    invoke-static {}, Lacg;->f()Z

    move-result v2

    if-nez v2, :cond_11

    .line 13932
    sget v2, Laxo$i;->dt_mail_feature_openfor_alimei:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 573
    :goto_8
    sget-boolean v2, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->H:Z

    if-eqz v2, :cond_0

    .line 574
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->n()V

    goto/16 :goto_0

    .line 13935
    :cond_11
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(I)V

    goto :goto_8

    .line 576
    :cond_12
    sget v2, Laxo$f;->quickReplyBtn:I

    if-ne v2, v8, :cond_15

    .line 16254
    const-string/jumbo v2, "mail_quickreply_click"

    invoke-static {v2}, Lafe;->a(Ljava/lang/String;)V

    .line 15276
    const/4 v2, 0x0

    .line 15277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->E:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->E:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    .line 15278
    const/4 v2, 0x1

    move v9, v2

    .line 15281
    :goto_9
    const-string/jumbo v2, "pref_key_quick_reply_keyboard_status"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    .line 15283
    const-string/jumbo v5, ""

    .line 15284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v2, :cond_13

    .line 15285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v5, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    .line 15288
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->o:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->K:I

    invoke-static/range {v2 .. v7}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    move-result-object v3

    .line 15296
    if-eqz v9, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->E:Lcom/alibaba/wukong/im/Conversation;

    .line 17238
    :goto_a
    iput-object v2, v3, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 17242
    move-object/from16 v0, p0

    iput-object v0, v3, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$a;

    .line 15299
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    const-string/jumbo v4, "quickReply"

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->show(Lcn;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 15296
    :cond_14
    const/4 v2, 0x0

    goto :goto_a

    .line 578
    :cond_15
    sget v2, Laxo$f;->icl_send_to_chat_tip:I

    if-ne v2, v8, :cond_0

    .line 579
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->n()V

    goto/16 :goto_0

    :cond_16
    move v9, v2

    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 219
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 220
    const-string/jumbo v4, "MailDetailActivity"

    .line 2986
    const-string/jumbo v7, "mail_page_maildetail_click"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 224
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 225
    .local v0, "config":Landroid/view/ViewConfiguration;
    const-class v4, Landroid/view/ViewConfiguration;

    const-string/jumbo v7, "sHasPermanentMenuKey"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 226
    .local v3, "menuKeyField":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_0

    .line 227
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 228
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    .end local v3    # "menuKeyField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->h()V

    .line 235
    sget v4, Laxo$g;->activity_cmail_detail:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->setContentView(I)V

    .line 237
    sget v4, Laxo$f;->img_forward:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->e:Landroid/view/View;

    .line 238
    sget v4, Laxo$f;->img_more:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->f:Landroid/view/View;

    .line 239
    sget v4, Laxo$f;->img_send_chat:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->g:Landroid/view/View;

    .line 240
    sget v4, Laxo$f;->quickReplyBtn:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    .line 241
    sget v4, Laxo$f;->reply_icon:I

    .line 3372
    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 241
    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->l:Landroid/widget/TextView;

    .line 242
    sget v4, Laxo$f;->bottom_view:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->m:Landroid/widget/LinearLayout;

    .line 243
    sget v4, Laxo$f;->ll_send_chat:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->n:Landroid/view/View;

    .line 245
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->n:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 246
    sget v4, Laxo$f;->icl_send_to_chat_tip:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->I:Landroid/view/View;

    .line 247
    sget v4, Laxo$f;->forward_layout:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->h:Landroid/widget/RelativeLayout;

    .line 248
    sget v4, Laxo$f;->more_layout:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->i:Landroid/widget/RelativeLayout;

    .line 249
    sget v4, Laxo$f;->spacer_layout:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->j:Landroid/view/View;

    .line 251
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->e:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->f:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->g:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->I:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    sget v4, Laxo$f;->item_red_dot:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->J:Landroid/view/View;

    .line 259
    const-string/jumbo v4, "pref_key_has_show_session_top"

    invoke-static {v4, v5}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 260
    .local v2, "hasShowTop":Z
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->J:Landroid/view/View;

    if-eqz v2, :cond_1

    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4272
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 4273
    if-eqz v4, :cond_6

    .line 4274
    const-string/jumbo v7, "account_name"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    .line 4275
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v7}, Lafh;->e(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 4276
    const-string/jumbo v4, "MailDetailActivity"

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v4, v7}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4277
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->finish()V

    .line 5411
    :goto_2
    new-instance v4, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$19;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$19;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->F:Landroid/content/BroadcastReceiver;

    .line 5432
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 5433
    const-string/jumbo v7, "com.workapp.choose.people.from.contact"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5434
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v4}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5678
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5679
    const-string/jumbo v4, "deleteOldMailFiles"

    invoke-static {v4}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v7, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$21;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$21;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    invoke-interface {v4, v7}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 266
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 268
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v4

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a:Lyb;

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v8, "basic_SendMail"

    aput-object v8, v6, v5

    invoke-interface {v4, v7, v6}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 269
    return-void

    .line 230
    .end local v2    # "hasShowTop":Z
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "hasShowTop":Z
    :cond_1
    move v4, v5

    .line 260
    goto/16 :goto_1

    .line 4281
    :cond_2
    const-string/jumbo v7, "mail_id"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    .line 4282
    const-string/jumbo v7, "intent_key_mail_msg_id"

    invoke-virtual {v4, v7, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->q:J

    .line 4283
    const-string/jumbo v7, "mail_eml_url"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->r:Ljava/lang/String;

    .line 4284
    const-string/jumbo v7, "conversation"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4285
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "conversation"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/Conversation;

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->E:Lcom/alibaba/wukong/im/Conversation;

    .line 4287
    :cond_3
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->E:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_5

    move v4, v6

    :goto_3
    iput-boolean v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->M:Z

    .line 4289
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v4

    .line 4519
    iget-object v4, v4, Lacr;->h:Ljava/util/ArrayList;

    .line 4289
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    .line 4291
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 4292
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    .line 4299
    :cond_4
    iget-wide v8, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->q:J

    cmp-long v4, v8, v10

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4300
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v4}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v4

    iget-wide v8, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->q:J

    invoke-interface {v4, v8, v9}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailById(J)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v4

    .line 4301
    if-nez v4, :cond_7

    .line 4302
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->finish()V

    goto/16 :goto_2

    :cond_5
    move v4, v5

    .line 4287
    goto :goto_3

    .line 4295
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->finish()V

    goto/16 :goto_2

    .line 4305
    :cond_7
    iget-object v4, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    .line 5383
    :cond_8
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 5384
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    .line 5385
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->L:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 5386
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->L:Ljava/util/HashSet;

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5387
    new-instance v7, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$11;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$11;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    .line 5406
    invoke-static {v4, v7}, Lafh;->b(Ljava/lang/String;Lxv;)V

    .line 4310
    :cond_9
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->h()V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 823
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->A:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->B:Z

    if-eqz v2, :cond_0

    .line 824
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->y:Z

    if-eqz v2, :cond_0

    .line 830
    const/4 v2, 0x4

    sget v3, Laxo$i;->alm_cmail_mail_cancel_and_edit:I

    invoke-interface {p1, v7, v2, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 831
    .local v0, "editMenu":Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 833
    const/4 v2, 0x1

    sget v3, Laxo$i;->alm_cmail_mail_retry:I

    invoke-interface {p1, v7, v2, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 834
    .local v1, "menuItemUpload":Landroid/view/MenuItem;
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 19662
    .end local v0    # "editMenu":Landroid/view/MenuItem;
    .end local v1    # "menuItemUpload":Landroid/view/MenuItem;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 840
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 19666
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    .line 19667
    iget v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    if-gez v2, :cond_3

    .line 19668
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->finish()V

    goto :goto_0

    .line 19672
    :cond_3
    const/4 v2, 0x5

    sget v3, Laxo$i;->alm_cmail_mail_delete:I

    invoke-interface {p1, v7, v2, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->u:Landroid/view/MenuItem;

    .line 19673
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v3, Laxo$i;->icon_delete:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Laxo$e;->transparent:I

    invoke-static {v3}, Leda;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lecx;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 19674
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->u:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 19676
    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p1, v7, v2, v7, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 19677
    new-instance v3, Luo;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$c;->ui_common_button_border_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Luo;-><init>(I)V

    .line 19678
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laxo$d;->cmail_dimen_16_dp:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19679
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 19680
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 19682
    sget v3, Laxo$i;->dt_cmail_detail_previous:I

    invoke-interface {p1, v7, v8, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->s:Landroid/view/MenuItem;

    .line 19683
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->s:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v5, Laxo$i;->icon_up:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Laxo$e;->transparent:I

    invoke-static {v5}, Leda;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Lecx;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 19685
    const/4 v3, 0x3

    sget v4, Laxo$i;->dt_cmail_detail_next:I

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->t:Landroid/view/MenuItem;

    .line 19686
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->t:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v5, Laxo$i;->icon_down:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Laxo$e;->transparent:I

    invoke-static {v5}, Leda;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Lecx;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 19688
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->u:Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 19689
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->s:Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 19690
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->t:Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 19691
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 19693
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->m()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1704
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->F:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1705
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1706
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->F:Landroid/content/BroadcastReceiver;

    .line 25745
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->e:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25746
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25747
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->g:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25748
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->D:Ljava/lang/String;

    .line 25749
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->e:Landroid/view/View;

    .line 25750
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->f:Landroid/view/View;

    .line 25751
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->g:Landroid/view/View;

    .line 25752
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->m:Landroid/widget/LinearLayout;

    .line 25753
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    .line 25754
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->r:Ljava/lang/String;

    .line 1715
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1716
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_1

    .line 1717
    invoke-virtual {v0, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 1720
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->f(Z)V

    .line 1722
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v1

    .line 26523
    iput-object v3, v1, Lacr;->h:Ljava/util/ArrayList;

    .line 1724
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a:Lyb;

    if-eqz v1, :cond_2

    .line 1725
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a:Lyb;

    invoke-interface {v1, v2}, Lya;->a(Lyb;)V

    .line 1726
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a:Lyb;

    .line 1729
    :cond_2
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 1730
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1698
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1700
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 845
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 895
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 847
    :pswitch_0
    iget-boolean v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->y:Z

    if-nez v4, :cond_4

    .line 848
    iget-boolean v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->x:Z

    if-nez v4, :cond_1

    .line 849
    const-string/jumbo v4, "more"

    .line 19942
    const-string/jumbo v5, "mail_set_important_click"

    invoke-static {v5, v4}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    if-eqz v4, :cond_0

    .line 852
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-boolean v5, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->x:Z

    if-nez v5, :cond_2

    move v2, v3

    .line 20297
    :cond_2
    const-string/jumbo v3, "6"

    .line 20339
    if-eqz v2, :cond_3

    .line 20340
    iget-object v5, v4, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-static {v5}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v5

    iget-object v6, v4, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->c:Ljava/lang/String;

    new-instance v7, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$17;

    invoke-direct {v7, v4, v3, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$17;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Ljava/lang/String;Z)V

    invoke-interface {v5, v6, v3, v7}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->addMailTag(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 20363
    :cond_3
    iget-object v5, v4, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-static {v5}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v5

    iget-object v6, v4, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->c:Ljava/lang/String;

    new-instance v7, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$18;

    invoke-direct {v7, v4, v3, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$18;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Ljava/lang/String;Z)V

    invoke-interface {v5, v6, v3, v7}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->removeMailTag(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 855
    :cond_4
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    if-eqz v4, :cond_0

    .line 856
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .line 21301
    iget-object v5, v4, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v5, :cond_5

    .line 21302
    iget-object v2, v4, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-static {v2}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    iget-object v4, v4, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getId()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->sendMailById(J)V

    move v1, v3

    .line 857
    .local v1, "result":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->finish()V

    goto :goto_0

    .end local v1    # "result":Z
    :cond_5
    move v1, v2

    .line 21305
    goto :goto_1

    .line 864
    :pswitch_1
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->l()V

    goto :goto_0

    .line 22639
    :pswitch_2
    const-string/jumbo v3, "mail_read_previous_click"

    invoke-static {v3}, Lafe;->a(Ljava/lang/String;)V

    .line 21708
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 21712
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->N:Z

    .line 21713
    iget v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    .line 21714
    iget v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    if-gez v3, :cond_6

    .line 21715
    iput v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    goto/16 :goto_0

    .line 21719
    :cond_6
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->v:Ljava/util/ArrayList;

    iget v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->w:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->p:Ljava/lang/String;

    .line 21721
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->m()V

    .line 21722
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->h()V

    goto/16 :goto_0

    .line 870
    :pswitch_3
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->i()Z

    goto/16 :goto_0

    .line 873
    :pswitch_4
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    if-eqz v2, :cond_0

    .line 874
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$23;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$23;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    const-class v5, Lxv;

    .line 875
    invoke-interface {v2, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 891
    .local v0, "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .line 23309
    iget-object v4, v2, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v4, :cond_7

    .line 23310
    iget-object v4, v2, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getId()J

    move-result-wide v4

    .line 23311
    iget-object v6, v2, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-static {v6}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v6

    new-instance v7, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$16;

    invoke-direct {v7, v2, v0, v4, v5}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$16;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lxv;J)V

    invoke-interface {v6, v4, v5, v3, v7}, Lcom/alibaba/alimei/sdk/api/MailApi;->cancelOutgoingMail(JILxv;)V

    goto/16 :goto_0

    .line 23332
    :cond_7
    if-eqz v0, :cond_0

    .line 23333
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 845
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 1958
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 1959
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1963
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onStop()V

    .line 1964
    return-void
.end method
