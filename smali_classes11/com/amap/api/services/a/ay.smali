.class public Lcom/amap/api/services/a/ay;
.super Ljava/lang/Object;
.source "AuthManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, -0x1

    sput v0, Lcom/amap/api/services/a/ay;->a:I

    .line 22
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/services/a/ay;->b:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "http://apiinit.amap.com/v3/log/init"

    sput-object v0, Lcom/amap/api/services/a/ay;->c:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/services/a/ay;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/String;)V

    .line 98
    return-void
.end method
