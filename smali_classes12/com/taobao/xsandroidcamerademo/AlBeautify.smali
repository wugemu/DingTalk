.class public Lcom/taobao/xsandroidcamerademo/AlBeautify;
.super Ljava/lang/Object;
.source "AlBeautify.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    :try_start_0
    const-string/jumbo v1, "AliEffectModule"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    const-string/jumbo v1, "AliEffectModuleJni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x0

    sput v1, Lcom/taobao/xsandroidcamerademo/AlBeautify;->a:I

    .line 22
    const/4 v1, 0x1

    sput v1, Lcom/taobao/xsandroidcamerademo/AlBeautify;->b:I

    .line 23
    const/4 v1, 0x2

    sput v1, Lcom/taobao/xsandroidcamerademo/AlBeautify;->c:I

    .line 24
    const/4 v1, 0x3

    sput v1, Lcom/taobao/xsandroidcamerademo/AlBeautify;->d:I

    .line 25
    const/4 v1, 0x4

    sput v1, Lcom/taobao/xsandroidcamerademo/AlBeautify;->e:I

    .line 26
    const/4 v1, 0x5

    sput v1, Lcom/taobao/xsandroidcamerademo/AlBeautify;->f:I

    return-void

    .line 16
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 17
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AddEffect(I)I
.end method

.method public static native DeinitEffectModule()I
.end method

.method public static native InitEffectModule()I
.end method

.method public static native OneFrameProcess_NoFaceRelated_RawIn_RawOut(Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;ZZZ)I
.end method

.method public static native OneFrameProcess_NoFaceRelated_RawIn_TexOut(Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;ZZZ)I
.end method

.method public static native OneFrameProcess_NoFaceRelated_TexIn_FboOut(Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;ZZZ)I
.end method

.method public static native OneFrameProcess_NoFaceRelated_TexIn_RawOut(Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;ZZZ)I
.end method

.method public static native OneFrameProcess_NoFaceRelated_TexIn_TexOut(Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;ZZZ)I
.end method

.method public static native RemoveEffect(I)I
.end method

.method public static native SetParamsForFaceBeauty(FFFFFFFFF)I
.end method

.method public static a()I
    .locals 9

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    const v4, 0x3e99999a    # 0.3f

    .line 29
    const/high16 v2, 0x3fc00000    # 1.5f

    const v3, 0x3e19999a    # 0.15f

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v1, v0

    move v7, v4

    invoke-static/range {v0 .. v8}, Lcom/taobao/xsandroidcamerademo/AlBeautify;->SetParamsForFaceBeauty(FFFFFFFFF)I

    move-result v0

    return v0
.end method

.method public static native testString()Ljava/lang/String;
.end method
