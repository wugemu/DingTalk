.class public final enum Lcom/google/ical/values/IcalValueType;
.super Ljava/lang/Enum;
.source "IcalValueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ical/values/IcalValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ical/values/IcalValueType;

.field public static final enum BINARY:Lcom/google/ical/values/IcalValueType;

.field public static final enum BOOLEAN:Lcom/google/ical/values/IcalValueType;

.field public static final enum CAL_ADDRESS:Lcom/google/ical/values/IcalValueType;

.field public static final enum DATE:Lcom/google/ical/values/IcalValueType;

.field public static final enum DATE_TIME:Lcom/google/ical/values/IcalValueType;

.field public static final enum DURATION:Lcom/google/ical/values/IcalValueType;

.field public static final enum FLOAT:Lcom/google/ical/values/IcalValueType;

.field public static final enum INTEGER:Lcom/google/ical/values/IcalValueType;

.field public static final enum OTHER:Lcom/google/ical/values/IcalValueType;

.field public static final enum PERIOD:Lcom/google/ical/values/IcalValueType;

.field public static final enum RECUR:Lcom/google/ical/values/IcalValueType;

.field public static final enum TEXT:Lcom/google/ical/values/IcalValueType;

.field public static final enum TIME:Lcom/google/ical/values/IcalValueType;

.field public static final enum URI:Lcom/google/ical/values/IcalValueType;

.field public static final enum UTC_OFFSET:Lcom/google/ical/values/IcalValueType;

.field public static final enum X_NAME:Lcom/google/ical/values/IcalValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "BINARY"

    invoke-direct {v0, v1, v3}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->BINARY:Lcom/google/ical/values/IcalValueType;

    .line 67
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "BOOLEAN"

    invoke-direct {v0, v1, v4}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->BOOLEAN:Lcom/google/ical/values/IcalValueType;

    .line 68
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "CAL_ADDRESS"

    invoke-direct {v0, v1, v5}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->CAL_ADDRESS:Lcom/google/ical/values/IcalValueType;

    .line 69
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "DATE"

    invoke-direct {v0, v1, v6}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->DATE:Lcom/google/ical/values/IcalValueType;

    .line 70
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "DATE_TIME"

    invoke-direct {v0, v1, v7}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->DATE_TIME:Lcom/google/ical/values/IcalValueType;

    .line 71
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "DURATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->DURATION:Lcom/google/ical/values/IcalValueType;

    .line 72
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "FLOAT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->FLOAT:Lcom/google/ical/values/IcalValueType;

    .line 73
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "INTEGER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->INTEGER:Lcom/google/ical/values/IcalValueType;

    .line 74
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "PERIOD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->PERIOD:Lcom/google/ical/values/IcalValueType;

    .line 75
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "RECUR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->RECUR:Lcom/google/ical/values/IcalValueType;

    .line 76
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "TEXT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->TEXT:Lcom/google/ical/values/IcalValueType;

    .line 77
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "TIME"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->TIME:Lcom/google/ical/values/IcalValueType;

    .line 78
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "URI"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->URI:Lcom/google/ical/values/IcalValueType;

    .line 79
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "UTC_OFFSET"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->UTC_OFFSET:Lcom/google/ical/values/IcalValueType;

    .line 81
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "X_NAME"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->X_NAME:Lcom/google/ical/values/IcalValueType;

    .line 82
    new-instance v0, Lcom/google/ical/values/IcalValueType;

    const-string/jumbo v1, "OTHER"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/ical/values/IcalValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/IcalValueType;->OTHER:Lcom/google/ical/values/IcalValueType;

    .line 64
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/google/ical/values/IcalValueType;

    sget-object v1, Lcom/google/ical/values/IcalValueType;->BINARY:Lcom/google/ical/values/IcalValueType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ical/values/IcalValueType;->BOOLEAN:Lcom/google/ical/values/IcalValueType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ical/values/IcalValueType;->CAL_ADDRESS:Lcom/google/ical/values/IcalValueType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ical/values/IcalValueType;->DATE:Lcom/google/ical/values/IcalValueType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ical/values/IcalValueType;->DATE_TIME:Lcom/google/ical/values/IcalValueType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ical/values/IcalValueType;->DURATION:Lcom/google/ical/values/IcalValueType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/ical/values/IcalValueType;->FLOAT:Lcom/google/ical/values/IcalValueType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/ical/values/IcalValueType;->INTEGER:Lcom/google/ical/values/IcalValueType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/ical/values/IcalValueType;->PERIOD:Lcom/google/ical/values/IcalValueType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/ical/values/IcalValueType;->RECUR:Lcom/google/ical/values/IcalValueType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/ical/values/IcalValueType;->TEXT:Lcom/google/ical/values/IcalValueType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/ical/values/IcalValueType;->TIME:Lcom/google/ical/values/IcalValueType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/ical/values/IcalValueType;->URI:Lcom/google/ical/values/IcalValueType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/ical/values/IcalValueType;->UTC_OFFSET:Lcom/google/ical/values/IcalValueType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/ical/values/IcalValueType;->X_NAME:Lcom/google/ical/values/IcalValueType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/ical/values/IcalValueType;->OTHER:Lcom/google/ical/values/IcalValueType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ical/values/IcalValueType;->$VALUES:[Lcom/google/ical/values/IcalValueType;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromIcal(Ljava/lang/String;)Lcom/google/ical/values/IcalValueType;
    .locals 3
    .param p0, "icalValue"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ical/values/IcalValueType;->valueOf(Ljava/lang/String;)Lcom/google/ical/values/IcalValueType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ical/values/IcalValueType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/google/ical/values/IcalValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ical/values/IcalValueType;

    return-object v0
.end method

.method public static final values()[Lcom/google/ical/values/IcalValueType;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/ical/values/IcalValueType;->$VALUES:[Lcom/google/ical/values/IcalValueType;

    invoke-virtual {v0}, [Lcom/google/ical/values/IcalValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ical/values/IcalValueType;

    return-object v0
.end method


# virtual methods
.method public final toIcal()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/ical/values/IcalValueType;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
