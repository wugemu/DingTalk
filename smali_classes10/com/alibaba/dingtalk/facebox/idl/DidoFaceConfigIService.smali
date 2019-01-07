.class public interface abstract Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;
.super Ljava/lang/Object;
.source "DidoFaceConfigIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getCurrentUserFace(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getRecognitionModel(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hasUserFace(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerUserFace(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeUserFace(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRecognitionModel(Ljava/lang/String;ILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract validUserFace(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract validUserFaceV2(Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;",
            ">;)V"
        }
    .end annotation
.end method
