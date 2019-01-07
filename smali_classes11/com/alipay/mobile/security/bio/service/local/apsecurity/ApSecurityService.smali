.class public abstract Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;
.super Lcom/alipay/mobile/security/bio/service/local/LocalService;
.source "ApSecurityService.java"


# static fields
.field protected static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/local/LocalService;-><init>()V

    return-void
.end method

.method public static getStaticApDidToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract getApDidToken()Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method
