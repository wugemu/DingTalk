.class public final enum Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;
.super Ljava/lang/Enum;
.source "RoutePOISearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/routepoisearch/RoutePOISearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoutePOISearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TypeATM:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

.field public static final enum TypeGasStation:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

.field public static final enum TypeMaintenanceStation:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

.field public static final enum TypeToilet:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

.field private static final synthetic a:[Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    const-string/jumbo v1, "TypeGasStation"

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeGasStation:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    .line 82
    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    const-string/jumbo v1, "TypeMaintenanceStation"

    invoke-direct {v0, v1, v3}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeMaintenanceStation:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    .line 83
    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    const-string/jumbo v1, "TypeATM"

    invoke-direct {v0, v1, v4}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeATM:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    .line 84
    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    const-string/jumbo v1, "TypeToilet"

    invoke-direct {v0, v1, v5}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeToilet:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    sget-object v1, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeGasStation:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeMaintenanceStation:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeATM:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeToilet:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->a:[Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->a:[Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    invoke-virtual {v0}, [Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    return-object v0
.end method
