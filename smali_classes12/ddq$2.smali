.class final Lddq$2;
.super Ljava/lang/Object;
.source "ChatUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddq;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcts$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgqw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcts$c;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;


# direct methods
.method constructor <init>(Lcts$c;Lcom/alibaba/wukong/im/Message;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lddq$2;->a:Lcts$c;

    iput-object p2, p0, Lddq$2;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 390
    .line 1393
    iget-object v0, p0, Lddq$2;->a:Lcts$c;

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lddq$2;->a:Lcts$c;

    iget-object v1, p0, Lddq$2;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcts$c;->a(Ljava/lang/String;Z)V

    .line 390
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 405
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_comment_cancel_like_failed:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 406
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "likeCancel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cancel like failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lddq$2;->b:Lcom/alibaba/wukong/im/Message;

    const/4 v1, 0x1

    invoke-static {v0, v1, v4}, Lddq;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    .line 409
    iget-object v0, p0, Lddq$2;->a:Lcts$c;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lddq$2;->a:Lcts$c;

    iget-object v1, p0, Lddq$2;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcts$c;->a(Ljava/lang/String;Z)V

    .line 412
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 401
    return-void
.end method
