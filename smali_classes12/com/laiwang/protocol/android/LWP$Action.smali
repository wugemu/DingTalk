.class public final enum Lcom/laiwang/protocol/android/LWP$Action;
.super Ljava/lang/Enum;
.source "LWP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/LWP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/android/LWP$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laiwang/protocol/android/LWP$Action;

.field public static final enum DEVICE_TOKEN_INVALID:Lcom/laiwang/protocol/android/LWP$Action;

.field public static final enum DEVICE_TOKEN_REQUIRED:Lcom/laiwang/protocol/android/LWP$Action;

.field public static final enum MESSAGE:Lcom/laiwang/protocol/android/LWP$Action;

.field public static final enum TOKEN_INVALID:Lcom/laiwang/protocol/android/LWP$Action;

.field public static final enum TOKEN_REQUIRED:Lcom/laiwang/protocol/android/LWP$Action;

.field public static final enum UNKNOWN:Lcom/laiwang/protocol/android/LWP$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    new-instance v0, Lcom/laiwang/protocol/android/LWP$Action;

    const-string/jumbo v1, "MESSAGE"

    invoke-direct {v0, v1, v3}, Lcom/laiwang/protocol/android/LWP$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/LWP$Action;->MESSAGE:Lcom/laiwang/protocol/android/LWP$Action;

    new-instance v0, Lcom/laiwang/protocol/android/LWP$Action;

    const-string/jumbo v1, "TOKEN_REQUIRED"

    invoke-direct {v0, v1, v4}, Lcom/laiwang/protocol/android/LWP$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/LWP$Action;->TOKEN_REQUIRED:Lcom/laiwang/protocol/android/LWP$Action;

    new-instance v0, Lcom/laiwang/protocol/android/LWP$Action;

    const-string/jumbo v1, "TOKEN_INVALID"

    invoke-direct {v0, v1, v5}, Lcom/laiwang/protocol/android/LWP$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/LWP$Action;->TOKEN_INVALID:Lcom/laiwang/protocol/android/LWP$Action;

    new-instance v0, Lcom/laiwang/protocol/android/LWP$Action;

    const-string/jumbo v1, "DEVICE_TOKEN_REQUIRED"

    invoke-direct {v0, v1, v6}, Lcom/laiwang/protocol/android/LWP$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/LWP$Action;->DEVICE_TOKEN_REQUIRED:Lcom/laiwang/protocol/android/LWP$Action;

    new-instance v0, Lcom/laiwang/protocol/android/LWP$Action;

    const-string/jumbo v1, "DEVICE_TOKEN_INVALID"

    invoke-direct {v0, v1, v7}, Lcom/laiwang/protocol/android/LWP$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/LWP$Action;->DEVICE_TOKEN_INVALID:Lcom/laiwang/protocol/android/LWP$Action;

    new-instance v0, Lcom/laiwang/protocol/android/LWP$Action;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/android/LWP$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/LWP$Action;->UNKNOWN:Lcom/laiwang/protocol/android/LWP$Action;

    .line 351
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/laiwang/protocol/android/LWP$Action;

    sget-object v1, Lcom/laiwang/protocol/android/LWP$Action;->MESSAGE:Lcom/laiwang/protocol/android/LWP$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/laiwang/protocol/android/LWP$Action;->TOKEN_REQUIRED:Lcom/laiwang/protocol/android/LWP$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/protocol/android/LWP$Action;->TOKEN_INVALID:Lcom/laiwang/protocol/android/LWP$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/protocol/android/LWP$Action;->DEVICE_TOKEN_REQUIRED:Lcom/laiwang/protocol/android/LWP$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laiwang/protocol/android/LWP$Action;->DEVICE_TOKEN_INVALID:Lcom/laiwang/protocol/android/LWP$Action;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/laiwang/protocol/android/LWP$Action;->UNKNOWN:Lcom/laiwang/protocol/android/LWP$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/laiwang/protocol/android/LWP$Action;->$VALUES:[Lcom/laiwang/protocol/android/LWP$Action;

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
    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/laiwang/protocol/android/LWP$Action;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 355
    if-nez p0, :cond_0

    .line 356
    sget-object v0, Lcom/laiwang/protocol/android/LWP$Action;->UNKNOWN:Lcom/laiwang/protocol/android/LWP$Action;

    .line 361
    :goto_0
    return-object v0

    .line 359
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/android/LWP$Action;->valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/android/LWP$Action;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    sget-object v0, Lcom/laiwang/protocol/android/LWP$Action;->UNKNOWN:Lcom/laiwang/protocol/android/LWP$Action;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/android/LWP$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 351
    const-class v0, Lcom/laiwang/protocol/android/LWP$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/LWP$Action;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/android/LWP$Action;
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/laiwang/protocol/android/LWP$Action;->$VALUES:[Lcom/laiwang/protocol/android/LWP$Action;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/android/LWP$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/android/LWP$Action;

    return-object v0
.end method
