.class public Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;
.super Ljava/lang/Object;
.source "FaceDetectPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$c;,
        Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;,
        Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$a;,
        Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Lgrz;

.field public c:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgsa;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public i:Landroid/view/OrientationEventListener;

.field public j:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$a;

.field public k:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$c;

.field l:Lgrt;

.field private volatile m:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:J

.field private s:J

.field private t:Landroid/content/Context;

.field private u:Lgso$a;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "groupId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->idle:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->m:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    .line 86
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->g:Z

    .line 91
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->q:I

    .line 93
    iput-wide v2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->r:J

    .line 95
    iput-wide v2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->s:J

    .line 97
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->h:I

    .line 294
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;-><init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->u:Lgso$a;

    .line 408
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;-><init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->l:Lgrt;

    .line 165
    const-string/jumbo v0, "facebox"

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a:Ljava/lang/String;

    const-string/jumbo v2, "[Face] FaceDetectPresenter init"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->t:Landroid/content/Context;

    .line 167
    new-instance v0, Lgrz;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->u:Lgso$a;

    invoke-direct {v0, p1, v1}, Lgrz;-><init>(Landroid/content/Context;Lgso$a;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->b:Lgrz;

    .line 168
    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->o:Ljava/lang/String;

    .line 169
    iput-object p3, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->n:Ljava/lang/String;

    .line 170
    iput-object p4, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->p:Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$1;-><init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->i:Landroid/view/OrientationEventListener;

    .line 199
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->h:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->s:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->m:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->k:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$c;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    .prologue
    const/16 v4, 0x46

    const v5, 0x3f19999a    # 0.6f

    .line 37
    .line 1372
    const-string/jumbo v0, "facebox"

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a:Ljava/lang/String;

    const-string/jumbo v2, "[Face] recognizeFace ...."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->g:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->f:I

    if-lez v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->m:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->tracked:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->l:Lgrt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1375
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->d:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->f:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgsa;

    .line 1376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->r:J

    .line 1378
    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->recognitioning:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->m:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    .line 1379
    new-instance v1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;-><init>()V

    .line 1380
    iget-boolean v2, v0, Lgsa;->c:Z

    if-eqz v2, :cond_0

    .line 1381
    const-string/jumbo v2, "smile"

    iput-object v2, v1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->faceAttributes:Ljava/lang/String;

    .line 1383
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->o:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->corpId:Ljava/lang/String;

    .line 1384
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->n:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->userId:Ljava/lang/String;

    .line 1385
    const-string/jumbo v2, "1"

    iput-object v2, v1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->source:Ljava/lang/String;

    .line 1386
    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->e:I

    iput v2, v1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->faceReqNum:I

    .line 1387
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->p:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->groupUid:Ljava/lang/String;

    .line 1388
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->deviceUid:Ljava/lang/String;

    .line 1389
    iget-boolean v2, v0, Lgsa;->a:Z

    iput-boolean v2, v1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->recognizeFace:Z

    .line 1390
    iget-boolean v0, v0, Lgsa;->b:Z

    iput-boolean v0, v1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;->recognizeLive:Z

    .line 1391
    invoke-static {}, Lgtd;->a()Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;

    move-result-object v0

    .line 1392
    iput v4, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->faceQuality:I

    .line 1393
    iput v4, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->quality:I

    .line 1394
    const/16 v2, 0x96

    iput v2, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->maxImageWidth:I

    .line 1395
    new-instance v2, Landroid/graphics/RectF;

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v5, v3, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, v0, Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;->extendFaceSize:Landroid/graphics/RectF;

    .line 1396
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->c:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    if-eqz v2, :cond_1

    .line 1397
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->c:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    invoke-interface {v2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;->b()V

    .line 1399
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->b()Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->l:Lgrt;

    invoke-virtual {v2, v1, p1, v0, v3}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;Lgrt;)V

    .line 37
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->m:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;I)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 37
    .line 2339
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->q:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 2340
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->q:I

    .line 2341
    const-string/jumbo v0, ""

    .line 2343
    packed-switch p1, :pswitch_data_0

    .line 2361
    :goto_0
    const-string/jumbo v1, "facebox"

    sget-object v2, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[Face] notifyDetectFaceFail call onDetectFail checkResult = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$a;

    if-eqz v1, :cond_0

    .line 2363
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$a;

    invoke-interface {v1, v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$a;->a(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void

    .line 2346
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->t:Landroid/content/Context;

    sget v1, Lgrv$f;->dt_facebox_face_recognition_default_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2349
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->t:Landroid/content/Context;

    sget v1, Lgrv$f;->dt_facebox_error_face_uneven:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2352
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->t:Landroid/content/Context;

    sget v1, Lgrv$f;->dt_facebox_error_toodark:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2355
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->t:Landroid/content/Context;

    sget v1, Lgrv$f;->dt_facebox_error_tooclose:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2358
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->t:Landroid/content/Context;

    sget v1, Lgrv$f;->dt_facebox_error_toofar:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->e:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .prologue
    .line 37
    .line 1330
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->f:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->l:Lgrt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 37
    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->f:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$a;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .prologue
    .line 37
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->f:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->s:J

    return-wide v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->r:J

    return-wide v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .prologue
    .line 37
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->f:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->g:Z

    return v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->c:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .prologue
    .line 37
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->e:I

    return v0
.end method

.method static synthetic m(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->t:Landroid/content/Context;

    return-object v0
.end method
