.class public final enum Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;
.super Ljava/lang/Enum;
.source "BioSysBehaviorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

.field public static final enum API:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

.field public static final enum CLICK:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

.field public static final enum EVENT:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

.field public static final enum METHOD:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

.field public static final enum NET:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    const-string/jumbo v1, "API"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;->API:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    const-string/jumbo v1, "NET"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;->NET:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    const-string/jumbo v1, "CLICK"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;->CLICK:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    const-string/jumbo v1, "EVENT"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;->EVENT:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    const-string/jumbo v1, "METHOD"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;->METHOD:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    .line 4
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    sget-object v1, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;->API:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;->NET:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;->CLICK:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;->EVENT:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;->METHOD:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;->$VALUES:[Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;->$VALUES:[Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    return-object v0
.end method
