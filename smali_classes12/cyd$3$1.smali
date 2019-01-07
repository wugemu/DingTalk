.class final Lcyd$3$1;
.super Ljava/lang/Object;
.source "UserCommonVideoViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyd$3;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

.field final synthetic b:Lcyd$3;


# direct methods
.method constructor <init>(Lcyd$3;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)V
    .locals 0
    .param p1, "this$1"    # Lcyd$3;

    .prologue
    .line 285
    iput-object p1, p0, Lcyd$3$1;->b:Lcyd$3;

    iput-object p2, p0, Lcyd$3$1;->a:Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    .line 285
    .line 1288
    iget-object v0, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v0, v0, Lcyd$3;->b:Lcyd;

    iget-object v0, v0, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v0, v0, Lcyd$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    iget-object v2, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v2, v2, Lcyd$3;->b:Lcyd;

    iget-object v2, v2, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1289
    :cond_0
    :goto_0
    return-void

    .line 1291
    :cond_1
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[VideoDownload] success,msgId:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v4, v4, Lcyd$3;->b:Lcyd;

    iget-object v4, v4, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v0, v0, Lcyd$3;->b:Lcyd;

    iget-object v0, v0, Lcyd;->ae:Landroid/os/Handler;

    iget-object v1, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v1, v1, Lcyd$3;->b:Lcyd;

    iget-object v1, v1, Lcyd;->ae:Landroid/os/Handler;

    iget-object v2, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v2, v2, Lcyd$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1293
    invoke-static {}, Lebn;->a()Lebn;

    move-result-object v0

    iget-object v1, p0, Lcyd$3$1;->a:Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    iget-object v2, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v2, v2, Lcyd$3;->b:Lcyd;

    iget-object v2, v2, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    .line 1294
    invoke-static {v1, v2}, Ldiq;->b(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lebn;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x3

    .line 307
    iget-object v0, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v0, v0, Lcyd$3;->b:Lcyd;

    iget-object v0, v0, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v0, v0, Lcyd$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    iget-object v2, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v2, v2, Lcyd$3;->b:Lcyd;

    iget-object v2, v2, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[VideoDownload] onException,msgId:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v4, v4, Lcyd$3;->b:Lcyd;

    iget-object v4, v4, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",errCode:"

    aput-object v4, v2, v3

    aput-object p1, v2, v6

    const/4 v3, 0x4

    const-string/jumbo v4, ",errMsg:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v0, v0, Lcyd$3;->b:Lcyd;

    iget-object v0, v0, Lcyd;->ae:Landroid/os/Handler;

    iget-object v1, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v1, v1, Lcyd$3;->b:Lcyd;

    iget-object v1, v1, Lcyd;->ae:Landroid/os/Handler;

    iget-object v2, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v2, v2, Lcyd$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    invoke-static {}, Lebn;->a()Lebn;

    move-result-object v0

    iget-object v1, p0, Lcyd$3$1;->a:Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    iget-object v2, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v2, v2, Lcyd$3;->b:Lcyd;

    iget-object v2, v2, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    .line 313
    invoke-static {v1, v2}, Ldiq;->b(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lebn;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 299
    iget-object v0, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v0, v0, Lcyd$3;->b:Lcyd;

    iget-object v0, v0, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v0, v0, Lcyd$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    iget-object v2, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v2, v2, Lcyd$3;->b:Lcyd;

    iget-object v2, v2, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v0, v0, Lcyd$3;->b:Lcyd;

    iget-object v0, v0, Lcyd;->ae:Landroid/os/Handler;

    iget-object v1, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v1, v1, Lcyd$3;->b:Lcyd;

    iget-object v1, v1, Lcyd;->ae:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcyd$3$1;->b:Lcyd$3;

    iget-object v4, v4, Lcyd$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
