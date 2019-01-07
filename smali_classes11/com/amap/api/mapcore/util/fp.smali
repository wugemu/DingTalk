.class public Lcom/amap/api/mapcore/util/fp;
.super Ljava/lang/Object;
.source "ConstConfig.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "9aj&#k81"

    sput-object v0, Lcom/amap/api/mapcore/util/fp;->a:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "http://logs.amap.com/ws/log/upload?product=%s&type=%s&platform=%s&channel=%s&sign=%s"

    sput-object v0, Lcom/amap/api/mapcore/util/fp;->b:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "9aj&#k81"

    sput-object v0, Lcom/amap/api/mapcore/util/fp;->a:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "http://logs.amap.com/ws/log/upload?product=%s&type=%s&platform=%s&channel=%s&sign=%s"

    sput-object v0, Lcom/amap/api/mapcore/util/fp;->b:Ljava/lang/String;

    .line 87
    return-void
.end method
