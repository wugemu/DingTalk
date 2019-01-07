.class public Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ERROR_ANDROID_VERSION_HIGH:I = 0x5

.field public static final ERROR_ANDROID_VERSION_LOW:I = 0x6

.field public static final ERROR_GO_PASSWORD_PAGE:I = 0x7

.field public static final ERROR_INSPECT_NO_FRONT_CAMERA:I = 0x2

.field public static final ERROR_INSPECT_NO_PERMISSION_OF_CAMERA:I = 0x1

.field public static final ERROR_INSPECT_NO_SUITABLE_RATIO:I = 0x3

.field public static final ERROR_INSPECT_UNSURPPORT_CPU:I = 0x4

.field public static final RESULT_ALG_SDK_ERROR:I = 0x98

.field public static final RESULT_CAMERA_INIT_ERROR:I = 0x65

.field public static final RESULT_CAMERA_NO_SUITABLE_PIXEL:I = 0x99

.field public static final RESULT_CAMERA_PERMISSION_DENIED:I = 0x66

.field public static final RESULT_DEVICE_UNSUPPORT:I = 0x67

.field public static final RESULT_GOTO_SETTING:I = 0x69

.field public static final RESULT_INTERUPT:I = 0x64

.field public static final RESULT_MINE_TOO_MUCH:I = 0xa1

.field public static final RESULT_NO_FACE:I = 0xa0

.field public static final RESULT_NO_QUALITY_IMAGE:I = 0x9e

.field public static final RESULT_OS_VERSION_HIGH:I = 0x9b

.field public static final RESULT_OS_VERSION_LOW:I = 0x9c

.field public static final RESULT_RETRY_TOO_MUCH:I = 0xa2

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_TIMEOUT:I = 0x96

.field public static final RESULT_UNKNOWN_ERROR:I = 0xc8

.field public static final RESULT_UNSURPPORT_CPU:I = 0x9a

.field public static final RESULT_UPLOAD_ERROR:I = 0x97

.field public static final RESULT_USER_EXIT:I = 0x9f

.field public static final RESULT_USER_NOT_RETRY:I = 0xa3

.field public static final RESULT_USER_SELECT_OTHER:I = 0x9d

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected aid:Ljava/lang/String;

.field protected as:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;",
            ">;"
        }
    .end annotation
.end field

.field protected bt:J

.field protected did:Ljava/lang/String;

.field protected et:J

.field protected ex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected isid:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected os:Ljava/lang/String;

.field protected qi:Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

.field protected r:I

.field protected rt:I

.field protected sid:Ljava/lang/String;

.field protected uid:Ljava/lang/String;

.field protected v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->r:I

    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->v:Ljava/lang/String;

    iput v1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->rt:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->as:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addActionResult(Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->as:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->aid:Ljava/lang/String;

    return-object v0
.end method

.method public getAs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->as:Ljava/util/List;

    return-object v0
.end method

.method public getBt()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-wide v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->bt:J

    return-wide v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->did:Ljava/lang/String;

    return-object v0
.end method

.method public getEt()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-wide v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->et:J

    return-wide v0
.end method

.method public getEx()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->ex:Ljava/util/HashMap;

    return-object v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->qi:Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    return-object v0
.end method

.method public getR()I
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->r:I

    return v0
.end method

.method public getRt()I
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->rt:I

    return v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->v:Ljava/lang/String;

    return-object v0
.end method

.method public increaseRetryTime()V
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->rt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->rt:I

    return-void
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->aid:Ljava/lang/String;

    return-void
.end method

.method public setAs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->as:Ljava/util/List;

    return-void
.end method

.method public setBt(J)V
    .locals 1

    iput-wide p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->bt:J

    return-void
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->did:Ljava/lang/String;

    return-void
.end method

.method public setEt(J)V
    .locals 1

    iput-wide p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->et:J

    return-void
.end method

.method public setEx(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->ex:Ljava/util/HashMap;

    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->k:Ljava/lang/String;

    return-void
.end method

.method public setM(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->m:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->os:Ljava/lang/String;

    return-void
.end method

.method public setQi(Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->qi:Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    return-void
.end method

.method public setR(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->r:I

    return-void
.end method

.method public setRt(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->rt:I

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->sid:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->uid:Ljava/lang/String;

    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->v:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HHmmss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LivenessResult [result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "(0:success,100:interupt,150:timeout,101:camera_init_fail,102:camera_no_permission,103:device_not_support,105:goto_setting, 200:unknown_error,153:pixel_not_suit,154:cpu_not_suit,155:os_too_high,156:os_too_low,157:user_choose_other,158:no_quality_image,159:user_exit),\n version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", retryTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->rt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " begintime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->bt:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", endtime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->et:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",\n appID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->aid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", deviceid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->did:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", userid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", sceneid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->sid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",\n qualityimage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->qi:Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",\n encryptKey="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",\n os="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->os:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", model="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ",\n actions=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->as:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->as:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    const-string/jumbo v2, "\n          "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->as:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n          ],\n extensions="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->ex:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
