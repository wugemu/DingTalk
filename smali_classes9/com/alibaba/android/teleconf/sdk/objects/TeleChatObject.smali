.class public Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;
.super Ljava/lang/Object;
.source "TeleChatObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public calleeNumber:Ljava/lang/String;

.field public calleeUid:Ljava/lang/Long;

.field public callerUid:Ljava/lang/Long;

.field public cid:Ljava/lang/String;

.field public isDetectVoip:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;->callerUid:Ljava/lang/Long;

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;->calleeUid:Ljava/lang/Long;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;->calleeNumber:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;->cid:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;->isDetectVoip:Z

    .line 28
    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;)Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;->callerUid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;->callerUid:Ljava/lang/Long;

    .line 33
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;->calleeUid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;->calleeUid:Ljava/lang/Long;

    .line 34
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;->calleeNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;->calleeNumber:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;->isDetectVoIP:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;->isDetectVoip:Z

    .line 36
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;->cid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;->cid:Ljava/lang/String;

    .line 38
    :cond_0
    return-object p0
.end method

.method public toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 42
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;-><init>()V

    .line 43
    .local v0, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;->callerUid:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;->callerUid:Ljava/lang/Long;

    .line 44
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;->calleeUid:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;->calleeUid:Ljava/lang/Long;

    .line 45
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;->calleeNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;->calleeNumber:Ljava/lang/String;

    .line 46
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;->isDetectVoip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;->isDetectVoIP:Ljava/lang/Boolean;

    .line 47
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/TeleChatObject;->cid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;->cid:Ljava/lang/String;

    .line 48
    return-object v0
.end method
