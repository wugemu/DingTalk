.class public final enum Lcom/google/ical/values/Weekday;
.super Ljava/lang/Enum;
.source "Weekday.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ical/values/Weekday;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ical/values/Weekday;

.field public static final enum FR:Lcom/google/ical/values/Weekday;

.field public static final enum MO:Lcom/google/ical/values/Weekday;

.field public static final enum SA:Lcom/google/ical/values/Weekday;

.field public static final enum SU:Lcom/google/ical/values/Weekday;

.field public static final enum TH:Lcom/google/ical/values/Weekday;

.field public static final enum TU:Lcom/google/ical/values/Weekday;

.field private static VALUES:[Lcom/google/ical/values/Weekday;

.field public static final enum WE:Lcom/google/ical/values/Weekday;


# instance fields
.field public final javaDayNum:I

.field public final jsDayNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    new-instance v0, Lcom/google/ical/values/Weekday;

    const-string/jumbo v1, "SU"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/ical/values/Weekday;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ical/values/Weekday;->SU:Lcom/google/ical/values/Weekday;

    .line 26
    new-instance v0, Lcom/google/ical/values/Weekday;

    const-string/jumbo v1, "MO"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/ical/values/Weekday;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ical/values/Weekday;->MO:Lcom/google/ical/values/Weekday;

    .line 27
    new-instance v0, Lcom/google/ical/values/Weekday;

    const-string/jumbo v1, "TU"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/ical/values/Weekday;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ical/values/Weekday;->TU:Lcom/google/ical/values/Weekday;

    .line 28
    new-instance v0, Lcom/google/ical/values/Weekday;

    const-string/jumbo v1, "WE"

    invoke-direct {v0, v1, v7, v7}, Lcom/google/ical/values/Weekday;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ical/values/Weekday;->WE:Lcom/google/ical/values/Weekday;

    .line 29
    new-instance v0, Lcom/google/ical/values/Weekday;

    const-string/jumbo v1, "TH"

    invoke-direct {v0, v1, v8, v8}, Lcom/google/ical/values/Weekday;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ical/values/Weekday;->TH:Lcom/google/ical/values/Weekday;

    .line 30
    new-instance v0, Lcom/google/ical/values/Weekday;

    const-string/jumbo v1, "FR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ical/values/Weekday;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ical/values/Weekday;->FR:Lcom/google/ical/values/Weekday;

    .line 31
    new-instance v0, Lcom/google/ical/values/Weekday;

    const-string/jumbo v1, "SA"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ical/values/Weekday;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ical/values/Weekday;->SA:Lcom/google/ical/values/Weekday;

    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/ical/values/Weekday;

    sget-object v1, Lcom/google/ical/values/Weekday;->SU:Lcom/google/ical/values/Weekday;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ical/values/Weekday;->MO:Lcom/google/ical/values/Weekday;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ical/values/Weekday;->TU:Lcom/google/ical/values/Weekday;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ical/values/Weekday;->WE:Lcom/google/ical/values/Weekday;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/ical/values/Weekday;->TH:Lcom/google/ical/values/Weekday;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ical/values/Weekday;->FR:Lcom/google/ical/values/Weekday;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/ical/values/Weekday;->SA:Lcom/google/ical/values/Weekday;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ical/values/Weekday;->$VALUES:[Lcom/google/ical/values/Weekday;

    .line 50
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/ical/values/Weekday;

    sput-object v0, Lcom/google/ical/values/Weekday;->VALUES:[Lcom/google/ical/values/Weekday;

    .line 53
    invoke-static {}, Lcom/google/ical/values/Weekday;->values()[Lcom/google/ical/values/Weekday;

    move-result-object v0

    sget-object v1, Lcom/google/ical/values/Weekday;->VALUES:[Lcom/google/ical/values/Weekday;

    const/4 v2, 0x7

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "wDayNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/google/ical/values/Weekday;->jsDayNum:I

    .line 47
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/google/ical/values/Weekday;->javaDayNum:I

    .line 48
    return-void
.end method

.method public static firstDayOfWeekInMonth(II)Lcom/google/ical/values/Weekday;
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 64
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Liwp;->a(III)I

    move-result v1

    rem-int/lit8 v0, v1, 0x7

    .line 65
    .local v0, "result":I
    sget-object v1, Lcom/google/ical/values/Weekday;->VALUES:[Lcom/google/ical/values/Weekday;

    if-ltz v0, :cond_0

    .end local v0    # "result":I
    :goto_0
    aget-object v1, v1, v0

    return-object v1

    .restart local v0    # "result":I
    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0
.end method

.method public static valueOf(Liws;)Lcom/google/ical/values/Weekday;
    .locals 4
    .param p0, "dv"    # Liws;

    .prologue
    .line 57
    invoke-interface {p0}, Liws;->d()I

    move-result v1

    invoke-interface {p0}, Liws;->e()I

    move-result v2

    invoke-interface {p0}, Liws;->f()I

    move-result v3

    invoke-static {v1, v2, v3}, Liwp;->a(III)I

    move-result v1

    rem-int/lit8 v0, v1, 0x7

    .line 59
    .local v0, "dayIndex":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 60
    :cond_0
    sget-object v1, Lcom/google/ical/values/Weekday;->VALUES:[Lcom/google/ical/values/Weekday;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ical/values/Weekday;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/google/ical/values/Weekday;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ical/values/Weekday;

    return-object v0
.end method

.method public static final values()[Lcom/google/ical/values/Weekday;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/ical/values/Weekday;->$VALUES:[Lcom/google/ical/values/Weekday;

    invoke-virtual {v0}, [Lcom/google/ical/values/Weekday;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ical/values/Weekday;

    return-object v0
.end method


# virtual methods
.method public final predecessor()Lcom/google/ical/values/Weekday;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    sget-object v0, Lcom/google/ical/values/Weekday;->VALUES:[Lcom/google/ical/values/Weekday;

    invoke-virtual {p0}, Lcom/google/ical/values/Weekday;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, 0x7

    rem-int/lit8 v1, v1, 0x7

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final successor()Lcom/google/ical/values/Weekday;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    sget-object v0, Lcom/google/ical/values/Weekday;->VALUES:[Lcom/google/ical/values/Weekday;

    invoke-virtual {p0}, Lcom/google/ical/values/Weekday;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x7

    aget-object v0, v0, v1

    return-object v0
.end method
