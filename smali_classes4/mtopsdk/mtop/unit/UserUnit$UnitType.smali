.class public final enum Lmtopsdk/mtop/unit/UserUnit$UnitType;
.super Ljava/lang/Enum;
.source "UserUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/mtop/unit/UserUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmtopsdk/mtop/unit/UserUnit$UnitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/mtop/unit/UserUnit$UnitType;

.field public static final enum CENTER:Lmtopsdk/mtop/unit/UserUnit$UnitType;

.field public static final enum UNIT:Lmtopsdk/mtop/unit/UserUnit$UnitType;


# instance fields
.field private unitType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lmtopsdk/mtop/unit/UserUnit$UnitType;

    const-string/jumbo v1, "CENTER"

    const-string/jumbo v2, "center"

    invoke-direct {v0, v1, v3, v2}, Lmtopsdk/mtop/unit/UserUnit$UnitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/unit/UserUnit$UnitType;->CENTER:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    new-instance v0, Lmtopsdk/mtop/unit/UserUnit$UnitType;

    const-string/jumbo v1, "UNIT"

    const-string/jumbo v2, "unit"

    invoke-direct {v0, v1, v4, v2}, Lmtopsdk/mtop/unit/UserUnit$UnitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/unit/UserUnit$UnitType;->UNIT:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lmtopsdk/mtop/unit/UserUnit$UnitType;

    sget-object v1, Lmtopsdk/mtop/unit/UserUnit$UnitType;->CENTER:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    aput-object v1, v0, v3

    sget-object v1, Lmtopsdk/mtop/unit/UserUnit$UnitType;->UNIT:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    aput-object v1, v0, v4

    sput-object v0, Lmtopsdk/mtop/unit/UserUnit$UnitType;->$VALUES:[Lmtopsdk/mtop/unit/UserUnit$UnitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "unitType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lmtopsdk/mtop/unit/UserUnit$UnitType;->unitType:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/mtop/unit/UserUnit$UnitType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/unit/UserUnit$UnitType;

    return-object v0
.end method

.method public static values()[Lmtopsdk/mtop/unit/UserUnit$UnitType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lmtopsdk/mtop/unit/UserUnit$UnitType;->$VALUES:[Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v0}, [Lmtopsdk/mtop/unit/UserUnit$UnitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/mtop/unit/UserUnit$UnitType;

    return-object v0
.end method


# virtual methods
.method public final getUnitType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmtopsdk/mtop/unit/UserUnit$UnitType;->unitType:Ljava/lang/String;

    return-object v0
.end method

.method public final setUnitType(Ljava/lang/String;)V
    .locals 0
    .param p1, "unitType"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lmtopsdk/mtop/unit/UserUnit$UnitType;->unitType:Ljava/lang/String;

    .line 52
    return-void
.end method
