.class public final enum Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;
.super Ljava/lang/Enum;
.source "BQCScanError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/bqcscanservice/BQCScanError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

.field public static final enum CameraOpenError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

.field public static final enum CameraPreviewError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

.field public static final enum NoError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

.field public static final enum ScanTypeNotSupport:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

.field public static final enum initEngineError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    const-string/jumbo v1, "NoError"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->NoError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    .line 12
    new-instance v0, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    const-string/jumbo v1, "initEngineError"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->initEngineError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    .line 18
    new-instance v0, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    const-string/jumbo v1, "CameraOpenError"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->CameraOpenError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    .line 23
    new-instance v0, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    const-string/jumbo v1, "CameraPreviewError"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->CameraPreviewError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    .line 28
    new-instance v0, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    const-string/jumbo v1, "ScanTypeNotSupport"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->ScanTypeNotSupport:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    sget-object v1, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->NoError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->initEngineError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->CameraOpenError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->CameraPreviewError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->ScanTypeNotSupport:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->$VALUES:[Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->$VALUES:[Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    return-object v0
.end method
