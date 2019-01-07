.class public Lcom/alibaba/dingtalk/scanbase/model/RecognizeRequestObject;
.super Ljava/lang/Object;
.source "RecognizeRequestObject.java"


# instance fields
.field public imageContent:[B
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public imageMid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeRequestModel;)Lcom/alibaba/dingtalk/scanbase/model/RecognizeRequestObject;
    .locals 2
    .param p1, "model"    # Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeRequestModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeRequestObject;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/scanbase/model/RecognizeRequestObject;-><init>()V

    .line 47
    .local v0, "object":Lcom/alibaba/dingtalk/scanbase/model/RecognizeRequestObject;
    iget-object v1, p1, Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeRequestModel;->imageMid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeRequestObject;->imageMid:Ljava/lang/String;

    .line 48
    iget-object v1, p1, Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeRequestModel;->imageContent:[B

    iput-object v1, v0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeRequestObject;->imageContent:[B

    goto :goto_0
.end method

.method public toIDLModel()Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeRequestModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    new-instance v0, Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeRequestModel;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeRequestModel;-><init>()V

    .line 54
    .local v0, "model":Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeRequestModel;
    iget-object v1, p0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeRequestObject;->imageMid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeRequestModel;->imageMid:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeRequestObject;->imageContent:[B

    iput-object v1, v0, Lcom/alibaba/dingtalk/scanbase/idl/model/RecognizeRequestModel;->imageContent:[B

    .line 56
    return-object v0
.end method
