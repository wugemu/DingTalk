.class public final Ldpw;
.super Ljava/lang/Object;
.source "GetDynamicEmotionMediaId.java"

# interfaces
.implements Lcom/alibaba/wukong/im/Uploader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final upload(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 3
    .param p1, "params"    # Lcom/alibaba/wukong/im/Uploader$UploadParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Uploader$UploadParams;",
            "Lcom/alibaba/wukong/im/Uploader$UploadListener",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    .local p2, "listener":Lcom/alibaba/wukong/im/Uploader$UploadListener;, "Lcom/alibaba/wukong/im/Uploader$UploadListener<Lcom/alibaba/wukong/im/MessageContent;>;"
    if-nez p2, :cond_0

    .line 58
    :goto_0
    return-void

    .line 24
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-nez v0, :cond_2

    .line 25
    :cond_1
    const-string/jumbo v0, "404"

    const-string/jumbo v1, "param error"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_2
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->f()Ldyb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getFilePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ldpw$1;

    invoke-direct {v2, p0, p1, p2}, Ldpw$1;-><init>(Ldpw;Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    invoke-interface {v0, v1, v2}, Ldyb;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
