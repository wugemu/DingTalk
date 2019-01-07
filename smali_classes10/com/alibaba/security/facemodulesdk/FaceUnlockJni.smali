.class public Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;
.super Ljava/lang/Object;
.source "FaceUnlockJni.java"


# static fields
.field public static a:Z

.field public static b:I

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->a:Z

    .line 29
    :try_start_0
    invoke-static {}, Lhzf;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    const-string/jumbo v1, "FaceUnlock"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    const/16 v1, 0x61

    sput v1, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->b:I

    .line 55
    const/16 v1, 0x2c

    sput v1, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->c:I

    return-void

    .line 34
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 35
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native CalculateSimilarityScore([F[FI[F)I
.end method

.method public static native DetectFaceAndSmileFromImage([BIII[I[F[F)I
.end method

.method public static native DoFaceRegister([B[I[F)I
.end method

.method public static native DoFaceVerification([B[I[F[F)I
.end method

.method public static native ExtractFaceFeatureFromImage([BIII[I[F)I
.end method

.method public static native GetVersion()I
.end method

.method public static native Init(IIZILjava/lang/String;)I
.end method

.method public static native IsEnabled()Z
.end method

.method public static native Release()V
.end method

.method public static native SetRegisteredTemplate([F)I
.end method

.method public static native TrackFaceAndSmileWithCamera([B[I[F[F)I
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-boolean v0, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lhzf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0}, Lhzf;->a(Landroid/content/Context;)Lhzf;

    move-result-object v0

    const-string/jumbo v1, "FaceUnlock_x86"

    invoke-virtual {v0, v1}, Lhzf;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->a:Z

    .line 46
    :cond_0
    sget-boolean v0, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->a:Z

    if-nez v0, :cond_1

    .line 47
    invoke-static {p0}, Lhzf;->a(Landroid/content/Context;)Lhzf;

    move-result-object v0

    const-string/jumbo v1, "FaceUnlock"

    invoke-virtual {v0, v1}, Lhzf;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->a:Z

    .line 50
    :cond_1
    sget-boolean v0, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->a:Z

    return v0
.end method
