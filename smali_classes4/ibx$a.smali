.class abstract Libx$a;
.super Ljava/lang/Object;
.source "MessageMediaSender.java"

# interfaces
.implements Lcom/alibaba/wukong/im/Uploader$UploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/im/Uploader$UploadListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/alibaba/wukong/im/message/MessageImpl;

.field protected b:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "this":Libx$a;, "Libx$a<TT;>;"
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p1, p0, Libx$a;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 476
    iput-object p2, p0, Libx$a;->b:Lcom/alibaba/wukong/Callback;

    .line 477
    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 487
    .local p0, "this":Libx$a;, "Libx$a<TT;>;"
    const-string/jumbo v0, "[TAG] MsgSender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upload err "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Libx$a;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Libx$a;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_0
    return-void
.end method

.method public onProgress(III)V
    .locals 2
    .param p1, "totalSize"    # I
    .param p2, "uploadSize"    # I
    .param p3, "progress"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 494
    .local p0, "this":Libx$a;, "Libx$a<TT;>;"
    const/16 v0, 0x64

    if-lt p3, v0, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Libx$a;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput p3, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSendProgress:I

    .line 498
    iget-object v0, p0, Libx$a;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget v0, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->statSize:I

    if-nez v0, :cond_2

    .line 499
    iget-object v0, p0, Libx$a;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput p1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->statSize:I

    .line 501
    :cond_2
    iget-object v0, p0, Libx$a;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Libx$a;->b:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Libx$a;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-interface {v0, v1, p3}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 481
    .local p0, "this":Libx$a;, "Libx$a<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const-string/jumbo v0, "[TAG] MsgSender"

    const-string/jumbo v1, "upload suc"

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method
