.class public Levi;
.super Levd;
.source "TeleConfDataCenter.java"


# static fields
.field private static final x:Ljava/lang/String;

.field private static volatile y:Levi;


# instance fields
.field public volatile r:Z

.field public volatile s:Z

.field public volatile t:Z

.field public volatile u:Z

.field public volatile v:Z

.field public volatile w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Levi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Levi;->x:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Levd;-><init>()V

    .line 39
    invoke-virtual {p0}, Levi;->r()V

    .line 40
    return-void
.end method

.method public static p()Levi;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Levi;->y:Levi;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Levi;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Levi;->y:Levi;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Levi;

    invoke-direct {v0}, Levi;-><init>()V

    sput-object v0, Levi;->y:Levi;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Levi;->y:Levi;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;)V
    .locals 6
    .param p1, "object"    # Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v4, 0x3e8

    .line 91
    if-nez p1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Levi;->x:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setConfIdAndOthers "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Levi;->a()V

    .line 96
    sget v0, Levh;->b:I

    iput v0, p0, Levi;->n:I

    .line 97
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerNick:Ljava/lang/String;

    iput-object v0, p0, Levi;->h:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->confTheme:Ljava/lang/String;

    iput-object v0, p0, Levi;->m:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    iput-object v0, p0, Levi;->a:Ljava/lang/Long;

    .line 102
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    iput-object v0, p0, Levi;->c:Ljava/lang/Long;

    .line 105
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callHost:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callHost:Ljava/lang/Long;

    iput-object v0, p0, Levi;->b:Ljava/lang/Long;

    .line 108
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 109
    iget-object v0, p0, Levi;->d:Ljava/util/List;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 112
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    iput-object v0, p0, Levi;->e:Ljava/lang/Long;

    .line 114
    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conversationId:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 115
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conversationId:Ljava/lang/String;

    iput-object v0, p0, Levi;->f:Ljava/lang/String;

    .line 117
    :cond_6
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->startTime:Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 118
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->startTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Levi;->o:J

    .line 122
    :goto_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->duration:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 123
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->duration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Levi;->j:Ljava/lang/Long;

    .line 125
    :cond_7
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->confType:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 126
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->confType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Levi;->k:I

    .line 128
    :cond_8
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->smsContent:Ljava/lang/String;

    iput-object v0, p0, Levi;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 120
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Levi;->o:J

    goto :goto_1
.end method

.method public final q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 132
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;-><init>()V

    .line 134
    .local v0, "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    iget-object v2, p0, Levi;->a:Ljava/lang/Long;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    .line 135
    iget-object v2, p0, Levi;->c:Ljava/lang/Long;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    .line 136
    iget-object v2, p0, Levi;->b:Ljava/lang/Long;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callHost:Ljava/lang/Long;

    .line 137
    iget-object v2, p0, Levi;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Levi;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 138
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Levi;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 139
    .local v1, "uidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 140
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    .end local v1    # "uidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_0
    iget-object v2, p0, Levi;->e:Ljava/lang/Long;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    .line 143
    iget-object v2, p0, Levi;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conversationId:Ljava/lang/String;

    .line 144
    iget-object v2, p0, Levi;->h:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerNick:Ljava/lang/String;

    .line 145
    iget-object v2, p0, Levi;->j:Ljava/lang/Long;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->duration:Ljava/lang/Long;

    .line 146
    iget v2, p0, Levi;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->confType:Ljava/lang/Integer;

    .line 147
    iget-wide v2, p0, Levi;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->startTime:Ljava/lang/Long;

    .line 148
    iget-object v2, p0, Levi;->m:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->confTheme:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Levi;->g:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->smsContent:Ljava/lang/String;

    .line 150
    return-object v0
.end method

.method public r()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Levi;->r:Z

    .line 160
    iput-boolean v0, p0, Levi;->s:Z

    .line 161
    iput-boolean v0, p0, Levi;->t:Z

    .line 162
    iput-boolean v0, p0, Levi;->u:Z

    .line 163
    iput-boolean v0, p0, Levi;->v:Z

    .line 164
    iput-boolean v0, p0, Levi;->w:Z

    .line 165
    return-void
.end method
