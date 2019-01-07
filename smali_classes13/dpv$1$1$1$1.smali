.class final Ldpv$1$1$1$1;
.super Ljava/lang/Object;
.source "EncryptImageUploader.java"

# interfaces
.implements Lcom/alibaba/wukong/im/Uploader$UploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpv$1$1$1;->run()V
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
.field final synthetic a:Ldpv$1$1$1;


# direct methods
.method constructor <init>(Ldpv$1$1$1;)V
    .locals 0
    .param p1, "this$3"    # Ldpv$1$1$1;

    .prologue
    .line 49
    iput-object p1, p0, Ldpv$1$1$1$1;->a:Ldpv$1$1$1;

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
    .line 66
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[EncryptImageUploader] begin uploadThumbFile2Space fail,code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 67
    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v0, v1, v2}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Ldpv$1$1$1$1;->a:Ldpv$1$1$1;

    iget-object v0, v0, Ldpv$1$1$1;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Ldpv$1$1$1$1;->a:Ldpv$1$1$1;

    iget-object v0, v0, Ldpv$1$1$1;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 71
    :cond_0
    iget-object v0, p0, Ldpv$1$1$1$1;->a:Ldpv$1$1$1;

    iget-object v0, v0, Ldpv$1$1$1;->b:Ldpv$1$1;

    iget-object v0, v0, Ldpv$1$1;->c:Ldpv$1;

    iget-object v0, v0, Ldpv$1;->b:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    iget-object v1, p0, Ldpv$1$1$1$1;->a:Ldpv$1$1$1;

    iget-object v1, v1, Ldpv$1$1$1;->b:Ldpv$1$1;

    iget-object v1, v1, Ldpv$1$1;->b:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onSuccess(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public final onProgress(III)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I

    .prologue
    .line 76
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    check-cast p1, Lcom/alibaba/wukong/im/MessageContent;

    .line 1052
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "[EncryptImageUploader] begin uploadThumbFile2Space suc"

    invoke-static {v0, v1, v2}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Ldpv$1$1$1$1;->a:Ldpv$1$1$1;

    iget-object v0, v0, Ldpv$1$1$1;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Ldpv$1$1$1$1;->a:Ldpv$1$1$1;

    iget-object v0, v0, Ldpv$1$1$1;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1056
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Ldpv$1$1$1$1;->a:Ldpv$1$1$1;

    iget-object v0, v0, Ldpv$1$1$1;->b:Ldpv$1$1;

    iget-object v0, v0, Ldpv$1$1;->a:Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    check-cast p1, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->setThumbId(Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Ldpv$1$1$1$1;->a:Ldpv$1$1$1;

    iget-object v0, v0, Ldpv$1$1$1;->b:Ldpv$1$1;

    iget-object v0, v0, Ldpv$1$1;->c:Ldpv$1;

    iget-object v0, v0, Ldpv$1;->b:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    iget-object v1, p0, Ldpv$1$1$1$1;->a:Ldpv$1$1$1;

    iget-object v1, v1, Ldpv$1$1$1;->b:Ldpv$1$1;

    iget-object v1, v1, Ldpv$1$1;->a:Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1060
    :cond_1
    iget-object v0, p0, Ldpv$1$1$1$1;->a:Ldpv$1$1$1;

    iget-object v0, v0, Ldpv$1$1$1;->b:Ldpv$1$1;

    iget-object v0, v0, Ldpv$1$1;->c:Ldpv$1;

    iget-object v0, v0, Ldpv$1;->b:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    iget-object v1, p0, Ldpv$1$1$1$1;->a:Ldpv$1$1$1;

    iget-object v1, v1, Ldpv$1$1$1;->b:Ldpv$1$1;

    iget-object v1, v1, Ldpv$1$1;->b:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
