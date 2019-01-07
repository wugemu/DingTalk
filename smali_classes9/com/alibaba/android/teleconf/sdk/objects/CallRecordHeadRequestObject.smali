.class public Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadRequestObject;
.super Ljava/lang/Object;
.source "CallRecordHeadRequestObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public iNumber:Ljava/lang/String;

.field public iUid:Ljava/lang/Long;

.field public lastPts:Ljava/lang/Long;

.field public needSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;)Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadRequestObject;
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;->iUid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadRequestObject;->iUid:Ljava/lang/Long;

    .line 23
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;->iNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadRequestObject;->iNumber:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;->lastPts:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadRequestObject;->lastPts:Ljava/lang/Long;

    .line 25
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;->needSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadRequestObject;->needSize:Ljava/lang/Integer;

    .line 27
    :cond_0
    return-object p0
.end method

.method public toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;-><init>()V

    .line 32
    .local v0, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadRequestObject;->iUid:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;->iUid:Ljava/lang/Long;

    .line 33
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadRequestObject;->iNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;->iNumber:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadRequestObject;->lastPts:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;->lastPts:Ljava/lang/Long;

    .line 35
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadRequestObject;->needSize:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;->needSize:Ljava/lang/Integer;

    .line 36
    return-object v0
.end method
