.class public final enum Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
.super Ljava/lang/Enum;
.source "LWPConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/connection/LWPConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

.field public static final enum DEFAULT:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

.field public static final enum DOWN_LARGE:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

.field public static final enum DOWN_SMALL:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

.field public static final enum UP_LARGE:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

.field public static final enum UP_SMALL:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;


# instance fields
.field public max:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 211
    new-instance v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->DEFAULT:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .line 213
    new-instance v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    const-string/jumbo v1, "UP_SMALL"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->UP_SMALL:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .line 215
    new-instance v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    const-string/jumbo v1, "UP_LARGE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->UP_LARGE:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .line 217
    new-instance v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    const-string/jumbo v1, "DOWN_SMALL"

    invoke-direct {v0, v1, v6, v6, v3}, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->DOWN_SMALL:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .line 219
    new-instance v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    const-string/jumbo v1, "DOWN_LARGE"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->DOWN_LARGE:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .line 210
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    sget-object v1, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->DEFAULT:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->UP_SMALL:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->UP_LARGE:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->DOWN_SMALL:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->DOWN_LARGE:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->$VALUES:[Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "type"    # I
    .param p4, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 224
    iput p3, p0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->type:I

    .line 225
    iput p4, p0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->max:I

    .line 226
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    const-class v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->$VALUES:[Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    return-object v0
.end method
