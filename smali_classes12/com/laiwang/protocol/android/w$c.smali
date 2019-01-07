.class final enum Lcom/laiwang/protocol/android/w$c;
.super Ljava/lang/Enum;
.source "Transmission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/android/w$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/laiwang/protocol/android/w$c;

.field public static final enum b:Lcom/laiwang/protocol/android/w$c;

.field public static final enum c:Lcom/laiwang/protocol/android/w$c;

.field public static final enum d:Lcom/laiwang/protocol/android/w$c;

.field public static final enum e:Lcom/laiwang/protocol/android/w$c;

.field public static final enum f:Lcom/laiwang/protocol/android/w$c;

.field private static final synthetic g:[Lcom/laiwang/protocol/android/w$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 307
    new-instance v0, Lcom/laiwang/protocol/android/w$c;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/laiwang/protocol/android/w$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/w$c;->a:Lcom/laiwang/protocol/android/w$c;

    new-instance v0, Lcom/laiwang/protocol/android/w$c;

    const-string/jumbo v1, "DISCONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/laiwang/protocol/android/w$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/w$c;->b:Lcom/laiwang/protocol/android/w$c;

    new-instance v0, Lcom/laiwang/protocol/android/w$c;

    const-string/jumbo v1, "UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/laiwang/protocol/android/w$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/w$c;->c:Lcom/laiwang/protocol/android/w$c;

    new-instance v0, Lcom/laiwang/protocol/android/w$c;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v6}, Lcom/laiwang/protocol/android/w$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/w$c;->d:Lcom/laiwang/protocol/android/w$c;

    new-instance v0, Lcom/laiwang/protocol/android/w$c;

    const-string/jumbo v1, "NETWORKCONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/laiwang/protocol/android/w$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/w$c;->e:Lcom/laiwang/protocol/android/w$c;

    new-instance v0, Lcom/laiwang/protocol/android/w$c;

    const-string/jumbo v1, "REQUESTREPORT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/android/w$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/w$c;->f:Lcom/laiwang/protocol/android/w$c;

    .line 306
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/laiwang/protocol/android/w$c;

    sget-object v1, Lcom/laiwang/protocol/android/w$c;->a:Lcom/laiwang/protocol/android/w$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/laiwang/protocol/android/w$c;->b:Lcom/laiwang/protocol/android/w$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/protocol/android/w$c;->c:Lcom/laiwang/protocol/android/w$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/protocol/android/w$c;->d:Lcom/laiwang/protocol/android/w$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laiwang/protocol/android/w$c;->e:Lcom/laiwang/protocol/android/w$c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/laiwang/protocol/android/w$c;->f:Lcom/laiwang/protocol/android/w$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/laiwang/protocol/android/w$c;->g:[Lcom/laiwang/protocol/android/w$c;

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
    .line 306
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/android/w$c;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 306
    const-class v0, Lcom/laiwang/protocol/android/w$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/w$c;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/android/w$c;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/laiwang/protocol/android/w$c;->g:[Lcom/laiwang/protocol/android/w$c;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/android/w$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/android/w$c;

    return-object v0
.end method
