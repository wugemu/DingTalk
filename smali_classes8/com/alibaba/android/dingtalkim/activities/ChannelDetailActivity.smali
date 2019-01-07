.class public Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ChannelDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;
    }
.end annotation


# instance fields
.field final a:Lcom/alibaba/wukong/im/ConversationChangeListener;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Landroid/support/v7/widget/GridLayoutManager;

.field private l:Lcud;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lddl;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldsj;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

.field private q:Ldsm;

.field private r:Landroid/content/BroadcastReceiver;

.field private s:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->m:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->n:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->o:Ljava/util/List;

    .line 153
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 816
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;Ldsm;)Ldsm;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;
    .param p1, "x1"    # Ldsm;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->q:Ldsm;

    return-object p1
.end method

.method private static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 354
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "USER_FIRST_ENTER_CHANNEL_KEY"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;Lddl;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;
    .param p1, "x1"    # Lddl;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    .line 72
    .line 10717
    if-eqz p1, :cond_0

    .line 10718
    iget v0, p1, Lddl;->a:I

    packed-switch v0, :pswitch_data_0

    .line 10730
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 10720
    :pswitch_1
    const-string/jumbo v4, "contact_servewindow_appvisit_click"

    const-string/jumbo v5, "app_id=%1$d , org_id=%2$d"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v0, p1, Lddl;->b:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lddl;->b:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->appId:J

    .line 10721
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgId:J

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v8

    .line 10720
    invoke-static {v4, v5, v6}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10722
    iget-object v0, p1, Lddl;->b:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 10762
    if-eqz v0, :cond_0

    .line 10763
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->rawHomepage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 10720
    goto :goto_1

    .line 10725
    :pswitch_2
    const-string/jumbo v1, "contact_servewindow_formvisit_click"

    const-string/jumbo v4, "form_id=%1$s , org_id=%2$d"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v0, p1, Lddl;->c:Ldsj;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lddl;->c:Ldsj;

    iget-object v0, v0, Ldsj;->a:Ljava/lang/String;

    .line 10726
    :goto_2
    aput-object v0, v5, v7

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgId:J

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v8

    .line 10725
    invoke-static {v1, v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10727
    iget-object v0, p1, Lddl;->c:Ldsj;

    .line 10768
    if-eqz v0, :cond_0

    .line 10769
    iget-object v0, v0, Ldsj;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 10726
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 10774
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->q:Ldsm;

    if-eqz v0, :cond_0

    .line 10775
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->q:Ldsm;

    iget-object v0, v0, Ldsm;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 10718
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 72
    .line 10196
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 10198
    if-eqz v0, :cond_0

    .line 10199
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10200
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a(Z)V

    return-void
.end method

.method private a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 12
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 208
    .line 7213
    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    .line 7214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    .line 7831
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7833
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v8

    .line 7834
    if-eqz v8, :cond_0

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7836
    :cond_0
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 8219
    .end local p1    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :goto_0
    if-eqz p1, :cond_1

    .line 8220
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 8221
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8222
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    .line 8223
    if-nez v0, :cond_19

    .line 8224
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8232
    :cond_1
    :goto_1
    return-void

    .line 7872
    .restart local p1    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_2
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v1

    sget-object v9, Lcom/alibaba/wukong/im/Message$MessageType;->UNKNOWN:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v1, v9, :cond_3

    move v1, v4

    .line 7840
    :goto_2
    if-eqz v1, :cond_4

    .line 7842
    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7843
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v1, v5

    .line 7872
    goto :goto_2

    .line 7847
    :cond_4
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    .line 7848
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_5

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    const/16 v10, 0xfc

    if-ne v9, v10, :cond_7

    .line 7849
    :cond_5
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->d:Ljava/lang/String;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;Lcom/alibaba/wukong/im/Conversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_3

    .line 7850
    :cond_7
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_8

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    const/16 v10, 0xfb

    if-ne v9, v10, :cond_a

    .line 7851
    :cond_8
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->c:Ljava/lang/String;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_4
    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;Lcom/alibaba/wukong/im/Conversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_9
    move v4, v5

    goto :goto_4

    .line 7852
    :cond_a
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    const/16 v10, 0x67

    if-eq v9, v10, :cond_b

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    const/16 v10, 0xfd

    if-ne v9, v10, :cond_d

    .line 7853
    :cond_b
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->e:Ljava/lang/String;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_5
    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;Lcom/alibaba/wukong/im/Conversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_c
    move v4, v5

    goto :goto_5

    .line 7854
    :cond_d
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    const/16 v10, 0xca

    if-eq v9, v10, :cond_e

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    const/16 v10, 0xfe

    if-ne v9, v10, :cond_10

    .line 7855
    :cond_e
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->f:Ljava/lang/String;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_6
    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;Lcom/alibaba/wukong/im/Conversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_f
    move v4, v5

    goto :goto_6

    .line 7856
    :cond_10
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_12

    .line 7857
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->g:Ljava/lang/String;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_11

    :goto_7
    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;Lcom/alibaba/wukong/im/Conversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_11
    move v4, v5

    goto :goto_7

    .line 7858
    :cond_12
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    if-ne v9, v4, :cond_14

    .line 7859
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v3

    .line 7860
    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 7861
    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_8
    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;Lcom/alibaba/wukong/im/Conversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_13
    move v4, v5

    goto :goto_8

    .line 7862
    :cond_14
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    const/16 v10, 0x66

    if-ne v9, v10, :cond_16

    .line 7863
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->h:Ljava/lang/String;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_15

    :goto_9
    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;Lcom/alibaba/wukong/im/Conversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_15
    move v4, v5

    goto :goto_9

    .line 7864
    :cond_16
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    const/16 v10, 0x12d

    if-eq v9, v10, :cond_17

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v9, 0x12c

    if-ne v1, v9, :cond_18

    .line 7865
    :cond_17
    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a:Ljava/lang/String;

    invoke-static {v1, v8}, Ldrp;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    move-object v6, p1

    .end local p1    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .local v6, "conversation":Lcom/alibaba/wukong/im/Conversation;
    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_a
    move v4, v5

    move-object v3, v0

    move-object v0, v1

    move-object v1, v6

    .line 7867
    .end local v6    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :goto_b
    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;Lcom/alibaba/wukong/im/Conversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .restart local p1    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_18
    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->b:Ljava/lang/String;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object v3, v1

    move-object v1, p1

    goto :goto_b

    .line 8225
    .end local p1    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_19
    const/16 v1, 0x64

    if-ge v0, v1, :cond_1a

    .line 8226
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8227
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->h:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 8229
    :cond_1a
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8230
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->h:Landroid/widget/TextView;

    const-string/jumbo v1, "99+"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 8233
    :cond_1b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->i:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v1

    if-lez v1, :cond_1c

    :goto_c
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8234
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1c
    move v5, v7

    .line 8233
    goto :goto_c

    .restart local p1    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_1d
    move-object v6, p1

    .end local p1    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .restart local v6    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_a
.end method

.method private a(Ljava/lang/String;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 780
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 781
    const-string/jumbo v6, "$CORPID$"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 782
    const-string/jumbo v6, "$CORPID$"

    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v7

    iget-wide v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->s:J

    invoke-interface {v7, v8, v9}, Lddi;->b(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 787
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 788
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 789
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 790
    .end local v2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 792
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0xc0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 793
    .local v0, "activityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 794
    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$8;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    .line 802
    .local v4, "intentRewriter":Lcom/alibaba/doraemon/navigator/IntentRewriter;
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v6, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, p1, v7, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 811
    .end local v0    # "activityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "intentRewriter":Lcom/alibaba/doraemon/navigator/IntentRewriter;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    return-void

    .line 783
    :cond_2
    const-string/jumbo v6, "%24CORPID%24"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 784
    const-string/jumbo v6, "%24CORPID%24"

    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v7

    iget-wide v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->s:J

    invoke-interface {v7, v8, v9}, Lddi;->b(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 805
    .restart local v0    # "activityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 806
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "url"

    invoke-virtual {v1, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v6

    invoke-virtual {v6, p0, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "eventArg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 740
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    .line 749
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 755
    .local v1, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "format"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, p0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 759
    return-void
.end method

.method private a(Z)V
    .locals 6
    .param p1, "needFetchFormData"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 403
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->serviceWindowAppModels:Ljava/util/List;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->n:Ljava/util/List;

    .line 405
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->chStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 406
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 407
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->j:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 409
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->b()V

    .line 8440
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v1, :cond_0

    .line 8441
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgIcon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8442
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8443
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->authLevel:I

    if-lez v1, :cond_2

    .line 8444
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 8456
    const-class v1, Lcom/alibaba/android/dingtalkim/models/idl/service/AFlowIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/AFlowIService;

    .line 8457
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$16;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$16;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    .line 8476
    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->s:J

    invoke-interface {v1, v4, v5, v2}, Lcom/alibaba/android/dingtalkim/models/idl/service/AFlowIService;->getBusinessOrder(JLiyv;)V

    .line 434
    :cond_1
    :goto_1
    return-void

    .line 8446
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 416
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->chStatus:I

    if-nez v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 418
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->j:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->j:Landroid/view/View;

    sget v2, Lctk$f;->channel_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgIcon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->j:Landroid/view/View;

    sget v2, Lctk$f;->channel_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->j:Landroid/view/View;

    sget v2, Lctk$f;->mark:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 424
    .local v0, "channelMark":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->authLevel:I

    if-lez v1, :cond_4

    .line 425
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 427
    :cond_4
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->o:Ljava/util/List;

    return-object p1
.end method

.method private b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x4

    const/4 v5, -0x5

    const/4 v2, 0x0

    .line 505
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 507
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->o:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 8531
    new-instance v0, Lddl;

    invoke-direct {v0}, Lddl;-><init>()V

    .line 8532
    const/4 v1, -0x6

    iput v1, v0, Lddl;->a:I

    .line 8533
    new-instance v1, Lddl$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lddl$a;-><init>(Lddl;)V

    .line 8534
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->q:Ldsm;

    if-eqz v3, :cond_0

    .line 8535
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->q:Ldsm;

    iget-object v3, v3, Ldsm;->d:Ljava/lang/String;

    iput-object v3, v1, Lddl$a;->d:Ljava/lang/String;

    .line 8536
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->q:Ldsm;

    iget-object v3, v3, Ldsm;->c:Ljava/lang/String;

    iput-object v3, v1, Lddl$a;->c:Ljava/lang/String;

    .line 8537
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->q:Ldsm;

    iget-object v3, v3, Ldsm;->a:Ljava/lang/Long;

    iput-object v3, v1, Lddl$a;->a:Ljava/lang/Long;

    .line 8538
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->q:Ldsm;

    iget-object v3, v3, Ldsm;->b:Ljava/lang/String;

    iput-object v3, v1, Lddl$a;->b:Ljava/lang/String;

    .line 8540
    :cond_0
    iput-object v1, v0, Lddl;->d:Lddl$a;

    .line 8541
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8548
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsj;

    .line 8549
    new-instance v3, Lddl;

    invoke-direct {v3}, Lddl;-><init>()V

    .line 8550
    iput-object v0, v3, Lddl;->c:Ldsj;

    .line 8551
    iput v5, v3, Lddl;->a:I

    .line 8552
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->m:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8611
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    .line 8612
    if-lez v0, :cond_2

    .line 8613
    rsub-int/lit8 v1, v0, 0x4

    move v0, v2

    .line 8614
    :goto_1
    if-ge v0, v1, :cond_2

    .line 8615
    new-instance v3, Lddl;

    invoke-direct {v3}, Lddl;-><init>()V

    .line 8616
    iput-object v9, v3, Lddl;->c:Ldsj;

    .line 8617
    iput v5, v3, Lddl;->a:I

    .line 8618
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8614
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->n:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 9561
    new-instance v0, Lddl;

    invoke-direct {v0}, Lddl;-><init>()V

    .line 9562
    const/4 v1, -0x7

    iput v1, v0, Lddl;->a:I

    .line 9563
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9571
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->n:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 9572
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 9573
    if-eqz v0, :cond_6

    .line 9574
    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->appId:J

    const-wide/16 v6, 0x3

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->appId:J

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 9579
    new-instance v4, Lddl;

    invoke-direct {v4}, Lddl;-><init>()V

    .line 9580
    iput-object v0, v4, Lddl;->b:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 9581
    iput v8, v4, Lddl;->a:I

    .line 9582
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->m:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9583
    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    .line 9585
    goto :goto_2

    .line 9595
    :cond_4
    rem-int/lit8 v0, v1, 0x4

    .line 9596
    if-lez v0, :cond_5

    .line 9597
    rsub-int/lit8 v0, v0, 0x4

    .line 9598
    :goto_4
    if-ge v2, v0, :cond_5

    .line 9599
    new-instance v1, Lddl;

    invoke-direct {v1}, Lddl;-><init>()V

    .line 9600
    iput-object v9, v1, Lddl;->b:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 9601
    iput v8, v1, Lddl;->a:I

    .line 9602
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->m:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9598
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 522
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->l:Lcud;

    invoke-virtual {v0}, Lcud;->notifyDataSetChanged()V

    .line 524
    return-void

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    const/4 v4, 0x1

    .line 72
    .line 10281
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10282
    sget v1, Lctk$i;->dt_channel_main_quit_confirm:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 10283
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->chat_forward_yes:I

    .line 10284
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$12;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->chat_forward_no:I

    .line 10290
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$11;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10298
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 10300
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10303
    :goto_0
    return-void

    .line 10301
    :catch_0
    move-exception v0

    .line 10302
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 72
    .line 10310
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v0, :cond_0

    .line 10311
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/ChannelIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/ChannelIService;

    .line 10312
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$13;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    .line 10324
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgId:J

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/android/dingtalkim/models/idl/service/ChannelIService;->cancelChannelFollow(JLiyv;)V

    .line 72
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 72
    .line 10330
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_cancel_follow_channel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10331
    const-string/jumbo v1, "org_id"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->s:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 10332
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 72
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->b()V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->s:J

    return-wide v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 72
    .line 11709
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v0, :cond_0

    .line 11710
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11711
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgHomePage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11712
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 72
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 72
    .line 12662
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v0, :cond_0

    .line 12664
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 115
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    sget v0, Lctk$g;->activity_channel_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->setContentView(I)V

    .line 1390
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->s:J

    .line 1391
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v0

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->s:J

    invoke-interface {v0, v4, v5}, Lddi;->a(J)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 1392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->isAuthed:Z

    if-nez v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->authPage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->finish()V

    .line 2358
    :cond_0
    sget v0, Lctk$f;->recyclerview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->b:Landroid/support/v7/widget/RecyclerView;

    .line 2359
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->k:Landroid/support/v7/widget/GridLayoutManager;

    .line 2360
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->k:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 2361
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 2362
    new-instance v0, Lcud;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->m:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcud;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->l:Lcud;

    .line 2363
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->l:Lcud;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 2365
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->l:Lcud;

    .line 2624
    sget v0, Lctk$g;->channel_info_header_layout:I

    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2625
    sget v0, Lctk$f;->channel_info:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->f:Landroid/view/View;

    .line 2626
    sget v0, Lctk$f;->channel_icon:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 2627
    sget v0, Lctk$f;->channel_name:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->d:Landroid/widget/TextView;

    .line 2628
    sget v0, Lctk$f;->mark:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->e:Landroid/widget/ImageView;

    .line 2629
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$3;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2635
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->d:Landroid/widget/TextView;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$4;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2641
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->e:Landroid/widget/ImageView;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$5;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2648
    sget v0, Lctk$f;->channel_notify_layout:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$6;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2654
    sget v0, Lctk$f;->channel_last_message:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    .line 2655
    sget v0, Lctk$f;->red_dot_text:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->h:Landroid/widget/TextView;

    .line 2656
    sget v0, Lctk$f;->img_detail_session_notice:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->i:Landroid/widget/ImageView;

    .line 3042
    iget-object v0, v1, Lctu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3067
    iget-object v5, v1, Lctu;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-gez v0, :cond_4

    .line 2367
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->l:Lcud;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$14;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    .line 4033
    iput-object v1, v0, Lctu;->e:Lctu$b;

    .line 2374
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$15;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 2337
    sget v0, Lctk$f;->channel_close_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->j:Landroid/view/View;

    .line 4344
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 4345
    if-eqz v0, :cond_2

    .line 4346
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4347
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4348
    const-string/jumbo v1, "url"

    const-string/jumbo v4, "https://tms.dingtalk.com/markets/dingtalk/fwc-first"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4349
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 120
    :cond_2
    invoke-direct {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a(Z)V

    .line 4481
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->r:Landroid/content/BroadcastReceiver;

    .line 4488
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4489
    const-string/jumbo v1, "com.workapp.channel.sync"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4490
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 122
    const-string/jumbo v4, "contact_servewindow_visit_click"

    const-string/jumbo v5, "org_id=%d"

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgId:J

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v4, v5, v6}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5168
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v0, :cond_3

    .line 5169
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 125
    :cond_3
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 126
    return-void

    .line 3071
    :cond_4
    iget-object v5, v1, Lctu;->c:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3072
    iget-object v5, v1, Lctu;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 3073
    iget-object v5, v1, Lctu;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3074
    invoke-virtual {v1, v0}, Lctu;->notifyItemInserted(I)V

    goto/16 :goto_0

    .line 3076
    :cond_5
    iget-object v0, v1, Lctu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3077
    iget-object v0, v1, Lctu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lctu;->notifyItemInserted(I)V

    goto/16 :goto_0

    :cond_6
    move-wide v0, v2

    .line 122
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 138
    const/4 v1, 0x1

    sget v2, Lctk$i;->more:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 139
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 140
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 130
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 5494
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->r:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 5495
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 133
    :cond_0
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 134
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 6244
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v0, :cond_0

    .line 6245
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6246
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->p:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgName:Ljava/lang/String;

    .line 6249
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 6250
    const/4 v3, 0x0

    sget v4, Lctk$i;->dt_channel_main_quit_follow:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 6251
    sget v3, Lctk$i;->cancel:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 6253
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 6254
    invoke-virtual {v1, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$10;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    .line 6255
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6267
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 6269
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6270
    :catch_0
    move-exception v0

    .line 6271
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
