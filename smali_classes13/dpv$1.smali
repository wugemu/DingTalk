.class final Ldpv$1;
.super Ljava/lang/Object;
.source "EncryptImageUploader.java"

# interfaces
.implements Lcom/alibaba/wukong/im/Uploader$UploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpv;->upload(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/im/Uploader$UploadListener",
        "<",
        "Lcom/alibaba/wukong/im/MessageContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Uploader$UploadParams;

.field final synthetic b:Lcom/alibaba/wukong/im/Uploader$UploadListener;

.field final synthetic c:Ldpv;


# direct methods
.method constructor <init>(Ldpv;Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 0
    .param p1, "this$0"    # Ldpv;

    .prologue
    .line 30
    iput-object p1, p0, Ldpv$1;->c:Ldpv;

    iput-object p2, p0, Ldpv$1;->a:Lcom/alibaba/wukong/im/Uploader$UploadParams;

    iput-object p3, p0, Ldpv$1;->b:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[EncryptImageUploader] uploadEncryptFile2Space fail, code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 96
    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {v0, v1, v2}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Ldpv$1;->b:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public final onProgress(III)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I

    .prologue
    .line 102
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 30
    check-cast p1, Lcom/alibaba/wukong/im/MessageContent;

    .line 1033
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "[EncryptImageUploader] uploadEncryptFile2Space suc"

    invoke-static {v0, v2, v1}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1035
    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    .line 1036
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->size()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1037
    const-class v1, Ldpv;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Ldpv$1$1;

    invoke-direct {v2, p0, v0, p1}, Ldpv$1$1;-><init>(Ldpv$1;Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;Lcom/alibaba/wukong/im/MessageContent;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1088
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Ldpv$1;->b:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1089
    :cond_1
    iget-object v0, p0, Ldpv$1;->b:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-interface {v0, v2, v2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
