.class public Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;
.super Ljava/lang/Object;
.source "CallRecordDetailItemResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public beginTime:Ljava/lang/Long;

.field public callDirection:Ljava/lang/String;

.field public duration:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;)Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;

    .prologue
    .line 19
    if-eqz p1, :cond_0

    .line 20
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;->beginTime:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;->beginTime:Ljava/lang/Long;

    .line 21
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;->callDirection:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;->callDirection:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;->duration:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;->duration:Ljava/lang/Integer;

    .line 24
    :cond_0
    return-object p0
.end method

.method toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 28
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;-><init>()V

    .line 29
    .local v0, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;->beginTime:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;->beginTime:Ljava/lang/Long;

    .line 30
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;->callDirection:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;->callDirection:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/CallRecordDetailItemResultObject;->duration:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailItemResultModel;->duration:Ljava/lang/Integer;

    .line 32
    return-object v0
.end method
