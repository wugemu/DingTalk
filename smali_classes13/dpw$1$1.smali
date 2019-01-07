.class final Ldpw$1$1;
.super Ljava/lang/Object;
.source "GetDynamicEmotionMediaId.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpw$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

.field final synthetic b:Ldpw$1;


# direct methods
.method constructor <init>(Ldpw$1;Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;)V
    .locals 0
    .param p1, "this$1"    # Ldpw$1;

    .prologue
    .line 34
    iput-object p1, p0, Ldpw$1$1;->b:Ldpw$1;

    iput-object p2, p0, Ldpw$1$1;->a:Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    iget-object v1, p0, Ldpw$1$1;->b:Ldpw$1;

    iget-object v1, v1, Ldpw$1;->a:Lcom/alibaba/wukong/im/Uploader$UploadParams;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 38
    .local v0, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    iget-object v1, p0, Ldpw$1$1;->a:Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->mediaId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->setUrl(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Ldpw$1$1;->a:Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->authMediaId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->setAuthUrl(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Ldpw$1$1;->b:Ldpw$1;

    iget-object v1, v1, Ldpw$1;->b:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onSuccess(Ljava/lang/Object;)V

    .line 41
    return-void
.end method
