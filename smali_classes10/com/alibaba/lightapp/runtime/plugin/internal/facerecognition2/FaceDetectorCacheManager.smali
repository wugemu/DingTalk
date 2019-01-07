.class public Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;
.super Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$FaceDetectorHandlerWrapper;
.source "FaceDetectorCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;


# instance fields
.field private mCache:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$FaceDetectorHandlerWrapper;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->mCache:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    .line 29
    return-void
.end method

.method protected onHandle(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    const-string/jumbo v0, "action_face_box_face_detected"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string/jumbo v0, "intent_key_face_box_face_detect_result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->save(Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query()Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->mCache:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    return-object v0
.end method

.method public queryDetectObject()Lcom/alibaba/dingtalk/facebox/model/DetectObject;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->mCache:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->mCache:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;)Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    move-result-object v0

    goto :goto_0
.end method

.method public queryDetectResult()Lcom/alibaba/dingtalk/facebox/model/DetectResult;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->mCache:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->mCache:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;)Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    move-result-object v0

    goto :goto_0
.end method

.method public save(Lcom/alibaba/dingtalk/facebox/model/DetectObject;)V
    .locals 1
    .param p1, "detectObject"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->mCache:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->mCache:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->mCache:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;->access$002(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    .line 50
    return-void
.end method

.method public save(Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
    .locals 1
    .param p1, "detectResult"    # Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->mCache:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->mCache:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->mCache:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;->access$102(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager$Cache;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    .line 57
    return-void
.end method
