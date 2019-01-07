.class public Lcom/alibaba/android/teleconf/sdk/objects/ConfOperationObject;
.super Ljava/lang/Object;
.source "ConfOperationObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cause:Ljava/lang/String;

.field public code:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;)Lcom/alibaba/android/teleconf/sdk/objects/ConfOperationObject;
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;

    .prologue
    .line 18
    if-nez p1, :cond_0

    .line 23
    :goto_0
    return-object p0

    .line 20
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfOperationObject;->code:Ljava/lang/Integer;

    .line 21
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->cause:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfOperationObject;->cause:Ljava/lang/String;

    goto :goto_0
.end method

.method public toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;-><init>()V

    .line 28
    .local v0, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfOperationObject;->code:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->code:Ljava/lang/Integer;

    .line 29
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfOperationObject;->cause:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->cause:Ljava/lang/String;

    .line 31
    return-object v0
.end method
