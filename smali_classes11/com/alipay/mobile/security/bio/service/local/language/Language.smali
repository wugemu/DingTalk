.class public final enum Lcom/alipay/mobile/security/bio/service/local/language/Language;
.super Ljava/lang/Enum;
.source "Language.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/bio/service/local/language/Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/bio/service/local/language/Language;

.field public static final enum EN:Lcom/alipay/mobile/security/bio/service/local/language/Language;

.field public static final enum UNKNOWN:Lcom/alipay/mobile/security/bio/service/local/language/Language;

.field public static final enum ZH_HANS:Lcom/alipay/mobile/security/bio/service/local/language/Language;

.field public static final enum ZH_HANT:Lcom/alipay/mobile/security/bio/service/local/language/Language;

.field public static final enum ZH_HK:Lcom/alipay/mobile/security/bio/service/local/language/Language;


# instance fields
.field name:Ljava/lang/String;

.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/alipay/mobile/security/bio/service/local/language/Language;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, "en"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/alipay/mobile/security/bio/service/local/language/Language;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/service/local/language/Language;->UNKNOWN:Lcom/alipay/mobile/security/bio/service/local/language/Language;

    .line 10
    new-instance v0, Lcom/alipay/mobile/security/bio/service/local/language/Language;

    const-string/jumbo v1, "ZH_HANS"

    const-string/jumbo v2, "zh-Hans"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/alipay/mobile/security/bio/service/local/language/Language;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/service/local/language/Language;->ZH_HANS:Lcom/alipay/mobile/security/bio/service/local/language/Language;

    .line 12
    new-instance v0, Lcom/alipay/mobile/security/bio/service/local/language/Language;

    const-string/jumbo v1, "ZH_HANT"

    const-string/jumbo v2, "zh-Hant"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/alipay/mobile/security/bio/service/local/language/Language;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/service/local/language/Language;->ZH_HANT:Lcom/alipay/mobile/security/bio/service/local/language/Language;

    .line 14
    new-instance v0, Lcom/alipay/mobile/security/bio/service/local/language/Language;

    const-string/jumbo v1, "ZH_HK"

    const-string/jumbo v2, "zh-HK"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/alipay/mobile/security/bio/service/local/language/Language;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/service/local/language/Language;->ZH_HK:Lcom/alipay/mobile/security/bio/service/local/language/Language;

    .line 16
    new-instance v0, Lcom/alipay/mobile/security/bio/service/local/language/Language;

    const-string/jumbo v1, "EN"

    const-string/jumbo v2, "en"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/alipay/mobile/security/bio/service/local/language/Language;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/service/local/language/Language;->EN:Lcom/alipay/mobile/security/bio/service/local/language/Language;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/security/bio/service/local/language/Language;

    sget-object v1, Lcom/alipay/mobile/security/bio/service/local/language/Language;->UNKNOWN:Lcom/alipay/mobile/security/bio/service/local/language/Language;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/security/bio/service/local/language/Language;->ZH_HANS:Lcom/alipay/mobile/security/bio/service/local/language/Language;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/security/bio/service/local/language/Language;->ZH_HANT:Lcom/alipay/mobile/security/bio/service/local/language/Language;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/security/bio/service/local/language/Language;->ZH_HK:Lcom/alipay/mobile/security/bio/service/local/language/Language;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/security/bio/service/local/language/Language;->EN:Lcom/alipay/mobile/security/bio/service/local/language/Language;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alipay/mobile/security/bio/service/local/language/Language;->$VALUES:[Lcom/alipay/mobile/security/bio/service/local/language/Language;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "v"    # I
    .param p4, "n"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/alipay/mobile/security/bio/service/local/language/Language;->value:I

    .line 24
    iput-object p4, p0, Lcom/alipay/mobile/security/bio/service/local/language/Language;->name:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/bio/service/local/language/Language;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/alipay/mobile/security/bio/service/local/language/Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/local/language/Language;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/bio/service/local/language/Language;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alipay/mobile/security/bio/service/local/language/Language;->$VALUES:[Lcom/alipay/mobile/security/bio/service/local/language/Language;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/bio/service/local/language/Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/bio/service/local/language/Language;

    return-object v0
.end method
