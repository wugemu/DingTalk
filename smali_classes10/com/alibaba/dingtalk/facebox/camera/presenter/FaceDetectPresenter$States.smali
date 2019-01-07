.class public final enum Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;
.super Ljava/lang/Enum;
.source "FaceDetectPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "States"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

.field public static final enum error:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

.field public static final enum idle:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

.field public static final enum recognitioned:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

.field public static final enum recognitioning:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

.field public static final enum tracked:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    const-string/jumbo v1, "idle"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->idle:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    const-string/jumbo v1, "tracked"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->tracked:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    const-string/jumbo v1, "recognitioning"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->recognitioning:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    const-string/jumbo v1, "recognitioned"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->recognitioned:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    const-string/jumbo v1, "error"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->error:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->idle:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->tracked:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->recognitioning:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->recognitioned:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->error:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->$VALUES:[Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->$VALUES:[Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    invoke-virtual {v0}, [Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    return-object v0
.end method
