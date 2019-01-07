.class public final enum Lcom/alibaba/security/biometrics/AuthContext$AuthType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/security/biometrics/AuthContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/security/biometrics/AuthContext$AuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/security/biometrics/AuthContext$AuthType;

.field public static final enum BIO_FACE:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

.field public static final enum BIO_FINGERPRINT:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

.field public static final enum UNKNOWN:Lcom/alibaba/security/biometrics/AuthContext$AuthType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    const-string/jumbo v1, "BIO_FACE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/security/biometrics/AuthContext$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->BIO_FACE:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    new-instance v0, Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    const-string/jumbo v1, "BIO_FINGERPRINT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/security/biometrics/AuthContext$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->BIO_FINGERPRINT:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    new-instance v0, Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/security/biometrics/AuthContext$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->UNKNOWN:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    sget-object v1, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->BIO_FACE:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->BIO_FINGERPRINT:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->UNKNOWN:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->$VALUES:[Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/security/biometrics/AuthContext$AuthType;
    .locals 1

    const-class v0, Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/security/biometrics/AuthContext$AuthType;
    .locals 1

    sget-object v0, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->$VALUES:[Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    invoke-virtual {v0}, [Lcom/alibaba/security/biometrics/AuthContext$AuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    return-object v0
.end method
