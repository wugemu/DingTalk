.class final Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$1;
.super Ljava/lang/Object;
.source "DDSpaceFileUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->upload(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

.field final synthetic b:Lcom/alibaba/wukong/im/MessageContent;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/wukong/im/Uploader$UploadListener;Lcom/alibaba/wukong/im/MessageContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$1;->c:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$1;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$1;->b:Lcom/alibaba/wukong/im/MessageContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$1;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$1;->b:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onSuccess(Ljava/lang/Object;)V

    .line 66
    return-void
.end method
