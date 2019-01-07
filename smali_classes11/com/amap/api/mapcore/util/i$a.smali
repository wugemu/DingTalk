.class public final enum Lcom/amap/api/mapcore/util/i$a;
.super Ljava/lang/Enum;
.source "GLMapResManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/mapcore/util/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/mapcore/util/i$a;

.field public static final enum b:Lcom/amap/api/mapcore/util/i$a;

.field public static final enum c:Lcom/amap/api/mapcore/util/i$a;

.field private static final synthetic d:[Lcom/amap/api/mapcore/util/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/amap/api/mapcore/util/i$a;

    const-string/jumbo v1, "NORAML"

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/i$a;->a:Lcom/amap/api/mapcore/util/i$a;

    .line 21
    new-instance v0, Lcom/amap/api/mapcore/util/i$a;

    const-string/jumbo v1, "SATELLITE"

    invoke-direct {v0, v1, v3}, Lcom/amap/api/mapcore/util/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/i$a;->b:Lcom/amap/api/mapcore/util/i$a;

    .line 22
    new-instance v0, Lcom/amap/api/mapcore/util/i$a;

    const-string/jumbo v1, "BUS"

    invoke-direct {v0, v1, v4}, Lcom/amap/api/mapcore/util/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/i$a;->c:Lcom/amap/api/mapcore/util/i$a;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amap/api/mapcore/util/i$a;

    sget-object v1, Lcom/amap/api/mapcore/util/i$a;->a:Lcom/amap/api/mapcore/util/i$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/api/mapcore/util/i$a;->b:Lcom/amap/api/mapcore/util/i$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/api/mapcore/util/i$a;->c:Lcom/amap/api/mapcore/util/i$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amap/api/mapcore/util/i$a;->d:[Lcom/amap/api/mapcore/util/i$a;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/mapcore/util/i$a;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/amap/api/mapcore/util/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/i$a;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/mapcore/util/i$a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/amap/api/mapcore/util/i$a;->d:[Lcom/amap/api/mapcore/util/i$a;

    invoke-virtual {v0}, [Lcom/amap/api/mapcore/util/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/mapcore/util/i$a;

    return-object v0
.end method
