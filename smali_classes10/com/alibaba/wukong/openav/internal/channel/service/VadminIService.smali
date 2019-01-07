.class public interface abstract Lcom/alibaba/wukong/openav/internal/channel/service/VadminIService;
.super Ljava/lang/Object;
.source "VadminIService.java"

# interfaces
.implements Lizm;


# virtual methods
.method public abstract getAudioBulkDeley(Lcom/alibaba/wukong/openav/internal/channel/model/AudioBulkDelayModel;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/common/NoRetry;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/openav/internal/channel/model/AudioBulkDelayModel;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getRoute(Lcom/alibaba/wukong/openav/internal/channel/model/RouteModel;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/common/NoRetry;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/openav/internal/channel/model/RouteModel;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserConfig(Lcom/alibaba/wukong/openav/internal/channel/model/UserConfModel;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/common/NoRetry;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/openav/internal/channel/model/UserConfModel;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
