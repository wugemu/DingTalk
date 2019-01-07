.class final Ldcz$2;
.super Ljava/lang/Object;
.source "CategoryContainSessionsPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldcz;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldcz;


# direct methods
.method constructor <init>(Ldcz;)V
    .locals 0
    .param p1, "this$0"    # Ldcz;

    .prologue
    .line 113
    iput-object p1, p0, Ldcz$2;->a:Ldcz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    const-string/jumbo v0, "listConversations"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "listConversations null"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " xx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    check-cast p1, Ljava/util/List;

    .line 1116
    iget-object v0, p0, Ldcz$2;->a:Ldcz;

    .line 2027
    iget-object v0, v0, Ldcz;->b:Ldcy$b;

    .line 1116
    invoke-interface {v0}, Ldcy$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1117
    if-eqz p1, :cond_1

    .line 1118
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

    .line 1119
    if-eqz v0, :cond_0

    .line 1122
    new-instance v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;-><init>()V

    .line 1123
    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 1124
    iget-object v3, p0, Ldcz$2;->a:Ldcz;

    .line 3027
    iget-object v3, v3, Ldcz;->d:Ljava/util/Map;

    .line 1124
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1125
    iget-object v3, p0, Ldcz$2;->a:Ldcz;

    .line 4027
    iget-object v3, v3, Ldcz;->c:Ljava/util/List;

    .line 1125
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    iget-object v2, p0, Ldcz$2;->a:Ldcz;

    .line 5027
    iget-object v2, v2, Ldcz;->d:Ljava/util/Map;

    .line 1126
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1130
    :cond_1
    iget-object v0, p0, Ldcz$2;->a:Ldcz;

    .line 6027
    iget-object v0, v0, Ldcz;->b:Ldcy$b;

    .line 1130
    invoke-interface {v0}, Ldcy$b;->e()V

    .line 113
    :cond_2
    return-void
.end method
