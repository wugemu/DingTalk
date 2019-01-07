.class final Ldpv$1$1$1;
.super Ljava/lang/Object;
.source "EncryptImageUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpv$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ldpv$1$1;


# direct methods
.method constructor <init>(Ldpv$1$1;Ljava/io/File;)V
    .locals 0
    .param p1, "this$2"    # Ldpv$1$1;

    .prologue
    .line 41
    iput-object p1, p0, Ldpv$1$1$1;->b:Ldpv$1$1;

    iput-object p2, p0, Ldpv$1$1$1;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    iget-object v1, p0, Ldpv$1$1$1;->a:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 45
    new-instance v0, Lcom/alibaba/wukong/im/Uploader$UploadParams;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/Uploader$UploadParams;-><init>()V

    .line 46
    .local v0, "thumbUploadParams":Lcom/alibaba/wukong/im/Uploader$UploadParams;
    iget-object v1, p0, Ldpv$1$1$1;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->setFilePath(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Ldpv$1$1$1;->b:Ldpv$1$1;

    iget-object v1, v1, Ldpv$1$1;->c:Ldpv$1;

    iget-object v1, v1, Ldpv$1;->a:Lcom/alibaba/wukong/im/Uploader$UploadParams;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->setMessage(Lcom/alibaba/wukong/im/Message;)V

    .line 48
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const-string/jumbo v3, "[EncryptImageUploader] begin uploadThumbFile2Space"

    invoke-static {v1, v2, v3}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    new-instance v2, Ldpv$1$1$1$1;

    invoke-direct {v2, p0}, Ldpv$1$1$1$1;-><init>(Ldpv$1$1$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    .line 81
    .end local v0    # "thumbUploadParams":Lcom/alibaba/wukong/im/Uploader$UploadParams;
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Ldpv$1$1$1;->b:Ldpv$1$1;

    iget-object v1, v1, Ldpv$1$1;->c:Ldpv$1;

    iget-object v1, v1, Ldpv$1;->b:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    iget-object v2, p0, Ldpv$1$1$1;->b:Ldpv$1$1;

    iget-object v2, v2, Ldpv$1$1;->b:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
