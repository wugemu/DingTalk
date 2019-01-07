.class public Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;
.super Ljava/lang/Object;
.source "ConfErrorPushObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public action:Ljava/lang/String;

.field public callerId:J

.field public cause:Ljava/lang/String;

.field public conferenceId:J

.field public level:J

.field public sequenceId:J

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;)Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;
    .locals 4
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    if-eqz p1, :cond_0

    .line 25
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->conferenceId:Ljava/lang/Long;

    .line 1044
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 25
    iput-wide v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->conferenceId:J

    .line 26
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->callerId:Ljava/lang/Long;

    .line 2044
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->callerId:J

    .line 27
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->action:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->action:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->cause:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->cause:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->time:Ljava/lang/Long;

    .line 3044
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->time:J

    .line 30
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->sequenceId:Ljava/lang/Long;

    .line 4044
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 30
    iput-wide v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->sequenceId:J

    .line 31
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->level:Ljava/lang/Long;

    .line 5044
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 31
    iput-wide v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->level:J

    .line 33
    :cond_0
    return-object p0
.end method

.method public toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 37
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;-><init>()V

    .line 38
    .local v0, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->conferenceId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->conferenceId:Ljava/lang/Long;

    .line 39
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->callerId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->callerId:Ljava/lang/Long;

    .line 40
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->action:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->action:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->cause:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->cause:Ljava/lang/String;

    .line 42
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->time:Ljava/lang/Long;

    .line 43
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->sequenceId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->sequenceId:Ljava/lang/Long;

    .line 44
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfErrorPushObject;->level:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->level:Ljava/lang/Long;

    .line 45
    return-object v0
.end method
