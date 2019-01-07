.class public Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;
.super Ljava/lang/Object;
.source "CallRecordHeadItemResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public id:Ljava/lang/Long;

.field public ikey:Ljava/lang/String;

.field public lastBeginTime:Ljava/lang/String;

.field public noAnswerCount:Ljava/lang/Integer;

.field public targetNicks:Ljava/lang/String;

.field public targetNumber:Ljava/lang/String;

.field public targetTitle:Ljava/lang/String;

.field public targetUids:Ljava/lang/String;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;)Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->noAnswerCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->noAnswerCount:Ljava/lang/Integer;

    .line 33
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->targetNicks:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->targetNicks:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->targetNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->targetNumber:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->targetTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->targetTitle:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->targetUids:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->targetUids:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->lastBeginTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->lastBeginTime:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->ikey:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->ikey:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->id:Ljava/lang/Long;

    .line 40
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->type:Ljava/lang/Integer;

    .line 42
    :cond_0
    return-object p0
.end method

.method toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 46
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;-><init>()V

    .line 47
    .local v0, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->noAnswerCount:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->noAnswerCount:Ljava/lang/Integer;

    .line 48
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->targetNicks:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->targetNicks:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->targetNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->targetNumber:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->targetTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->targetTitle:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->targetUids:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->targetUids:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->lastBeginTime:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->lastBeginTime:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->ikey:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->ikey:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->id:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->id:Ljava/lang/Long;

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordHeadItemResultObject;->type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadItemResultModel;->type:Ljava/lang/Integer;

    .line 56
    return-object v0
.end method
