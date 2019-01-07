.class public final enum Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;
.super Ljava/lang/Enum;
.source "HydroCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

.field public static final enum DEFAULT:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

.field public static final enum NO_STORE:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

.field public static final enum REVALIDATE:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 318
    new-instance v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    const-string/jumbo v1, "NO_STORE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->NO_STORE:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    .line 319
    new-instance v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    const-string/jumbo v1, "REVALIDATE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->REVALIDATE:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    .line 320
    new-instance v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->DEFAULT:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    .line 317
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    sget-object v1, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->NO_STORE:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->REVALIDATE:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->DEFAULT:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->$VALUES:[Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

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
    .line 317
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 317
    const-class v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->$VALUES:[Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    return-object v0
.end method
