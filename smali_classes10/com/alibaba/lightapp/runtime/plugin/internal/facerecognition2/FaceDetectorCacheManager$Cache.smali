.class public Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;
.super Ljava/lang/Object;
.source "FaceDetectorCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation


# instance fields
.field private mDetectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

.field private mDetectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;)Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;->mDetectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;->mDetectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;)Lcom/alibaba/dingtalk/facebox/model/DetectResult;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;->mDetectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)Lcom/alibaba/dingtalk/facebox/model/DetectResult;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;->mDetectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    return-object p1
.end method
