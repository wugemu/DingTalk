.class final Lddy$16;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddy;->b()V
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lddy;


# direct methods
.method constructor <init>(Lddy;)V
    .locals 0
    .param p1, "this$0"    # Lddy;

    .prologue
    .line 1249
    iput-object p1, p0, Lddy$16;->a:Lddy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 1280
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1249
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1249
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 2252
    iget-object v0, p0, Lddy$16;->a:Lddy;

    .line 3066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 2252
    invoke-interface {v0}, Lddx$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2255
    if-eqz p1, :cond_1

    .line 2258
    iget-object v0, p0, Lddy$16;->a:Lddy;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v1

    .line 4066
    iput v1, v0, Lddy;->e:I

    .line 2259
    iget-object v0, p0, Lddy$16;->a:Lddy;

    .line 5066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 2259
    iget-object v1, p0, Lddy$16;->a:Lddy;

    .line 6066
    iget v1, v1, Lddy;->e:I

    .line 2259
    invoke-interface {v0, v1}, Lddx$b;->c(I)V

    .line 2260
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 2261
    iget-object v0, p0, Lddy$16;->a:Lddy;

    .line 7066
    iget-object v0, v0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2261
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 2262
    if-eqz v1, :cond_0

    .line 2263
    iget-object v0, p0, Lddy$16;->a:Lddy;

    .line 8066
    iget-object v0, v0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2263
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->sync()V

    .line 2264
    iget-object v2, p0, Lddy$16;->a:Lddy;

    const-string/jumbo v0, "anchorType"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9066
    iput-object v0, v2, Lddy;->f:Ljava/lang/String;

    .line 2265
    iget-object v2, p0, Lddy$16;->a:Lddy;

    const-string/jumbo v0, "anchorMessageId"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10066
    iput-object v0, v2, Lddy;->g:Ljava/lang/String;

    .line 2266
    iget-object v0, p0, Lddy$16;->a:Lddy;

    .line 11066
    iget-object v0, v0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2266
    invoke-static {v0}, Lddq;->j(Lcom/alibaba/wukong/im/Conversation;)V

    .line 2271
    :cond_0
    :goto_0
    return-void

    .line 2272
    :cond_1
    iget-object v0, p0, Lddy$16;->a:Lddy;

    .line 12066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 2272
    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->conversation_not_found:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lddx$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    iget-object v0, p0, Lddy$16;->a:Lddy;

    .line 13066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 2273
    invoke-interface {v0}, Lddx$b;->h()V

    goto :goto_0
.end method
