.class public final enum Lcom/laiwang/lws/protocol/Attributes$Name;
.super Ljava/lang/Enum;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/lws/protocol/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Name"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/lws/protocol/Attributes$Name;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laiwang/lws/protocol/Attributes$Name;

.field public static final enum CHUNK:Lcom/laiwang/lws/protocol/Attributes$Name;

.field public static final enum EXPIRE:Lcom/laiwang/lws/protocol/Attributes$Name;

.field public static final enum EXTRA:Lcom/laiwang/lws/protocol/Attributes$Name;

.field public static final enum HEARTBEAT:Lcom/laiwang/lws/protocol/Attributes$Name;

.field public static final enum KEEPALIVE:Lcom/laiwang/lws/protocol/Attributes$Name;

.field public static final enum KEY:Lcom/laiwang/lws/protocol/Attributes$Name;

.field public static final enum REALIP:Lcom/laiwang/lws/protocol/Attributes$Name;

.field public static final enum RESULT:Lcom/laiwang/lws/protocol/Attributes$Name;

.field public static final enum SEQ_CHECKSUM:Lcom/laiwang/lws/protocol/Attributes$Name;

.field public static final enum SESSION_ID:Lcom/laiwang/lws/protocol/Attributes$Name;

.field public static final enum SIGN:Lcom/laiwang/lws/protocol/Attributes$Name;

.field public static final enum SNI:Lcom/laiwang/lws/protocol/Attributes$Name;

.field public static final enum USER_AGENT:Lcom/laiwang/lws/protocol/Attributes$Name;

.field public static final enum VIA:Lcom/laiwang/lws/protocol/Attributes$Name;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    const-string/jumbo v1, "RESULT"

    invoke-direct {v0, v1, v3}, Lcom/laiwang/lws/protocol/Attributes$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->RESULT:Lcom/laiwang/lws/protocol/Attributes$Name;

    .line 13
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    const-string/jumbo v1, "KEY"

    invoke-direct {v0, v1, v4}, Lcom/laiwang/lws/protocol/Attributes$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->KEY:Lcom/laiwang/lws/protocol/Attributes$Name;

    .line 14
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    const-string/jumbo v1, "EXPIRE"

    invoke-direct {v0, v1, v5}, Lcom/laiwang/lws/protocol/Attributes$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->EXPIRE:Lcom/laiwang/lws/protocol/Attributes$Name;

    .line 15
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    const-string/jumbo v1, "SIGN"

    invoke-direct {v0, v1, v6}, Lcom/laiwang/lws/protocol/Attributes$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->SIGN:Lcom/laiwang/lws/protocol/Attributes$Name;

    .line 16
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    const-string/jumbo v1, "USER_AGENT"

    invoke-direct {v0, v1, v7}, Lcom/laiwang/lws/protocol/Attributes$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->USER_AGENT:Lcom/laiwang/lws/protocol/Attributes$Name;

    .line 17
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    const-string/jumbo v1, "SESSION_ID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/laiwang/lws/protocol/Attributes$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->SESSION_ID:Lcom/laiwang/lws/protocol/Attributes$Name;

    .line 18
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    const-string/jumbo v1, "SNI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/laiwang/lws/protocol/Attributes$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->SNI:Lcom/laiwang/lws/protocol/Attributes$Name;

    .line 19
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    const-string/jumbo v1, "EXTRA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/laiwang/lws/protocol/Attributes$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->EXTRA:Lcom/laiwang/lws/protocol/Attributes$Name;

    .line 20
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    const-string/jumbo v1, "KEEPALIVE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/laiwang/lws/protocol/Attributes$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->KEEPALIVE:Lcom/laiwang/lws/protocol/Attributes$Name;

    .line 21
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    const-string/jumbo v1, "REALIP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/laiwang/lws/protocol/Attributes$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->REALIP:Lcom/laiwang/lws/protocol/Attributes$Name;

    .line 22
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    const-string/jumbo v1, "VIA"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/laiwang/lws/protocol/Attributes$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->VIA:Lcom/laiwang/lws/protocol/Attributes$Name;

    .line 23
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    const-string/jumbo v1, "CHUNK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/laiwang/lws/protocol/Attributes$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->CHUNK:Lcom/laiwang/lws/protocol/Attributes$Name;

    .line 24
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    const-string/jumbo v1, "SEQ_CHECKSUM"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/laiwang/lws/protocol/Attributes$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->SEQ_CHECKSUM:Lcom/laiwang/lws/protocol/Attributes$Name;

    .line 25
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    const-string/jumbo v1, "HEARTBEAT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/laiwang/lws/protocol/Attributes$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->HEARTBEAT:Lcom/laiwang/lws/protocol/Attributes$Name;

    .line 11
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/laiwang/lws/protocol/Attributes$Name;

    sget-object v1, Lcom/laiwang/lws/protocol/Attributes$Name;->RESULT:Lcom/laiwang/lws/protocol/Attributes$Name;

    aput-object v1, v0, v3

    sget-object v1, Lcom/laiwang/lws/protocol/Attributes$Name;->KEY:Lcom/laiwang/lws/protocol/Attributes$Name;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/lws/protocol/Attributes$Name;->EXPIRE:Lcom/laiwang/lws/protocol/Attributes$Name;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/lws/protocol/Attributes$Name;->SIGN:Lcom/laiwang/lws/protocol/Attributes$Name;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laiwang/lws/protocol/Attributes$Name;->USER_AGENT:Lcom/laiwang/lws/protocol/Attributes$Name;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->SESSION_ID:Lcom/laiwang/lws/protocol/Attributes$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->SNI:Lcom/laiwang/lws/protocol/Attributes$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->EXTRA:Lcom/laiwang/lws/protocol/Attributes$Name;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->KEEPALIVE:Lcom/laiwang/lws/protocol/Attributes$Name;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->REALIP:Lcom/laiwang/lws/protocol/Attributes$Name;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->VIA:Lcom/laiwang/lws/protocol/Attributes$Name;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->CHUNK:Lcom/laiwang/lws/protocol/Attributes$Name;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->SEQ_CHECKSUM:Lcom/laiwang/lws/protocol/Attributes$Name;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->HEARTBEAT:Lcom/laiwang/lws/protocol/Attributes$Name;

    aput-object v2, v0, v1

    sput-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->$VALUES:[Lcom/laiwang/lws/protocol/Attributes$Name;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/lws/protocol/Attributes$Name;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/lws/protocol/Attributes$Name;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/lws/protocol/Attributes$Name;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/laiwang/lws/protocol/Attributes$Name;->$VALUES:[Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v0}, [Lcom/laiwang/lws/protocol/Attributes$Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/lws/protocol/Attributes$Name;

    return-object v0
.end method
