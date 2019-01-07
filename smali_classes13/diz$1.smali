.class final Ldiz$1;
.super Ljava/lang/Object;
.source "ChatMessageSender.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldiz;
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
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Z

.field final synthetic d:Ldiz;


# direct methods
.method constructor <init>(Ldiz;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Z)V
    .locals 0
    .param p1, "this$0"    # Ldiz;

    .prologue
    .line 238
    iput-object p1, p0, Ldiz$1;->d:Ldiz;

    iput-object p2, p0, Ldiz$1;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Ldiz$1;->b:Ljava/util/Map;

    iput-boolean p4, p0, Ldiz$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 238
    check-cast p1, Ljava/util/List;

    .line 1241
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1242
    :cond_0
    iget-object v0, p0, Ldiz$1;->d:Ldiz;

    iget-object v2, p0, Ldiz$1;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v3, p0, Ldiz$1;->b:Ljava/util/Map;

    iget-boolean v4, p0, Ldiz$1;->c:Z

    invoke-static {v0, v2, v3, v4, v1}, Ldiz;->a(Ldiz;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;ZZ)V

    :cond_1
    :goto_0
    return-void

    .line 1245
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1246
    if-eqz v0, :cond_3

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_3

    .line 1248
    iget-object v0, p0, Ldiz$1;->d:Ldiz;

    iget-object v3, p0, Ldiz$1;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v4, p0, Ldiz$1;->b:Ljava/util/Map;

    iget-boolean v5, p0, Ldiz$1;->c:Z

    invoke-static {v0, v3, v4, v5, v2}, Ldiz;->a(Ldiz;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;ZZ)V

    move v0, v1

    .line 1252
    :goto_1
    if-nez v0, :cond_1

    .line 1253
    iget-object v0, p0, Ldiz$1;->d:Ldiz;

    iget-object v2, p0, Ldiz$1;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v3, p0, Ldiz$1;->b:Ljava/util/Map;

    iget-boolean v4, p0, Ldiz$1;->c:Z

    invoke-static {v0, v2, v3, v4, v1}, Ldiz;->a(Ldiz;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;ZZ)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 265
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "sendMessageCheckEncrypt getUserProfileList error, msgId:"

    aput-object v4, v2, v3

    iget-object v3, p0, Ldiz$1;->a:Lcom/alibaba/wukong/im/Message;

    .line 266
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, ",errCode:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ",errMsg:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    .line 265
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Ldiz$1;->d:Ldiz;

    iget-object v1, p0, Ldiz$1;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v2, p0, Ldiz$1;->b:Ljava/util/Map;

    iget-boolean v3, p0, Ldiz$1;->c:Z

    invoke-static {v0, v1, v2, v3, v6}, Ldiz;->a(Ldiz;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;ZZ)V

    .line 268
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 261
    return-void
.end method
