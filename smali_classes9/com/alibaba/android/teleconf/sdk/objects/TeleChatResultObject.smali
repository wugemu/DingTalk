.class public Lcom/alibaba/android/teleconf/sdk/objects/TeleChatResultObject;
.super Ljava/lang/Object;
.source "TeleChatResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cause:Ljava/lang/String;

.field public code:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatResultObject;->code:Ljava/lang/Integer;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatResultObject;->cause:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;)Lcom/alibaba/android/teleconf/sdk/objects/TeleChatResultObject;
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;

    .prologue
    .line 23
    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatResultObject;->code:Ljava/lang/Integer;

    .line 25
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->cause:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatResultObject;->cause:Ljava/lang/String;

    .line 27
    :cond_0
    return-object p0
.end method

.method public toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;-><init>()V

    .line 32
    .local v0, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatResultObject;->code:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->code:Ljava/lang/Integer;

    .line 33
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatResultObject;->cause:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->cause:Ljava/lang/String;

    .line 34
    return-object v0
.end method
