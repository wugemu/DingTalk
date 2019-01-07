.class public Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ChannelSessionActivity.java"


# instance fields
.field final a:Lcom/alibaba/wukong/im/ConversationChangeListener;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/support/v7/widget/LinearLayoutManager;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lcuf;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lddm;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/content/BroadcastReceiver;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->h:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->i:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->j:Ljava/util/Map;

    .line 312
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->a:Lcom/alibaba/wukong/im/ConversationChangeListener;

    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 268
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->h:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;

    .line 270
    .local v0, "channelOrgSessionModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;
    if-eqz v0, :cond_0

    .line 271
    new-instance v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;-><init>()V

    .line 272
    .local v1, "channelSessionWrapperModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;
    const/4 v3, 0x1

    iput v3, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->itemType:I

    .line 273
    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->channelOrgSessionModel:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;

    .line 274
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    .end local v0    # "channelOrgSessionModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;
    .end local v1    # "channelSessionWrapperModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    .prologue
    .line 53
    .line 3157
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V

    .line 3174
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3175
    invoke-static {}, Ldxi;->a()Ldxw;

    move-result-object v1

    invoke-interface {v1, v0}, Ldxw;->a(Lcma;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    .line 3235
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3236
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3237
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3242
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3244
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddm;

    .line 3245
    if-eqz v0, :cond_1

    .line 3248
    iget-object v0, v0, Lddm;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v0

    invoke-interface {v0}, Lddi;->c()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 53
    :goto_1
    return-void

    .line 3239
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->i:Ljava/util/List;

    goto :goto_0

    .line 3252
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->r:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 53
    .line 2179
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    .line 2180
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2181
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2187
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 2188
    if-eqz v0, :cond_0

    .line 2189
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->j:Ljava/util/Map;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2184
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->h:Ljava/util/List;

    goto :goto_0

    .line 2192
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->j:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2193
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2194
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->j:Ljava/util/Map;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2195
    new-instance v3, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;-><init>()V

    .line 2196
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->j:Ljava/util/Map;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iput-object v1, v3, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;->channelOrgModel:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 2197
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v1

    iput v1, v3, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;->unreadCount:I

    .line 2198
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v0

    iput-boolean v0, v3, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;->isNotificationEnabled:Z

    .line 2199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 53
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .param p1, "isActivityOnCreate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 129
    if-eqz p1, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1436
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1437
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_0
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/wukong/im/ConversationService;->listConversations(Lcom/alibaba/wukong/Callback;II)V

    .line 151
    return-void
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 290
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->i:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddm;

    .line 292
    .local v0, "channelModel":Lddm;
    if-eqz v0, :cond_0

    .line 293
    new-instance v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;-><init>()V

    .line 294
    .local v1, "channelSessionWrapperModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;
    const/4 v3, 0x3

    iput v3, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->itemType:I

    .line 295
    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->channelModel:Lddm;

    .line 296
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    .end local v0    # "channelModel":Lddm;
    .end local v1    # "channelSessionWrapperModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 53
    .line 4208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 4209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4214
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4256
    new-instance v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;-><init>()V

    .line 4257
    iput v3, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->itemType:I

    .line 4258
    new-instance v1, Lddn;

    invoke-direct {v1}, Lddn;-><init>()V

    .line 4259
    sget v2, Lctk$i;->dt_channel_added_channel:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lddn;->a:Ljava/lang/String;

    .line 4260
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->channelSessionTitleModel:Lddn;

    .line 4261
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4216
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->a()V

    .line 4219
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4281
    new-instance v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;-><init>()V

    .line 4282
    const/4 v1, 0x2

    iput v1, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->itemType:I

    .line 4283
    new-instance v1, Lddn;

    invoke-direct {v1}, Lddn;-><init>()V

    .line 4284
    sget v2, Lctk$i;->dt_channel_belong_org_channel:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lddn;->a:Ljava/lang/String;

    .line 4285
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->channelSessionTitleModel:Lddn;

    .line 4286
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4221
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->b()V

    .line 4303
    new-instance v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;-><init>()V

    .line 4304
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->itemType:I

    .line 4305
    new-instance v1, Lddn;

    invoke-direct {v1}, Lddn;-><init>()V

    .line 4306
    sget v2, Lctk$i;->dt_channel_belong_org_channel_description:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lddn;->a:Ljava/lang/String;

    .line 4307
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->channelSessionTitleModel:Lddn;

    .line 4308
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4225
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->f:Lcuf;

    if-eqz v0, :cond_2

    .line 4226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->f:Lcuf;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcuf;->a(Ljava/util/List;)V

    .line 3442
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3443
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 3444
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3445
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 3446
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->f:Lcuf;

    if-eqz v0, :cond_3

    .line 3447
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->f:Lcuf;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcuf;->a(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void

    .line 4211
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    goto/16 :goto_0

    .line 4455
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4456
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 4457
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->e:Landroid/view/View;

    sget v1, Lctk$f;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;Ljava/util/List;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    .line 5325
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5326
    const/4 v0, 0x0

    .line 5327
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 5328
    if-eqz v0, :cond_4

    .line 5329
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->j:Ljava/util/Map;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5330
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;

    .line 5331
    if-eqz v1, :cond_3

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->channelOrgSessionModel:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;

    if-eqz v5, :cond_3

    .line 5332
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->channelOrgSessionModel:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;

    .line 5333
    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;->channelOrgModel:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v5, :cond_3

    .line 5334
    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;->channelOrgModel:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5335
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;->unreadCount:I

    .line 5336
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;->isNotificationEnabled:Z

    .line 5338
    const/4 v2, 0x1

    move v1, v2

    :goto_2
    move v2, v1

    .line 5342
    goto :goto_1

    :cond_0
    move v0, v2

    :goto_3
    move v1, v0

    .line 5345
    goto :goto_0

    .line 5347
    :cond_1
    if-eqz v1, :cond_2

    .line 5348
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->f:Lcuf;

    if-eqz v0, :cond_2

    .line 5349
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->f:Lcuf;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcuf;->a(Ljava/util/List;)V

    .line 53
    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    .prologue
    .line 53
    .line 5466
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5467
    const-string/jumbo v1, "url"

    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/kaitong_fuwc"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5468
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget v0, Lctk$g;->activity_channel_session:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->setContentView(I)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->dt_channel_list_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1116
    sget v0, Lctk$f;->ll_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->d:Landroid/view/View;

    .line 1117
    sget v0, Lctk$f;->rl_empty_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->e:Landroid/view/View;

    .line 1118
    sget v0, Lctk$f;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->b:Landroid/support/v7/widget/RecyclerView;

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 1120
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->c:Landroid/support/v7/widget/LinearLayoutManager;

    .line 1121
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->c:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 1123
    new-instance v0, Lcuf;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->g:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcuf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->f:Lcuf;

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->f:Lcuf;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1375
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->k:Landroid/content/BroadcastReceiver;

    .line 1381
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1382
    const-string/jumbo v1, "com.workapp.channel.sync"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1383
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1387
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->l:Landroid/content/BroadcastReceiver;

    .line 1411
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_cancel_follow_channel"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1412
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 82
    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->a(Z)V

    .line 83
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->a:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 88
    const/4 v1, 0x0

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 89
    .local v0, "okItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$i;->dt_channel_case_channel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 90
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 91
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 100
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
    .line 105
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 1423
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1424
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->l:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1430
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 109
    :cond_1
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v0

    invoke-interface {v0}, Lddi;->d()V

    .line 110
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 112
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->a:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 113
    return-void
.end method
