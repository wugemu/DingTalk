.class public Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "RobotMarketActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;,
        Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$b;,
        Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/alibaba/wukong/im/Conversation;

.field private d:Ljava/lang/String;

.field private e:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->a:Ljava/lang/String;

    .line 409
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 169
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)V

    const-class v4, Lcma;

    invoke-interface {v2, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 188
    .local v0, "apiEventListener":Lcma;
    const/4 v1, 0x0

    .line 189
    .local v1, "cid":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    .line 192
    :cond_0
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ldxu;->a(Ljava/lang/String;Lcma;)V

    .line 193
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 56
    .line 2164
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 2165
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->a()V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;Ljava/util/List;Z)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 56
    .line 2196
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->dismissLoadingDialog()V

    .line 2197
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->supportInvalidateOptionsMenu()V

    .line 2198
    if-eqz p2, :cond_0

    .line 2199
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->b()V

    :goto_0
    return-void

    .line 2213
    :cond_0
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    .line 2214
    const-string/jumbo v1, "@lALOkWpbes0Bws0EZQ"

    invoke-static {v1, v0}, Lcms;->c(Ljava/lang/String;I)I

    move-result v1

    .line 2215
    if-lez v1, :cond_1

    .line 2216
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2217
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2218
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2219
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2221
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->g:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 2202
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2203
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2208
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->e:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;

    .line 2294
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2295
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2296
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$b;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->b:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-direct {v1, v2, v6}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$b;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;B)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2297
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2299
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 2205
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->b:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 226
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->e:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 422
    const-string/jumbo v1, "@lALOkWpbes0Bws0EZQ"

    .line 423
    .local v1, "mediaUrl":Ljava/lang/String;
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    :try_start_0
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 430
    :cond_0
    :goto_0
    return-object v1

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "ex":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 103
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onAttachedToWindow()V

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->showLoadingDialog()V

    .line 2113
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 2115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2116
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->d:Ljava/lang/String;

    .line 2128
    const-string/jumbo v0, ""

    .line 2129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2130
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v2

    .line 2131
    if-eqz v2, :cond_2

    .line 2132
    invoke-virtual {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v2

    .line 2133
    if-eqz v2, :cond_2

    .line 2134
    invoke-interface {v2, v1}, Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 2117
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2118
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->a()V

    .line 2122
    :goto_1
    return-void

    .line 2142
    :cond_0
    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)V

    .line 2158
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    .line 2159
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 2158
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_1

    .line 2123
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->a()V

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget v1, Lctk$g;->robot_market:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->setContentView(I)V

    .line 1229
    sget v1, Lctk$f;->lv_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->b:Landroid/widget/ListView;

    .line 1230
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lctk$g;->robot_market_header:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->b:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1231
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1244
    sget v1, Lctk$f;->iv_header:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->f:Landroid/widget/ImageView;

    .line 1245
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1247
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->b:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->b()V

    .line 2089
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->g:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 2090
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;

    invoke-direct {v1, p0, p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->e:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;

    .line 2091
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->e:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2095
    if-eqz v2, :cond_0

    .line 2096
    const-string/jumbo v1, "conversation"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 2097
    const-string/jumbo v1, "robot_guide_ecid"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->d:Ljava/lang/String;

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 81
    .local v0, "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    .line 82
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    .restart local v0    # "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "ding_group_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "im_bot_botstore_page_enter"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 280
    return-void
.end method
