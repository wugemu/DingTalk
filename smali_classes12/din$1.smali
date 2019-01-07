.class public final Ldin$1;
.super Ljava/lang/Object;
.source "ConversationNavigator.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;Landroid/content/Context;Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Ldin$1;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    iput-object p2, p0, Ldin$1;->b:Landroid/content/Context;

    iput-object p3, p0, Ldin$1;->c:Landroid/os/Bundle;

    iput-boolean p4, p0, Ldin$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[ConversationNavigator]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "navToConversationPage getConversation id:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ldin$1;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    .line 109
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->getCid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, " errorCode:"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p1, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, ",errMsg:"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object p2, v2, v3

    .line 108
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 59
    move-object v2, p1

    check-cast v2, Lcom/alibaba/wukong/im/Conversation;

    .line 1062
    if-eqz v2, :cond_2

    .line 1063
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    iget-object v3, p0, Ldin$1;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->getTag()I

    move-result v3

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldin$1;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->isForceUpdateTag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    iget-object v1, p0, Ldin$1;->b:Landroid/content/Context;

    iget-object v0, p0, Ldin$1;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->getTag()I

    move-result v5

    iget-object v3, p0, Ldin$1;->c:Landroid/os/Bundle;

    iget-boolean v4, p0, Ldin$1;->d:Z

    .line 2121
    if-eqz v2, :cond_0

    .line 2124
    int-to-long v6, v5

    new-instance v0, Ldin$2;

    invoke-direct/range {v0 .. v5}, Ldin$2;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Landroid/os/Bundle;ZI)V

    invoke-interface {v2, v6, v7, v0}, Lcom/alibaba/wukong/im/Conversation;->updateTag(JLcom/alibaba/wukong/Callback;)V

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    iget-object v0, p0, Ldin$1;->b:Landroid/content/Context;

    iget-object v1, p0, Ldin$1;->c:Landroid/os/Bundle;

    iget-boolean v3, p0, Ldin$1;->d:Z

    invoke-static {v0, v2, v1, v3}, Ldin;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 1069
    :cond_2
    iget-object v0, p0, Ldin$1;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->getCid()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1071
    sget v0, Lctk$i;->and_ding_conversation_not_exist:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1072
    const-string/jumbo v0, "im"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[ConversationNavigator]"

    aput-object v2, v1, v12

    const-string/jumbo v2, "getConversation conversation is null and cid not singleChat,cid "

    aput-object v2, v1, v8

    const/4 v2, 0x2

    iget-object v3, p0, Ldin$1;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    .line 1075
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->getCid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1073
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1072
    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1078
    :cond_3
    iget-object v0, p0, Ldin$1;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->isBurnChat()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v5, -0x1

    .line 1080
    :goto_1
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Ldin$1$1;

    invoke-direct {v1, p0}, Ldin$1$1;-><init>(Ldin$1;)V

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    iget-object v6, p0, Ldin$1;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    .line 1101
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->getTag()I

    move-result v6

    int-to-long v6, v6

    new-array v9, v8, [Ljava/lang/Long;

    iget-object v8, p0, Ldin$1;->a:Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->getCid()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v9, v12

    move-object v8, v4

    .line 1080
    invoke-interface/range {v0 .. v9}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;IJLjava/util/Map;[Ljava/lang/Long;)V

    goto :goto_0

    :cond_4
    move v5, v8

    .line 1078
    goto :goto_1
.end method
