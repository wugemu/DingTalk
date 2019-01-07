.class public final Ldmj;
.super Ldmd;
.source "ChatScenePresenter.java"

# interfaces
.implements Ldmh$a;
.implements Ldmh$b;


# instance fields
.field e:Landroid/os/Handler;

.field private f:Ldmi;

.field private g:Landroid/app/Activity;

.field private h:Ldmk;

.field private i:Ldsq;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ldmi$a;

.field private l:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "inputPanelView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
    .param p3, "flCelebrate"    # Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;
    .param p4, "animateView"    # Landroid/widget/TextView;
    .param p5, "moveView"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-direct {p0}, Ldmd;-><init>()V

    .line 104
    new-instance v0, Ldmj$1;

    invoke-direct {v0, p0}, Ldmj$1;-><init>(Ldmj;)V

    iput-object v0, p0, Ldmj;->k:Ldmi$a;

    .line 301
    new-instance v0, Ldmj$2;

    invoke-direct {v0, p0}, Ldmj$2;-><init>(Ldmj;)V

    iput-object v0, p0, Ldmj;->l:Landroid/os/Handler$Callback;

    .line 48
    iput-object p1, p0, Ldmj;->g:Landroid/app/Activity;

    .line 49
    new-instance v0, Ldmi;

    invoke-direct {v0, p1}, Ldmi;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ldmj;->f:Ldmi;

    .line 50
    iget-object v0, p0, Ldmj;->f:Ldmi;

    iget-object v1, p0, Ldmj;->k:Ldmi$a;

    .line 1200
    iput-object v1, v0, Ldmi;->e:Ldmi$a;

    .line 51
    new-instance v0, Ldmk;

    invoke-direct {v0, p2, p3, p4, p5}, Ldmk;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;Landroid/widget/TextView;Landroid/view/View;)V

    iput-object v0, p0, Ldmj;->h:Ldmk;

    .line 52
    iget-object v0, p0, Ldmj;->h:Ldmk;

    .line 1430
    iput-object p0, v0, Ldmk;->a:Ldmh$b;

    .line 53
    iget-object v0, p0, Ldmj;->h:Ldmk;

    .line 1435
    iput-object p0, v0, Ldmk;->b:Ldmh$a;

    .line 54
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ldmj;->l:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ldmj;->e:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method private static a(Ldsq;)Ljava/util/List;
    .locals 1
    .param p0, "celebrateObject"    # Ldsq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldsq;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    if-eqz p0, :cond_0

    .line 280
    iget-object v0, p0, Ldsq;->b:Ljava/util/List;

    .line 282
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    :cond_0
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    .line 318
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 319
    .local v0, "copiedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 287
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "local_extra_chat_scene_read"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/alibaba/wukong/im/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    if-eqz p1, :cond_0

    invoke-static {p1}, Ldmj;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 296
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "local_extra_chat_scene_read"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/alibaba/wukong/im/Message;->updateLocalExtrasByKeys(Ljava/util/Map;Z)V

    .line 299
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Ldmj;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ldmj;->h:Ldmk;

    .line 5418
    iget-boolean v0, v0, Ldmk;->m:Z

    .line 119
    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;->ANIMATING:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

    .line 122
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 4
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 73
    if-nez p1, :cond_4

    move-object v0, v2

    .line 75
    .local v0, "conversationId":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 77
    .local v1, "isChanged":Z
    iget-object v3, p0, Ldmj;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 79
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Ldmj;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    iget-object v3, p0, Ldmj;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 84
    :cond_1
    const/4 v1, 0x1

    .line 86
    :cond_2
    invoke-super {p0, p1}, Ldmd;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 87
    if-eqz v1, :cond_3

    .line 88
    iget-object v3, p0, Ldmj;->h:Ldmk;

    invoke-virtual {v3, v2}, Ldmk;->a(Ljava/util/List;)V

    .line 89
    invoke-virtual {p0}, Ldmj;->x_()V

    .line 91
    :cond_3
    return-void

    .line 73
    .end local v0    # "conversationId":Ljava/lang/String;
    .end local v1    # "isChanged":Z
    :cond_4
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    .local p2, "atMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v0, p0, Ldmj;->i:Ldsq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldmj;->b:Ldiz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldmj;->b:Ldiz;

    invoke-virtual {v0}, Ldiz;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Ldmj;->b:Ldiz;

    .line 6413
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 165
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_celebrate_birthday_longpress"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object v0, p0, Ldmj;->h:Ldmk;

    invoke-virtual {v0}, Ldmk;->c()V

    .line 168
    iget-object v0, p0, Ldmj;->h:Ldmk;

    .line 7369
    invoke-virtual {v0}, Ldmk;->b()V

    .line 169
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "originalData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v7, 0x0

    .line 219
    invoke-super {p0, p1}, Ldmd;->a(Ljava/util/List;)V

    .line 225
    invoke-direct {p0}, Ldmj;->k()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 226
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v3, "parseList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_2

    .line 228
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x14

    .line 229
    .local v4, "startIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    .end local v4    # "startIndex":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_0

    .line 235
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    .line 236
    .local v2, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 237
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ldmj;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 239
    invoke-static {v2}, Ldmj;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 240
    iput-object v7, p0, Ldmj;->i:Ldsq;

    .line 241
    iput-object v7, p0, Ldmj;->j:Ljava/util/Map;

    .line 242
    iget-object v5, p0, Ldmj;->h:Ldmk;

    iget-object v6, p0, Ldmj;->i:Ldsq;

    invoke-static {v6}, Ldmj;->a(Ldsq;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ldmk;->a(Ljava/util/List;)V

    .line 243
    invoke-virtual {p0}, Ldmj;->x_()V

    .line 270
    .end local v2    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 271
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    .line 272
    .restart local v2    # "message":Lcom/alibaba/wukong/im/Message;
    invoke-direct {p0, v2}, Ldmj;->b(Lcom/alibaba/wukong/im/Message;)V

    .line 276
    .end local v1    # "index":I
    .end local v2    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v3    # "parseList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    :cond_1
    return-void

    .line 231
    .restart local v3    # "parseList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    :cond_2
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 247
    .restart local v1    # "index":I
    .restart local v2    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_3
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 248
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    instance-of v5, v5, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v5, :cond_6

    .line 249
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    check-cast v5, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "content":Ljava/lang/String;
    iget-object v5, p0, Ldmj;->f:Ldmi;

    invoke-virtual {v5, v0}, Ldmi;->a(Ljava/lang/String;)Ldsq;

    move-result-object v5

    iput-object v5, p0, Ldmj;->i:Ldsq;

    .line 251
    iget-object v5, p0, Ldmj;->i:Ldsq;

    if-eqz v5, :cond_6

    .line 252
    iget-object v5, p0, Ldmj;->h:Ldmk;

    iget-object v6, p0, Ldmj;->i:Ldsq;

    invoke-static {v6}, Ldmj;->a(Ldsq;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ldmk;->a(Ljava/util/List;)V

    .line 253
    iget-object v5, p0, Ldmj;->i:Ldsq;

    invoke-virtual {v5}, Ldsq;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 254
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Ldmj;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Ldmj;->j:Ljava/util/Map;

    .line 258
    :goto_3
    invoke-virtual {p0}, Ldmj;->i()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 259
    invoke-virtual {p0}, Ldmj;->w_()V

    goto :goto_2

    .line 256
    :cond_4
    iput-object v7, p0, Ldmj;->j:Ljava/util/Map;

    goto :goto_3

    .line 261
    :cond_5
    invoke-virtual {p0}, Ldmj;->x_()V

    goto :goto_2

    .line 234
    .end local v0    # "content":Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1
.end method

.method public final a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 5
    .param p2, "dataType"    # Lcom/alibaba/wukong/im/MessageListener$DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageListener$DataType;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v4, 0x0

    .line 173
    invoke-super {p0, p1, p2}, Ldmd;->a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    .line 179
    iget-object v2, p0, Ldmj;->c:Ljava/lang/String;

    invoke-static {p1, v2}, Ldkc;->a(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 180
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Ldmj;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-static {v1}, Ldmj;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    iput-object v4, p0, Ldmj;->i:Ldsq;

    .line 183
    iput-object v4, p0, Ldmj;->j:Ljava/util/Map;

    .line 184
    iget-object v2, p0, Ldmj;->h:Ldmk;

    iget-object v3, p0, Ldmj;->i:Ldsq;

    invoke-static {v3}, Ldmj;->a(Ldsq;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldmk;->a(Ljava/util/List;)V

    .line 185
    invoke-virtual {p0}, Ldmj;->x_()V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 188
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v2, :cond_4

    .line 189
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Ldmj;->f:Ldmi;

    invoke-virtual {v2, v0}, Ldmi;->a(Ljava/lang/String;)Ldsq;

    move-result-object v2

    iput-object v2, p0, Ldmj;->i:Ldsq;

    .line 191
    iget-object v2, p0, Ldmj;->h:Ldmk;

    iget-object v3, p0, Ldmj;->i:Ldsq;

    invoke-static {v3}, Ldmj;->a(Ldsq;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldmk;->a(Ljava/util/List;)V

    .line 192
    iget-object v2, p0, Ldmj;->i:Ldsq;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ldmj;->i:Ldsq;

    invoke-virtual {v2}, Ldsq;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Ldmj;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Ldmj;->j:Ljava/util/Map;

    .line 197
    :goto_1
    invoke-virtual {p0}, Ldmj;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    invoke-virtual {p0}, Ldmj;->w_()V

    .line 208
    .end local v0    # "content":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v1}, Ldmj;->b(Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0

    .line 195
    .restart local v0    # "content":Ljava/lang/String;
    :cond_2
    iput-object v4, p0, Ldmj;->j:Ljava/util/Map;

    goto :goto_1

    .line 200
    :cond_3
    invoke-virtual {p0}, Ldmj;->x_()V

    goto :goto_2

    .line 203
    .end local v0    # "content":Ljava/lang/String;
    :cond_4
    iput-object v4, p0, Ldmj;->i:Ldsq;

    .line 204
    iput-object v4, p0, Ldmj;->j:Ljava/util/Map;

    .line 205
    iget-object v2, p0, Ldmj;->h:Ldmk;

    iget-object v3, p0, Ldmj;->i:Ldsq;

    invoke-static {v3}, Ldmj;->a(Ldsq;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldmk;->a(Ljava/util/List;)V

    .line 206
    invoke-virtual {p0}, Ldmj;->x_()V

    goto :goto_2
.end method

.method public final d()Ldsq;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Ldmj;->i:Ldsq;

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Ldmj;->j:Ljava/util/Map;

    return-object v0
.end method

.method public final g()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x3e8

    .line 59
    iget-object v0, p0, Ldmj;->h:Ldmk;

    .line 2353
    iget-object v1, v0, Ldmk;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2354
    invoke-virtual {v0}, Ldmk;->b()V

    .line 60
    iget-object v0, p0, Ldmj;->e:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 61
    iget-object v0, p0, Ldmj;->e:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 62
    return-void
.end method

.method public final h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Ldmj;->i:Ldsq;

    .line 67
    iget-object v0, p0, Ldmj;->h:Ldmk;

    .line 3347
    iget-object v1, v0, Ldmk;->c:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4342
    invoke-virtual {v0}, Ldmk;->c()V

    .line 68
    iget-object v0, p0, Ldmj;->e:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    return-void
.end method

.method public final i()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    iget-object v3, p0, Ldmj;->i:Ldsq;

    if-eqz v3, :cond_1

    .line 96
    iget-object v3, p0, Ldmj;->i:Ldsq;

    .line 5045
    iget-object v4, v3, Ldsq;->a:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, v3, Ldsq;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Ldsq;->b:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, v3, Ldsq;->b:Ljava/util/List;

    .line 5046
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Ldsq;->d:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v3, v3, Ldsq;->d:Ljava/util/List;

    .line 5047
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    .line 96
    :goto_0
    if-eqz v3, :cond_1

    iget-object v3, p0, Ldmj;->i:Ldsq;

    .line 5077
    iget v4, v3, Ldsq;->c:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v3, v3, Ldsq;->c:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 96
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Ldmj;->i:Ldsq;

    iget-object v2, v2, Ldsq;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lduf;

    .line 98
    .local v0, "object":Lduf;
    iget-object v1, v0, Lduf;->b:Ljava/lang/String;

    invoke-static {v1}, Ldmm;->d(Ljava/lang/String;)Z

    move-result v1

    .line 101
    .end local v0    # "object":Lduf;
    :cond_1
    return v1

    :cond_2
    move v3, v1

    .line 5047
    goto :goto_0

    :cond_3
    move v2, v1

    .line 5077
    goto :goto_1
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Ldmj;->f:Ldmi;

    const/4 v1, 0x0

    .line 5200
    iput-object v1, v0, Ldmi;->e:Ldmi$a;

    .line 114
    iget-object v0, p0, Ldmj;->f:Ldmi;

    .line 5278
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    iget-object v0, v0, Ldmi;->f:Lcmt$a;

    invoke-virtual {v1, v0}, Lcmt;->b(Lcmt$a;)V

    .line 115
    return-void
.end method

.method public final u_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    invoke-virtual {p0}, Ldmj;->b()V

    .line 149
    iget-object v0, p0, Ldmj;->e:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    return-void
.end method

.method public final v_()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x3e8

    .line 154
    invoke-virtual {p0}, Ldmj;->c()V

    .line 155
    iget-object v0, p0, Ldmj;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object v0, p0, Ldmj;->e:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    return-void
.end method
