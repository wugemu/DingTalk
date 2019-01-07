.class public abstract Lcom/alibaba/android/dingtalk/livebase/LiveInterface;
.super Lckb;
.source "LiveInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public a(IIILcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "pageNum"    # I
    .param p2, "pageSize"    # I
    .param p3, "searchType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 117
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 219
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 73
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 110
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 45
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "liveUuid"    # Ljava/lang/String;
    .param p4, "anchorId"    # J
    .param p6, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 96
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playUrl"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "uuid"    # Ljava/lang/String;
    .param p5, "cid"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 88
    return-void
.end method

.method public a(Lbyu;)V
    .locals 0
    .param p1, "listener"    # Lbyu;

    .prologue
    .line 195
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "req"    # Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;>;"
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "req"    # Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;>;"
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 177
    return-void
.end method

.method public a(Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/LiveConversationObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/android/dingtalk/livebase/model/LiveConversationObject;>;>;"
    return-void
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;Z)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "enabled"    # Z

    .prologue
    .line 301
    return-void
.end method

.method public a(Ljava/lang/String;IIIIILjava/lang/String;ILcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "liveUrl"    # Ljava/lang/String;
    .param p2, "playerType"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "isLandscape"    # I
    .param p6, "visitAuth"    # I
    .param p7, "poster"    # Ljava/lang/String;
    .param p8, "playerContentMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p9, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "liveUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "isRedDot"    # Z

    .prologue
    .line 324
    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/app/Activity;Landroid/view/ViewGroup;)Lbyt;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 348
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 52
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 59
    return-void
.end method

.method public c(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playUrl"    # Ljava/lang/String;
    .param p3, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 80
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public k()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public m()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method
