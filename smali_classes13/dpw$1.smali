.class final Ldpw$1;
.super Ljava/lang/Object;
.source "GetDynamicEmotionMediaId.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpw;->upload(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
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
        "Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Uploader$UploadParams;

.field final synthetic b:Lcom/alibaba/wukong/im/Uploader$UploadListener;

.field final synthetic c:Ldpw;


# direct methods
.method constructor <init>(Ldpw;Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 0
    .param p1, "this$0"    # Ldpw;

    .prologue
    .line 29
    iput-object p1, p0, Ldpw$1;->c:Ldpw;

    iput-object p2, p0, Ldpw$1;->a:Lcom/alibaba/wukong/im/Uploader$UploadParams;

    iput-object p3, p0, Ldpw$1;->b:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    .line 1032
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->authMediaId:Ljava/lang/String;

    .line 1033
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1034
    :cond_0
    const-string/jumbo v0, "DynamicEmotion"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldpw$1$1;

    invoke-direct {v1, p0, p1}, Ldpw$1$1;-><init>(Ldpw$1;Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 1044
    :cond_1
    iget-object v0, p0, Ldpw$1;->b:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    const-string/jumbo v1, "500"

    const-string/jumbo v2, "upload response error error"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Ldpw$1;->b:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 51
    return-void
.end method
