.class public final enum Lcom/google/ical/values/Frequency;
.super Ljava/lang/Enum;
.source "Frequency.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ical/values/Frequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ical/values/Frequency;

.field public static final enum DAILY:Lcom/google/ical/values/Frequency;

.field public static final enum HOURLY:Lcom/google/ical/values/Frequency;

.field public static final enum MINUTELY:Lcom/google/ical/values/Frequency;

.field public static final enum MONTHLY:Lcom/google/ical/values/Frequency;

.field public static final enum SECONDLY:Lcom/google/ical/values/Frequency;

.field public static final enum WEEKLY:Lcom/google/ical/values/Frequency;

.field public static final enum YEARLY:Lcom/google/ical/values/Frequency;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/google/ical/values/Frequency;

    const-string/jumbo v1, "SECONDLY"

    invoke-direct {v0, v1, v3}, Lcom/google/ical/values/Frequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/Frequency;->SECONDLY:Lcom/google/ical/values/Frequency;

    .line 40
    new-instance v0, Lcom/google/ical/values/Frequency;

    const-string/jumbo v1, "MINUTELY"

    invoke-direct {v0, v1, v4}, Lcom/google/ical/values/Frequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/Frequency;->MINUTELY:Lcom/google/ical/values/Frequency;

    .line 41
    new-instance v0, Lcom/google/ical/values/Frequency;

    const-string/jumbo v1, "HOURLY"

    invoke-direct {v0, v1, v5}, Lcom/google/ical/values/Frequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/Frequency;->HOURLY:Lcom/google/ical/values/Frequency;

    .line 42
    new-instance v0, Lcom/google/ical/values/Frequency;

    const-string/jumbo v1, "DAILY"

    invoke-direct {v0, v1, v6}, Lcom/google/ical/values/Frequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/Frequency;->DAILY:Lcom/google/ical/values/Frequency;

    .line 43
    new-instance v0, Lcom/google/ical/values/Frequency;

    const-string/jumbo v1, "WEEKLY"

    invoke-direct {v0, v1, v7}, Lcom/google/ical/values/Frequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/Frequency;->WEEKLY:Lcom/google/ical/values/Frequency;

    .line 44
    new-instance v0, Lcom/google/ical/values/Frequency;

    const-string/jumbo v1, "MONTHLY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/ical/values/Frequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/Frequency;->MONTHLY:Lcom/google/ical/values/Frequency;

    .line 45
    new-instance v0, Lcom/google/ical/values/Frequency;

    const-string/jumbo v1, "YEARLY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/ical/values/Frequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ical/values/Frequency;->YEARLY:Lcom/google/ical/values/Frequency;

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/ical/values/Frequency;

    sget-object v1, Lcom/google/ical/values/Frequency;->SECONDLY:Lcom/google/ical/values/Frequency;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ical/values/Frequency;->MINUTELY:Lcom/google/ical/values/Frequency;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ical/values/Frequency;->HOURLY:Lcom/google/ical/values/Frequency;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ical/values/Frequency;->DAILY:Lcom/google/ical/values/Frequency;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ical/values/Frequency;->WEEKLY:Lcom/google/ical/values/Frequency;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ical/values/Frequency;->MONTHLY:Lcom/google/ical/values/Frequency;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/ical/values/Frequency;->YEARLY:Lcom/google/ical/values/Frequency;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ical/values/Frequency;->$VALUES:[Lcom/google/ical/values/Frequency;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ical/values/Frequency;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/google/ical/values/Frequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ical/values/Frequency;

    return-object v0
.end method

.method public static final values()[Lcom/google/ical/values/Frequency;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/ical/values/Frequency;->$VALUES:[Lcom/google/ical/values/Frequency;

    invoke-virtual {v0}, [Lcom/google/ical/values/Frequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ical/values/Frequency;

    return-object v0
.end method
