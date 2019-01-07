.class public final enum Lcom/laiwang/protocol/android/TokenListener$AuthResult;
.super Ljava/lang/Enum;
.source "TokenListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/TokenListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/android/TokenListener$AuthResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laiwang/protocol/android/TokenListener$AuthResult;

.field public static final enum NOT_CHANGED:Lcom/laiwang/protocol/android/TokenListener$AuthResult;

.field public static final enum NOT_CONNECTED:Lcom/laiwang/protocol/android/TokenListener$AuthResult;

.field public static final enum OK:Lcom/laiwang/protocol/android/TokenListener$AuthResult;

.field public static final enum SERVER_ERROR:Lcom/laiwang/protocol/android/TokenListener$AuthResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/android/TokenListener$AuthResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/TokenListener$AuthResult;->OK:Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    new-instance v0, Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    const-string/jumbo v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/laiwang/protocol/android/TokenListener$AuthResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/TokenListener$AuthResult;->SERVER_ERROR:Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    new-instance v0, Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    const-string/jumbo v1, "NOT_CHANGED"

    invoke-direct {v0, v1, v4}, Lcom/laiwang/protocol/android/TokenListener$AuthResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/TokenListener$AuthResult;->NOT_CHANGED:Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    new-instance v0, Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    const-string/jumbo v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/laiwang/protocol/android/TokenListener$AuthResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/TokenListener$AuthResult;->NOT_CONNECTED:Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    sget-object v1, Lcom/laiwang/protocol/android/TokenListener$AuthResult;->OK:Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/laiwang/protocol/android/TokenListener$AuthResult;->SERVER_ERROR:Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/laiwang/protocol/android/TokenListener$AuthResult;->NOT_CHANGED:Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/protocol/android/TokenListener$AuthResult;->NOT_CONNECTED:Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/laiwang/protocol/android/TokenListener$AuthResult;->$VALUES:[Lcom/laiwang/protocol/android/TokenListener$AuthResult;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/android/TokenListener$AuthResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/android/TokenListener$AuthResult;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/laiwang/protocol/android/TokenListener$AuthResult;->$VALUES:[Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/android/TokenListener$AuthResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    return-object v0
.end method
