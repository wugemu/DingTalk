.class public final enum Lcom/laiwang/protocol/android/bh;
.super Ljava/lang/Enum;
.source "DomainVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/android/bh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/laiwang/protocol/android/bh;

.field private static final synthetic d:[Lcom/laiwang/protocol/android/bh;


# instance fields
.field b:Ljava/lang/String;

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/laiwang/protocol/android/bh;

    const-string/jumbo v1, "V3"

    const-string/jumbo v2, "lws.laiwang.com"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/laiwang/protocol/android/bh;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/bh;->a:Lcom/laiwang/protocol/android/bh;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/laiwang/protocol/android/bh;

    sget-object v1, Lcom/laiwang/protocol/android/bh;->a:Lcom/laiwang/protocol/android/bh;

    aput-object v1, v0, v4

    sput-object v0, Lcom/laiwang/protocol/android/bh;->d:[Lcom/laiwang/protocol/android/bh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "ver"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/laiwang/protocol/android/bh;->b:Ljava/lang/String;

    .line 14
    iput p4, p0, Lcom/laiwang/protocol/android/bh;->c:I

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/android/bh;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/laiwang/protocol/android/bh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/bh;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/android/bh;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/laiwang/protocol/android/bh;->d:[Lcom/laiwang/protocol/android/bh;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/android/bh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/android/bh;

    return-object v0
.end method
