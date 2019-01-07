.class public interface abstract Lcom/alibaba/wukong/idl/group_invitation/client/GroupInvitationIService;
.super Ljava/lang/Object;
.source "GroupInvitationIService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getTaoInvitationModel(Lcom/alibaba/wukong/idl/group_invitation/models/TaoQueryModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/group_invitation/models/TaoQueryModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/group_invitation/models/InvitationModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getTaoPasswordModel(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/group_invitation/models/TaoPasswordModel;",
            ">;)V"
        }
    .end annotation
.end method
