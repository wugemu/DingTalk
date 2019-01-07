.class public Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;
.super Ljava/lang/Object;
.source "ConfPushObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public action:Ljava/lang/String;

.field public callerId:Ljava/lang/Long;

.field public cause:Ljava/lang/String;

.field public conferenceId:Ljava/lang/Long;

.field public text:Ljava/lang/String;

.field public time:Ljava/lang/Long;

.field public uid:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;)Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 40
    :goto_0
    return-object p0

    .line 32
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;->conferenceId:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;->conferenceId:Ljava/lang/Long;

    .line 33
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;->uid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;->uid:Ljava/lang/Long;

    .line 34
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;->action:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;->action:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;->cause:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;->cause:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;->time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;->time:Ljava/lang/Long;

    .line 37
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;->callerId:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;->callerId:Ljava/lang/Long;

    .line 38
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 44
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;-><init>()V

    .line 46
    .local v0, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;->conferenceId:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;->conferenceId:Ljava/lang/Long;

    .line 47
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;->uid:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;->uid:Ljava/lang/Long;

    .line 48
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;->action:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;->action:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;->cause:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;->cause:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;->time:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;->time:Ljava/lang/Long;

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;->callerId:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;->callerId:Ljava/lang/Long;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPushObject;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPushModel;->text:Ljava/lang/String;

    .line 54
    return-object v0
.end method
