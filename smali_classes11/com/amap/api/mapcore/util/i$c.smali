.class public final enum Lcom/amap/api/mapcore/util/i$c;
.super Ljava/lang/Enum;
.source "GLMapResManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/mapcore/util/i$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/mapcore/util/i$c;

.field public static final enum b:Lcom/amap/api/mapcore/util/i$c;

.field private static final synthetic c:[Lcom/amap/api/mapcore/util/i$c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/amap/api/mapcore/util/i$c;

    const-string/jumbo v1, "DAY"

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/i$c;->a:Lcom/amap/api/mapcore/util/i$c;

    .line 28
    new-instance v0, Lcom/amap/api/mapcore/util/i$c;

    const-string/jumbo v1, "NIGHT"

    invoke-direct {v0, v1, v3}, Lcom/amap/api/mapcore/util/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/util/i$c;->b:Lcom/amap/api/mapcore/util/i$c;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amap/api/mapcore/util/i$c;

    sget-object v1, Lcom/amap/api/mapcore/util/i$c;->a:Lcom/amap/api/mapcore/util/i$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/api/mapcore/util/i$c;->b:Lcom/amap/api/mapcore/util/i$c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amap/api/mapcore/util/i$c;->c:[Lcom/amap/api/mapcore/util/i$c;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/mapcore/util/i$c;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/amap/api/mapcore/util/i$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/i$c;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/mapcore/util/i$c;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/amap/api/mapcore/util/i$c;->c:[Lcom/amap/api/mapcore/util/i$c;

    invoke-virtual {v0}, [Lcom/amap/api/mapcore/util/i$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/mapcore/util/i$c;

    return-object v0
.end method
