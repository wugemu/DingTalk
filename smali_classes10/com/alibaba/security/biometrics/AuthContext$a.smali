.class public final enum Lcom/alibaba/security/biometrics/AuthContext$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/security/biometrics/AuthContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/security/biometrics/AuthContext$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/security/biometrics/AuthContext$a;

.field public static final enum CANCELED:Lcom/alibaba/security/biometrics/AuthContext$a;

.field public static final enum INITED:Lcom/alibaba/security/biometrics/AuthContext$a;

.field public static final enum PROCESSING:Lcom/alibaba/security/biometrics/AuthContext$a;

.field public static final enum PROCESS_END:Lcom/alibaba/security/biometrics/AuthContext$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/security/biometrics/AuthContext$a;

    const-string/jumbo v1, "INITED"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/security/biometrics/AuthContext$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/security/biometrics/AuthContext$a;->INITED:Lcom/alibaba/security/biometrics/AuthContext$a;

    new-instance v0, Lcom/alibaba/security/biometrics/AuthContext$a;

    const-string/jumbo v1, "PROCESSING"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/security/biometrics/AuthContext$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/security/biometrics/AuthContext$a;->PROCESSING:Lcom/alibaba/security/biometrics/AuthContext$a;

    new-instance v0, Lcom/alibaba/security/biometrics/AuthContext$a;

    const-string/jumbo v1, "CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/security/biometrics/AuthContext$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/security/biometrics/AuthContext$a;->CANCELED:Lcom/alibaba/security/biometrics/AuthContext$a;

    new-instance v0, Lcom/alibaba/security/biometrics/AuthContext$a;

    const-string/jumbo v1, "PROCESS_END"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/security/biometrics/AuthContext$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/security/biometrics/AuthContext$a;->PROCESS_END:Lcom/alibaba/security/biometrics/AuthContext$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/security/biometrics/AuthContext$a;

    sget-object v1, Lcom/alibaba/security/biometrics/AuthContext$a;->INITED:Lcom/alibaba/security/biometrics/AuthContext$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/security/biometrics/AuthContext$a;->PROCESSING:Lcom/alibaba/security/biometrics/AuthContext$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/security/biometrics/AuthContext$a;->CANCELED:Lcom/alibaba/security/biometrics/AuthContext$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/security/biometrics/AuthContext$a;->PROCESS_END:Lcom/alibaba/security/biometrics/AuthContext$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/security/biometrics/AuthContext$a;->$VALUES:[Lcom/alibaba/security/biometrics/AuthContext$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/security/biometrics/AuthContext$a;
    .locals 1

    const-class v0, Lcom/alibaba/security/biometrics/AuthContext$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/AuthContext$a;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/security/biometrics/AuthContext$a;
    .locals 1

    sget-object v0, Lcom/alibaba/security/biometrics/AuthContext$a;->$VALUES:[Lcom/alibaba/security/biometrics/AuthContext$a;

    invoke-virtual {v0}, [Lcom/alibaba/security/biometrics/AuthContext$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/security/biometrics/AuthContext$a;

    return-object v0
.end method
