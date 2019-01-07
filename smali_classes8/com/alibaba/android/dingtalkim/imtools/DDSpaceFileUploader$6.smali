.class final Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$6;
.super Ljava/lang/Object;
.source "DDSpaceFileUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/wukong/im/Uploader$UploadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$6;->d:Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$6;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$6;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$6;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$6;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$6;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$6;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method
