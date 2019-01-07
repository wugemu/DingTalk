.class public final Leyf;
.super Ljava/lang/Object;
.source "VideoConfMgrAPIImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;Leyo$d;)V
    .locals 2
    .param p0, "pullModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceListResultModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "callbacks":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceListResultModel;>;"
    if-nez p0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    .line 346
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;
    if-eqz v0, :cond_0

    .line 347
    new-instance v1, Leyf$3;

    invoke-direct {v1, p1}, Leyf$3;-><init>(Leyo$d;)V

    invoke-interface {v0, p0, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;->uniQueryVideoConferenceList(Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;Liyv;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;Leyo$d;)V
    .locals 2
    .param p0, "controlModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceOperationResultModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "callback":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceOperationResultModel;>;"
    if-nez p0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    .line 96
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;
    if-eqz v0, :cond_0

    .line 97
    new-instance v1, Leyf$6;

    invoke-direct {v1, p1}, Leyf$6;-><init>(Leyo$d;)V

    invoke-interface {v0, p0, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;->controlConference(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;Liyv;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;Leyo$d;)V
    .locals 2
    .param p0, "createModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "callback":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;>;"
    if-nez p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    .line 48
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;
    if-eqz v0, :cond_0

    .line 49
    new-instance v1, Leyf$1;

    invoke-direct {v1, p1}, Leyf$1;-><init>(Leyo$d;)V

    invoke-interface {v0, p0, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;->createConference(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;Liyv;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;Leyo$d;)V
    .locals 2
    .param p0, "confGetModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "callbacks":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;>;"
    if-nez p0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    .line 306
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;
    if-eqz v0, :cond_0

    .line 307
    new-instance v1, Leyf$2;

    invoke-direct {v1, p1}, Leyf$2;-><init>(Leyo$d;)V

    invoke-interface {v0, p0, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;->pullVideoConferenceInfo(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;Liyv;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;Leyo$d;)V
    .locals 2
    .param p0, "pullModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "callback":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;>;"
    if-nez p0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    .line 130
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;
    if-eqz v0, :cond_0

    .line 131
    new-instance v1, Leyf$7;

    invoke-direct {v1, p1}, Leyf$7;-><init>(Leyo$d;)V

    invoke-interface {v0, p0, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;->pullConferenceList(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;Liyv;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;Leyo$d;)V
    .locals 2
    .param p0, "statusModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceOperationResultModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "callback":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceOperationResultModel;>;"
    if-nez p0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    .line 72
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;
    if-eqz v0, :cond_0

    .line 73
    new-instance v1, Leyf$5;

    invoke-direct {v1, p1}, Leyf$5;-><init>(Leyo$d;)V

    invoke-interface {v0, p0, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;->statusIndication(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;Liyv;)V

    goto :goto_0
.end method
