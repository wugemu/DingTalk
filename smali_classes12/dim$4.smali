.class final Ldim$4;
.super Ljava/lang/Object;
.source "ConversationMembersFetcher.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldim;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ldim;


# direct methods
.method constructor <init>(Ldim;Ljava/util/List;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Ldim;

    .prologue
    .line 257
    iput-object p1, p0, Ldim$4;->d:Ldim;

    iput-object p2, p0, Ldim$4;->a:Ljava/util/List;

    iput p3, p0, Ldim$4;->b:I

    iput-object p4, p0, Ldim$4;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    check-cast p1, Ljava/util/List;

    .line 1260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1261
    if-eqz p1, :cond_1

    .line 1262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1263
    const/4 v3, 0x0

    invoke-static {v0, v3}, Ldqw;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)Ldqw;

    move-result-object v0

    .line 1264
    if-eqz v0, :cond_0

    .line 1265
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1270
    :cond_1
    const-class v0, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickService;

    iget-object v2, p0, Ldim$4;->d:Ldim;

    .line 2045
    iget-object v2, v2, Ldim;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 1270
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldim$4;->a:Ljava/util/List;

    new-instance v4, Ldim$4$1;

    invoke-direct {v4, p0, v1}, Ldim$4$1;-><init>(Ldim$4;Ljava/util/ArrayList;)V

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNick(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    .line 257
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 315
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "MembersFetcher getUserProfileList exception,code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 316
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Ldim$4;->d:Ldim;

    .line 1045
    invoke-virtual {v0, p1, p2}, Ldim;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 311
    return-void
.end method
