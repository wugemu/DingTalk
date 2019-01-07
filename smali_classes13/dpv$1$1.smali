.class final Ldpv$1$1;
.super Ljava/lang/Object;
.source "EncryptImageUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpv$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

.field final synthetic b:Lcom/alibaba/wukong/im/MessageContent;

.field final synthetic c:Ldpv$1;


# direct methods
.method constructor <init>(Ldpv$1;Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;Lcom/alibaba/wukong/im/MessageContent;)V
    .locals 0
    .param p1, "this$1"    # Ldpv$1;

    .prologue
    .line 37
    iput-object p1, p0, Ldpv$1$1;->c:Ldpv$1;

    iput-object p2, p0, Ldpv$1$1;->a:Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    iput-object p3, p0, Ldpv$1$1;->b:Lcom/alibaba/wukong/im/MessageContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    iget-object v1, p0, Ldpv$1$1;->c:Ldpv$1;

    iget-object v1, v1, Ldpv$1;->c:Ldpv;

    iget-object v2, p0, Ldpv$1$1;->c:Ldpv$1;

    iget-object v2, v2, Ldpv$1;->a:Lcom/alibaba/wukong/im/Uploader$UploadParams;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldpv;->a(Ldpv;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 41
    .local v0, "f":Ljava/io/File;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Ldpv$1$1$1;

    invoke-direct {v2, p0, v0}, Ldpv$1$1$1;-><init>(Ldpv$1$1;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method
