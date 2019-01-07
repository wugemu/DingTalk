.class public abstract Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;
.super Lckb;
.source "FaceBoxInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static b()Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lgso$a;)Lgso;
.end method

.method public a()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)V
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
.end method

.method public abstract a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;Lgrt;)V
.end method

.method public abstract a(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;ILcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
