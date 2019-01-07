.class public Lexj;
.super Lexc;
.source "VideoApmtOperationPresenter.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lexj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexj;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lexf$b;)V
    .locals 1
    .param p1, "activityView"    # Lexf$b;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lexc;-><init>(Lexf$b;)V

    .line 35
    iget-object v0, p0, Lexj;->a:Lexf$b;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lexj;->a:Lexf$b;

    invoke-interface {v0, p0}, Lexf$b;->setPresenter(Lcjd;)V

    .line 38
    :cond_0
    return-void
.end method

.method static synthetic a(Lexj;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lexj;

    .prologue
    .line 27
    iget-object v0, p0, Lexj;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lexj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lexj;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lexj;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lexj;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lexj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Leuy;)V
    .locals 5
    .param p1, "object"    # Leuy;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 124
    if-eqz p1, :cond_0

    iget-object v0, p1, Leuy;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iget-object v1, p1, Leuy;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lexj;->b:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 2174
    :cond_0
    :goto_0
    return-void

    .line 2022
    :cond_1
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationModel;-><init>()V

    .line 2023
    iget-object v0, p1, Leuy;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationModel;->conferenceId:Ljava/lang/String;

    .line 2024
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationModel;->operation:Ljava/lang/Integer;

    .line 131
    const-string/jumbo v0, "EVENTBUTLER"

    .line 132
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lexj$3;

    invoke-direct {v1, p0}, Lexj$3;-><init>(Lexj;)V

    const-class v3, Leyo$d;

    iget-object v4, p0, Lexj;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 2173
    if-eqz v2, :cond_0

    .line 2176
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    .line 2177
    if-eqz v1, :cond_0

    .line 2178
    new-instance v3, Leyf$9;

    invoke-direct {v3, v0}, Leyf$9;-><init>(Leyo$d;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;->operateReservedVideoConference(Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(Leva;)V
    .locals 4
    .param p1, "object"    # Leva;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 84
    if-eqz p1, :cond_0

    iget-object v0, p1, Leva;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iget-object v1, p1, Leva;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lexj;->b:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexj;->c:Ljava/lang/String;

    const-string/jumbo v2, "Create the video conf apmt"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;-><init>()V

    .line 1114
    iget-wide v2, p1, Leva;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->callerId:Ljava/lang/Long;

    .line 1115
    iget-object v0, p1, Leva;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->callerNick:Ljava/lang/String;

    .line 1116
    iget-object v0, p1, Leva;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Leva;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->calleeIds:Ljava/util/List;

    .line 1118
    iget-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->calleeIds:Ljava/util/List;

    iget-object v2, p1, Leva;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1120
    :cond_2
    iget v0, p1, Leva;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->confType:Ljava/lang/Integer;

    .line 1121
    iget-object v0, p1, Leva;->f:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->title:Ljava/lang/String;

    .line 1122
    iget-wide v2, p1, Leva;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->hostess:Ljava/lang/Long;

    .line 1123
    iget-wide v2, p1, Leva;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->startime:Ljava/lang/Long;

    .line 1124
    iget-wide v2, p1, Leva;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->duration:Ljava/lang/Long;

    .line 1125
    iget-boolean v0, p1, Leva;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->enableDing:Ljava/lang/Boolean;

    .line 1126
    iget v0, p1, Leva;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->calltype:Ljava/lang/Integer;

    .line 92
    new-instance v0, Lexj$2;

    invoke-direct {v0, p0}, Lexj$2;-><init>(Lexj;)V

    const-class v2, Leyo$d;

    iget-object v3, p0, Lexj;->b:Landroid/app/Activity;

    .line 93
    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 92
    invoke-static {v1, v0}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;Leyo$d;)V

    goto :goto_0
.end method

.method public final a(Levb;)V
    .locals 4
    .param p1, "object"    # Levb;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 42
    if-eqz p1, :cond_0

    iget-object v0, p1, Levb;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iget-object v1, p1, Levb;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lexj;->b:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexj;->c:Ljava/lang/String;

    const-string/jumbo v2, "Get the video conf info"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;-><init>()V

    .line 1025
    iget-object v0, p1, Levb;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;->conferenceId:Ljava/lang/String;

    .line 49
    new-instance v0, Lexj$1;

    invoke-direct {v0, p0}, Lexj$1;-><init>(Lexj;)V

    const-class v2, Leyo$d;

    iget-object v3, p0, Lexj;->b:Landroid/app/Activity;

    .line 50
    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 49
    invoke-static {v1, v0}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;Leyo$d;)V

    goto :goto_0
.end method

.method public final a(Levc;)V
    .locals 0
    .param p1, "object"    # Levc;

    .prologue
    .line 120
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method
