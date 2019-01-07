.class public final Levn;
.super Levd;
.source "TeleVoipConfDataCenter.java"


# static fields
.field private static volatile u:Levn;


# instance fields
.field public r:J

.field public s:Ljava/lang/String;

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Levd;-><init>()V

    return-void
.end method

.method public static p()Levn;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Levn;->u:Levn;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Levi;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Levn;->u:Levn;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Levn;

    invoke-direct {v0}, Levn;-><init>()V

    sput-object v0, Levn;->u:Levn;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Levn;->u:Levn;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 34
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;-><init>()V

    .line 36
    .local v0, "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    iget-object v2, p0, Levn;->a:Ljava/lang/Long;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    .line 37
    iget-object v2, p0, Levn;->c:Ljava/lang/Long;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    .line 38
    iget-object v2, p0, Levn;->b:Ljava/lang/Long;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callHost:Ljava/lang/Long;

    .line 40
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 41
    iget-object v2, p0, Levn;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Levn;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 42
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Levn;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 43
    .local v1, "uidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    .end local v1    # "uidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_0
    iget-object v2, p0, Levn;->e:Ljava/lang/Long;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    .line 47
    iget-object v2, p0, Levn;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conversationId:Ljava/lang/String;

    .line 48
    iget-object v2, p0, Levn;->h:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerNick:Ljava/lang/String;

    .line 49
    iget-object v2, p0, Levn;->j:Ljava/lang/Long;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->duration:Ljava/lang/Long;

    .line 50
    iget v2, p0, Levn;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->confType:Ljava/lang/Integer;

    .line 51
    iget-wide v2, p0, Levn;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->startTime:Ljava/lang/Long;

    .line 52
    iget-object v2, p0, Levn;->m:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->confTheme:Ljava/lang/String;

    .line 53
    iget-object v2, p0, Levn;->g:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->smsContent:Ljava/lang/String;

    .line 54
    return-object v0
.end method

.method public final r()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 58
    iget-object v0, p0, Levn;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Levn;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
