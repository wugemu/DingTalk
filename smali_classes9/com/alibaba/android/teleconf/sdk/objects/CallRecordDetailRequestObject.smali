.class public Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailRequestObject;
.super Ljava/lang/Object;
.source "CallRecordDetailRequestObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public iNumber:Ljava/lang/String;

.field public ikey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailRequestModel;)Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailRequestObject;
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailRequestModel;

    .prologue
    .line 17
    if-eqz p1, :cond_0

    .line 18
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailRequestModel;->iNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailRequestObject;->iNumber:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailRequestModel;->ikey:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailRequestObject;->ikey:Ljava/lang/String;

    .line 21
    :cond_0
    return-object p0
.end method

.method public toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailRequestModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 25
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailRequestModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailRequestModel;-><init>()V

    .line 26
    .local v0, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailRequestModel;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailRequestObject;->iNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailRequestModel;->iNumber:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailRequestObject;->ikey:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailRequestModel;->ikey:Ljava/lang/String;

    .line 28
    return-object v0
.end method
