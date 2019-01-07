.class public final Leba;
.super Ljava/lang/Object;
.source "FirstEnterConversationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v5, 0x1

    .line 34
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 38
    .local v1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    const-string/jumbo v3, "getStrangerSaftyMsgs"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    :cond_2
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_im_against_harassment"

    .line 1083
    invoke-virtual {v3, v4, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 47
    const-string/jumbo v3, "getStrangerSaftyMsgs"

    const-string/jumbo v4, "1"

    invoke-interface {p1, v3, v4}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v2, Ldri;

    invoke-direct {v2}, Ldri;-><init>()V

    .line 49
    .local v2, "object":Ldri;
    iput-object p1, v2, Ldri;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 50
    iput v5, v2, Ldri;->b:I

    .line 52
    new-instance v0, Leba$1;

    invoke-direct {v0, p1}, Leba$1;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 75
    .local v0, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v4, Lcma;

    invoke-interface {v3, v0, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    check-cast v0, Lcma;

    .line 78
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    :cond_3
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v3

    invoke-virtual {v3}, Ldyn;->g()Ldxl;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ldxl;->a(Ldri;Lcma;)V

    goto :goto_0
.end method
