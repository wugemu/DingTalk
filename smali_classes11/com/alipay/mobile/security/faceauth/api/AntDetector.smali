.class public interface abstract Lcom/alipay/mobile/security/faceauth/api/AntDetector;
.super Ljava/lang/Object;
.source "AntDetector.java"


# static fields
.field public static final ACTION_ID_LOGIN:I = 0x10001

.field public static final ACTION_ID_SAMPLE:I = 0x10000

.field public static final ACTION_ID_TRY_LOGIN:I = 0x10002

.field public static final APP_ID_ALIPAY:I = 0x1

.field public static final APP_ID_BANK:I = 0x0

.field public static final APP_ID_OTHER:I = 0x3

.field public static final APP_ID_PRAISE:I = 0x2

.field public static final COMMAND_CANCLE:I = 0x1003

.field public static final COMMAND_VALIDATE_FAIL:I = 0x1004

.field public static final EXT_KEY_AB_TEST:Ljava/lang/String; = "abTest"

.field public static final EXT_KEY_APDID:Ljava/lang/String; = "APDID"

.field public static final EXT_KEY_APPID:Ljava/lang/String; = "appid"

.field public static final EXT_KEY_SCENEID:Ljava/lang/String; = "SCENE_ID"

.field public static final EXT_KEY_UID:Ljava/lang/String; = "userid"

.field public static final EXT_KEY_USER_NAME_HIDDEN:Ljava/lang/String; = "userNameHidden"

.field public static final EXT_KEY_VTOKENID:Ljava/lang/String; = "TOKEN_ID"

.field public static final SCENE_ID_LOGIN_REGIST:I = 0x20000


# virtual methods
.method public abstract auth(Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;)V
.end method

.method public abstract cancle()V
.end method

.method public abstract checkEnvironment(Landroid/content/Context;)I
.end method

.method public abstract command(I)V
.end method

.method public abstract destroy()V
.end method

.method public abstract doCloseFaceService()V
.end method

.method public abstract doFaceQualityDetection(Landroid/graphics/Bitmap;)Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
.end method

.method public abstract doFaceQualityDetection(Lcom/alipay/mobile/security/faceauth/api/YUVFrame;Lcom/alipay/mobile/security/faceauth/api/FaceCallback;)Lcom/alipay/mobile/security/faceauth/api/RESULT;
.end method

.method public abstract doInitFaceService()Lcom/alipay/mobile/security/faceauth/api/RESULT;
.end method

.method public abstract login(Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;)V
.end method

.method public abstract sample(Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;)V
.end method
