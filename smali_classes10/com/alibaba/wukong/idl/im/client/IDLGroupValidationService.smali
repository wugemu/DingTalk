.class public interface abstract Lcom/alibaba/wukong/idl/im/client/IDLGroupValidationService;
.super Ljava/lang/Object;
.source "IDLGroupValidationService.java"

# interfaces
.implements Lizl;


# virtual methods
.method public abstract applyJoinGroup(Lcom/alibaba/wukong/idl/im/models/JoinGroupValidationModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/im/models/JoinGroupValidationModel;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract auditJoinGroupStatus(Lcom/alibaba/wukong/idl/im/models/AuditJoinGroupStatusModel;Lcom/alibaba/wukong/idl/im/models/SendMessageModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/im/models/AuditJoinGroupStatusModel;",
            "Lcom/alibaba/wukong/idl/im/models/SendMessageModel;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cleanJoinGroupValidationByOwner(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hasApplyJoinGroupRecently(Lcom/alibaba/wukong/idl/im/models/HasApplyJoinGroupRecentlyModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/im/models/HasApplyJoinGroupRecentlyModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/HasApplyJoinGroupRecentlyResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listJoinGroupValidation(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;",
            ">;>;)V"
        }
    .end annotation
.end method
