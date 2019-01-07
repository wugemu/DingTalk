.class public final enum Lcom/laiwang/protocol/core/Constants$Status;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/core/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/core/Constants$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laiwang/protocol/core/Constants$Status;

.field public static final enum BAD_REQUEST:Lcom/laiwang/protocol/core/Constants$Status;

.field public static final enum FORBIDDEN:Lcom/laiwang/protocol/core/Constants$Status;

.field public static final enum INTERNAL_SERVER_ERROR:Lcom/laiwang/protocol/core/Constants$Status;

.field public static final enum NETWORK_BROKEN:Lcom/laiwang/protocol/core/Constants$Status;

.field public static final enum NOT_FOUND:Lcom/laiwang/protocol/core/Constants$Status;

.field public static final enum NOT_MODIFIED:Lcom/laiwang/protocol/core/Constants$Status;

.field public static final enum OK:Lcom/laiwang/protocol/core/Constants$Status;

.field public static final enum PARTIAL:Lcom/laiwang/protocol/core/Constants$Status;

.field public static final enum REQUEST_CANCELLED:Lcom/laiwang/protocol/core/Constants$Status;

.field public static final enum REQUEST_TIMEOUT:Lcom/laiwang/protocol/core/Constants$Status;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/laiwang/protocol/core/Constants$Status;

.field public static final enum TRYING:Lcom/laiwang/protocol/core/Constants$Status;

.field public static final enum TRY_LATER:Lcom/laiwang/protocol/core/Constants$Status;

.field public static final enum UNAUTHORIZED:Lcom/laiwang/protocol/core/Constants$Status;

.field public static final enum UNKNOWN:Lcom/laiwang/protocol/core/Constants$Status;


# instance fields
.field public final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    new-instance v0, Lcom/laiwang/protocol/core/Constants$Status;

    const-string/jumbo v1, "TRYING"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v2}, Lcom/laiwang/protocol/core/Constants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->TRYING:Lcom/laiwang/protocol/core/Constants$Status;

    .line 46
    new-instance v0, Lcom/laiwang/protocol/core/Constants$Status;

    const-string/jumbo v1, "PARTIAL"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v5, v2}, Lcom/laiwang/protocol/core/Constants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->PARTIAL:Lcom/laiwang/protocol/core/Constants$Status;

    .line 47
    new-instance v0, Lcom/laiwang/protocol/core/Constants$Status;

    const-string/jumbo v1, "OK"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v6, v2}, Lcom/laiwang/protocol/core/Constants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    .line 48
    new-instance v0, Lcom/laiwang/protocol/core/Constants$Status;

    const-string/jumbo v1, "NOT_MODIFIED"

    const/16 v2, 0x130

    invoke-direct {v0, v1, v7, v2}, Lcom/laiwang/protocol/core/Constants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->NOT_MODIFIED:Lcom/laiwang/protocol/core/Constants$Status;

    .line 49
    new-instance v0, Lcom/laiwang/protocol/core/Constants$Status;

    const-string/jumbo v1, "BAD_REQUEST"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v8, v2}, Lcom/laiwang/protocol/core/Constants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->BAD_REQUEST:Lcom/laiwang/protocol/core/Constants$Status;

    .line 50
    new-instance v0, Lcom/laiwang/protocol/core/Constants$Status;

    const-string/jumbo v1, "UNAUTHORIZED"

    const/4 v2, 0x5

    const/16 v3, 0x191

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/core/Constants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->UNAUTHORIZED:Lcom/laiwang/protocol/core/Constants$Status;

    .line 51
    new-instance v0, Lcom/laiwang/protocol/core/Constants$Status;

    const-string/jumbo v1, "FORBIDDEN"

    const/4 v2, 0x6

    const/16 v3, 0x193

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/core/Constants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->FORBIDDEN:Lcom/laiwang/protocol/core/Constants$Status;

    .line 52
    new-instance v0, Lcom/laiwang/protocol/core/Constants$Status;

    const-string/jumbo v1, "NOT_FOUND"

    const/4 v2, 0x7

    const/16 v3, 0x194

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/core/Constants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->NOT_FOUND:Lcom/laiwang/protocol/core/Constants$Status;

    .line 53
    new-instance v0, Lcom/laiwang/protocol/core/Constants$Status;

    const-string/jumbo v1, "REQUEST_TIMEOUT"

    const/16 v2, 0x8

    const/16 v3, 0x198

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/core/Constants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->REQUEST_TIMEOUT:Lcom/laiwang/protocol/core/Constants$Status;

    .line 54
    new-instance v0, Lcom/laiwang/protocol/core/Constants$Status;

    const-string/jumbo v1, "TRY_LATER"

    const/16 v2, 0x9

    const/16 v3, 0x1a2

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/core/Constants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->TRY_LATER:Lcom/laiwang/protocol/core/Constants$Status;

    .line 55
    new-instance v0, Lcom/laiwang/protocol/core/Constants$Status;

    const-string/jumbo v1, "REQUEST_CANCELLED"

    const/16 v2, 0xa

    const/16 v3, 0x1a6

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/core/Constants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->REQUEST_CANCELLED:Lcom/laiwang/protocol/core/Constants$Status;

    .line 56
    new-instance v0, Lcom/laiwang/protocol/core/Constants$Status;

    const-string/jumbo v1, "INTERNAL_SERVER_ERROR"

    const/16 v2, 0xb

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/core/Constants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->INTERNAL_SERVER_ERROR:Lcom/laiwang/protocol/core/Constants$Status;

    .line 57
    new-instance v0, Lcom/laiwang/protocol/core/Constants$Status;

    const-string/jumbo v1, "SERVICE_UNAVAILABLE"

    const/16 v2, 0xc

    const/16 v3, 0x1f7

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/core/Constants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->SERVICE_UNAVAILABLE:Lcom/laiwang/protocol/core/Constants$Status;

    .line 58
    new-instance v0, Lcom/laiwang/protocol/core/Constants$Status;

    const-string/jumbo v1, "NETWORK_BROKEN"

    const/16 v2, 0xd

    const/16 v3, 0x258

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/core/Constants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->NETWORK_BROKEN:Lcom/laiwang/protocol/core/Constants$Status;

    .line 59
    new-instance v0, Lcom/laiwang/protocol/core/Constants$Status;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0xe

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/core/Constants$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->UNKNOWN:Lcom/laiwang/protocol/core/Constants$Status;

    .line 44
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/laiwang/protocol/core/Constants$Status;

    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->TRYING:Lcom/laiwang/protocol/core/Constants$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->PARTIAL:Lcom/laiwang/protocol/core/Constants$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->NOT_MODIFIED:Lcom/laiwang/protocol/core/Constants$Status;

    aput-object v1, v0, v7

    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->BAD_REQUEST:Lcom/laiwang/protocol/core/Constants$Status;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->UNAUTHORIZED:Lcom/laiwang/protocol/core/Constants$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->FORBIDDEN:Lcom/laiwang/protocol/core/Constants$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->NOT_FOUND:Lcom/laiwang/protocol/core/Constants$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->REQUEST_TIMEOUT:Lcom/laiwang/protocol/core/Constants$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->TRY_LATER:Lcom/laiwang/protocol/core/Constants$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->REQUEST_CANCELLED:Lcom/laiwang/protocol/core/Constants$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->INTERNAL_SERVER_ERROR:Lcom/laiwang/protocol/core/Constants$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->SERVICE_UNAVAILABLE:Lcom/laiwang/protocol/core/Constants$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->NETWORK_BROKEN:Lcom/laiwang/protocol/core/Constants$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->UNKNOWN:Lcom/laiwang/protocol/core/Constants$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/laiwang/protocol/core/Constants$Status;->$VALUES:[Lcom/laiwang/protocol/core/Constants$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    return-void
.end method

.method public static valueOf(I)Lcom/laiwang/protocol/core/Constants$Status;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 66
    invoke-static {}, Lcom/laiwang/protocol/core/Constants$Status;->values()[Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 67
    .local v0, "s":Lcom/laiwang/protocol/core/Constants$Status;
    iget v4, v0, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    if-ne v4, p0, :cond_0

    .line 70
    .end local v0    # "s":Lcom/laiwang/protocol/core/Constants$Status;
    :goto_1
    return-object v0

    .line 66
    .restart local v0    # "s":Lcom/laiwang/protocol/core/Constants$Status;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "s":Lcom/laiwang/protocol/core/Constants$Status;
    :cond_1
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->UNKNOWN:Lcom/laiwang/protocol/core/Constants$Status;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/core/Constants$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/core/Constants$Status;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/core/Constants$Status;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->$VALUES:[Lcom/laiwang/protocol/core/Constants$Status;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/core/Constants$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/core/Constants$Status;

    return-object v0
.end method
