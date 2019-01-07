.class public final Leyl;
.super Ljava/lang/Object;
.source "StatusChangedObject.java"


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;)Leyl;
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 40
    :goto_0
    return-object p0

    .line 31
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;->conferenceId:Ljava/lang/Long;

    iput-object v0, p0, Leyl;->a:Ljava/lang/Long;

    .line 32
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;->uid:Ljava/lang/Long;

    iput-object v0, p0, Leyl;->b:Ljava/lang/Long;

    .line 33
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;->action:Ljava/lang/String;

    iput-object v0, p0, Leyl;->c:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;->cause:Ljava/lang/String;

    iput-object v0, p0, Leyl;->d:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;->time:Ljava/lang/Long;

    iput-object v0, p0, Leyl;->e:Ljava/lang/Long;

    .line 36
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;->callerId:Ljava/lang/Long;

    iput-object v0, p0, Leyl;->f:Ljava/lang/Long;

    .line 37
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;->text:Ljava/lang/String;

    iput-object v0, p0, Leyl;->g:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;->confType:Ljava/lang/Integer;

    iput-object v0, p0, Leyl;->h:Ljava/lang/Integer;

    goto :goto_0
.end method
