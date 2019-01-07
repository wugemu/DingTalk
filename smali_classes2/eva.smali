.class public final Leva;
.super Lcom/alibaba/android/teleconf/data/ApmtBaseObject;
.source "TeleApmtCreateObject.java"


# instance fields
.field public b:J

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public i:J

.field public j:Z

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/data/ApmtBaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 46
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;-><init>()V

    .line 47
    .local v0, "createModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;
    iget-wide v2, p0, Leva;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->callerId:Ljava/lang/Long;

    .line 48
    iget-object v1, p0, Leva;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->callerNick:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Leva;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leva;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->calleeIds:Ljava/util/List;

    .line 51
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->calleeIds:Ljava/util/List;

    iget-object v2, p0, Leva;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_0
    iget-object v1, p0, Leva;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->title:Ljava/lang/String;

    .line 54
    iget-wide v2, p0, Leva;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->startTime:Ljava/lang/Long;

    .line 55
    iget-wide v2, p0, Leva;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->duration:Ljava/lang/Long;

    .line 56
    iget-wide v2, p0, Leva;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->orgId:Ljava/lang/Long;

    .line 57
    iget-boolean v1, p0, Leva;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->enableDing:Ljava/lang/Boolean;

    .line 59
    return-object v0
.end method
