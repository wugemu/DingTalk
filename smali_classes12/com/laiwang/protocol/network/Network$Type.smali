.class public final enum Lcom/laiwang/protocol/network/Network$Type;
.super Ljava/lang/Enum;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/network/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/network/Network$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laiwang/protocol/network/Network$Type;

.field public static final enum NONE:Lcom/laiwang/protocol/network/Network$Type;

.field public static final enum OTHER:Lcom/laiwang/protocol/network/Network$Type;

.field public static final enum WIFI:Lcom/laiwang/protocol/network/Network$Type;

.field public static final enum _2G:Lcom/laiwang/protocol/network/Network$Type;

.field public static final enum _3G:Lcom/laiwang/protocol/network/Network$Type;

.field public static final enum _4G:Lcom/laiwang/protocol/network/Network$Type;


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/laiwang/protocol/network/Network$Type;

    const-string/jumbo v1, "WIFI"

    const-string/jumbo v2, "wifi"

    invoke-direct {v0, v1, v4, v2}, Lcom/laiwang/protocol/network/Network$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/network/Network$Type;->WIFI:Lcom/laiwang/protocol/network/Network$Type;

    new-instance v0, Lcom/laiwang/protocol/network/Network$Type;

    const-string/jumbo v1, "_2G"

    const-string/jumbo v2, "2G"

    invoke-direct {v0, v1, v5, v2}, Lcom/laiwang/protocol/network/Network$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/network/Network$Type;->_2G:Lcom/laiwang/protocol/network/Network$Type;

    new-instance v0, Lcom/laiwang/protocol/network/Network$Type;

    const-string/jumbo v1, "_3G"

    const-string/jumbo v2, "3G"

    invoke-direct {v0, v1, v6, v2}, Lcom/laiwang/protocol/network/Network$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/network/Network$Type;->_3G:Lcom/laiwang/protocol/network/Network$Type;

    new-instance v0, Lcom/laiwang/protocol/network/Network$Type;

    const-string/jumbo v1, "_4G"

    const-string/jumbo v2, "4G"

    invoke-direct {v0, v1, v7, v2}, Lcom/laiwang/protocol/network/Network$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/network/Network$Type;->_4G:Lcom/laiwang/protocol/network/Network$Type;

    new-instance v0, Lcom/laiwang/protocol/network/Network$Type;

    const-string/jumbo v1, "OTHER"

    const-string/jumbo v2, "Other"

    invoke-direct {v0, v1, v8, v2}, Lcom/laiwang/protocol/network/Network$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/network/Network$Type;->OTHER:Lcom/laiwang/protocol/network/Network$Type;

    new-instance v0, Lcom/laiwang/protocol/network/Network$Type;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x5

    const-string/jumbo v3, "None"

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/network/Network$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/network/Network$Type;->NONE:Lcom/laiwang/protocol/network/Network$Type;

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/laiwang/protocol/network/Network$Type;

    sget-object v1, Lcom/laiwang/protocol/network/Network$Type;->WIFI:Lcom/laiwang/protocol/network/Network$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/protocol/network/Network$Type;->_2G:Lcom/laiwang/protocol/network/Network$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/protocol/network/Network$Type;->_3G:Lcom/laiwang/protocol/network/Network$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laiwang/protocol/network/Network$Type;->_4G:Lcom/laiwang/protocol/network/Network$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/laiwang/protocol/network/Network$Type;->OTHER:Lcom/laiwang/protocol/network/Network$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/laiwang/protocol/network/Network$Type;->NONE:Lcom/laiwang/protocol/network/Network$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/laiwang/protocol/network/Network$Type;->$VALUES:[Lcom/laiwang/protocol/network/Network$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/laiwang/protocol/network/Network$Type;->name:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/laiwang/protocol/network/Network$Type;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {}, Lcom/laiwang/protocol/network/Network$Type;->values()[Lcom/laiwang/protocol/network/Network$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 21
    .local v0, "type":Lcom/laiwang/protocol/network/Network$Type;
    iget-object v4, v0, Lcom/laiwang/protocol/network/Network$Type;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    .end local v0    # "type":Lcom/laiwang/protocol/network/Network$Type;
    :goto_1
    return-object v0

    .line 20
    .restart local v0    # "type":Lcom/laiwang/protocol/network/Network$Type;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "type":Lcom/laiwang/protocol/network/Network$Type;
    :cond_1
    sget-object v0, Lcom/laiwang/protocol/network/Network$Type;->OTHER:Lcom/laiwang/protocol/network/Network$Type;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/network/Network$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/laiwang/protocol/network/Network$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/network/Network$Type;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/network/Network$Type;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/laiwang/protocol/network/Network$Type;->$VALUES:[Lcom/laiwang/protocol/network/Network$Type;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/network/Network$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/network/Network$Type;

    return-object v0
.end method
