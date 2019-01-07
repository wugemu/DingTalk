.class public Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;
.super Ljava/lang/Object;
.source "ConfMemberInfoObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public canSpeek:Ljava/lang/Boolean;

.field public hangupCause:Ljava/lang/String;

.field public mediaId:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public status:Ljava/lang/Integer;

.field public uid:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;)Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 34
    :goto_0
    return-object p0

    .line 28
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;->uid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    .line 29
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;->status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    .line 30
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;->nickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->nickName:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;->mediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;->canSpeek:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->canSpeek:Ljava/lang/Boolean;

    .line 33
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;->hangupCause:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->hangupCause:Ljava/lang/String;

    goto :goto_0
.end method

.method public toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 38
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;-><init>()V

    .line 39
    .local v0, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;->uid:Ljava/lang/Long;

    .line 40
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;->status:Ljava/lang/Integer;

    .line 41
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->nickName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;->nickName:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;->mediaId:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->canSpeek:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;->canSpeek:Ljava/lang/Boolean;

    .line 44
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->hangupCause:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;->hangupCause:Ljava/lang/String;

    .line 46
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 51
    const/16 v0, 0xb

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "MemInfo:"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "uid="

    aput-object v2, v1, v0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x3

    const-string/jumbo v2, ",status="

    aput-object v2, v1, v0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v1, v2

    const/4 v0, 0x5

    const-string/jumbo v2, ",nick="

    aput-object v2, v1, v0

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->nickName:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string/jumbo v2, ",speak="

    aput-object v2, v1, v0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->canSpeek:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->canSpeek:Ljava/lang/Boolean;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v1, v2

    const/16 v0, 0x9

    const-string/jumbo v2, ",cause="

    aput-object v2, v1, v0

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->hangupCause:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 51
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 53
    :cond_1
    const-string/jumbo v0, "-1"

    goto :goto_1

    .line 55
    :cond_2
    const-string/jumbo v0, "false"

    goto :goto_2
.end method
