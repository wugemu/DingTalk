.class public Lcom/alipay/mobile/security/senative/APSE;
.super Ljava/lang/Object;
.source "APSE.java"


# static fields
.field private static final a:[I

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/alipay/mobile/security/senative/APSE;->a:[I

    .line 187
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/mobile/security/senative/APSE;->b:Z

    .line 191
    :try_start_0
    const-string/jumbo v1, "APSE_1.0.6"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 192
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/security/senative/APSE;->b:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "ex":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v0    # "ex":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 196
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 17
    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native delete(Ljava/lang/Object;Ljava/lang/String;I)I
.end method

.method public native encrypt(Ljava/lang/Object;[B)[B
.end method

.method public native encryptAndSign(Ljava/lang/Object;[B)[B
.end method

.method public native encryptAndSignRds(Ljava/lang/Object;[B)[B
.end method

.method public native getErrorCode()Ljava/lang/String;
.end method

.method public native getVersion()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native init(Ljava/lang/Object;)I
.end method

.method public native load(Ljava/lang/Object;Ljava/lang/String;I)[B
.end method

.method public native nativeHOTP(Ljava/lang/Object;[BJI)Ljava/lang/String;
.end method

.method public native store(Ljava/lang/Object;Ljava/lang/String;[BI)I
.end method

.method public native zipEncryptAndSignRds(Ljava/lang/Object;[B)[B
.end method
