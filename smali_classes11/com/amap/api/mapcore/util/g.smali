.class public Lcom/amap/api/mapcore/util/g;
.super Ljava/lang/Object;
.source "ConfigableConst.java"


# static fields
.field public static a:F

.field public static b:Ljava/lang/String;

.field public static c:I

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static volatile f:Lcom/amap/api/mapcore/util/fm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 31
    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/amap/api/mapcore/util/g;->a:F

    .line 33
    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/mapcore/util/g;->b:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    sput v0, Lcom/amap/api/mapcore/util/g;->c:I

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AMAP_SDK_Android_Map_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "4.1.3"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/g;->d:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AMAP_SDK_Android_Map_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "4.1.3"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/g;->e:Ljava/lang/String;

    return-void
.end method
