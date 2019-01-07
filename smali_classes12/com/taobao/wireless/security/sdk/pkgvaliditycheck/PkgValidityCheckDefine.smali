.class public Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/PkgValidityCheckDefine;
.super Ljava/lang/Object;


# static fields
.field public static FLAG_DEX_FILE:I

.field public static FLAG_DEX_MANIFEST:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/PkgValidityCheckDefine;->FLAG_DEX_MANIFEST:I

    const/4 v0, 0x1

    sput v0, Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/PkgValidityCheckDefine;->FLAG_DEX_FILE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
