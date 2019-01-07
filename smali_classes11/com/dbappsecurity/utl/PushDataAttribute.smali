.class public final enum Lcom/dbappsecurity/utl/PushDataAttribute;
.super Ljava/lang/Enum;
.source "PushDataAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dbappsecurity/utl/PushDataAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dbappsecurity/utl/PushDataAttribute;

.field public static final enum data:Lcom/dbappsecurity/utl/PushDataAttribute;

.field public static final enum datalen:Lcom/dbappsecurity/utl/PushDataAttribute;

.field public static final enum keyclear:Lcom/dbappsecurity/utl/PushDataAttribute;

.field public static final enum keyupdate:Lcom/dbappsecurity/utl/PushDataAttribute;

.field public static final enum moduledisable:Lcom/dbappsecurity/utl/PushDataAttribute;

.field public static final enum moduleenable:Lcom/dbappsecurity/utl/PushDataAttribute;

.field public static final enum privateupdate:Lcom/dbappsecurity/utl/PushDataAttribute;

.field public static final enum type:Lcom/dbappsecurity/utl/PushDataAttribute;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    new-instance v0, Lcom/dbappsecurity/utl/PushDataAttribute;

    const-string/jumbo v1, "data"

    const-string/jumbo v2, "data"

    invoke-direct {v0, v1, v4, v2}, Lcom/dbappsecurity/utl/PushDataAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/PushDataAttribute;->data:Lcom/dbappsecurity/utl/PushDataAttribute;

    .line 23
    new-instance v0, Lcom/dbappsecurity/utl/PushDataAttribute;

    const-string/jumbo v1, "datalen"

    const-string/jumbo v2, "datalen"

    invoke-direct {v0, v1, v5, v2}, Lcom/dbappsecurity/utl/PushDataAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/PushDataAttribute;->datalen:Lcom/dbappsecurity/utl/PushDataAttribute;

    .line 25
    new-instance v0, Lcom/dbappsecurity/utl/PushDataAttribute;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "type"

    invoke-direct {v0, v1, v6, v2}, Lcom/dbappsecurity/utl/PushDataAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/PushDataAttribute;->type:Lcom/dbappsecurity/utl/PushDataAttribute;

    .line 26
    new-instance v0, Lcom/dbappsecurity/utl/PushDataAttribute;

    const-string/jumbo v1, "keyupdate"

    const-string/jumbo v2, "keyupdate"

    invoke-direct {v0, v1, v7, v2}, Lcom/dbappsecurity/utl/PushDataAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/PushDataAttribute;->keyupdate:Lcom/dbappsecurity/utl/PushDataAttribute;

    .line 27
    new-instance v0, Lcom/dbappsecurity/utl/PushDataAttribute;

    const-string/jumbo v1, "privateupdate"

    const-string/jumbo v2, "privateupdate"

    invoke-direct {v0, v1, v8, v2}, Lcom/dbappsecurity/utl/PushDataAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/PushDataAttribute;->privateupdate:Lcom/dbappsecurity/utl/PushDataAttribute;

    .line 28
    new-instance v0, Lcom/dbappsecurity/utl/PushDataAttribute;

    const-string/jumbo v1, "keyclear"

    const/4 v2, 0x5

    const-string/jumbo v3, "keyclear"

    invoke-direct {v0, v1, v2, v3}, Lcom/dbappsecurity/utl/PushDataAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/PushDataAttribute;->keyclear:Lcom/dbappsecurity/utl/PushDataAttribute;

    .line 29
    new-instance v0, Lcom/dbappsecurity/utl/PushDataAttribute;

    const-string/jumbo v1, "moduleenable"

    const/4 v2, 0x6

    const-string/jumbo v3, "moduleenable"

    invoke-direct {v0, v1, v2, v3}, Lcom/dbappsecurity/utl/PushDataAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/PushDataAttribute;->moduleenable:Lcom/dbappsecurity/utl/PushDataAttribute;

    .line 30
    new-instance v0, Lcom/dbappsecurity/utl/PushDataAttribute;

    const-string/jumbo v1, "moduledisable"

    const/4 v2, 0x7

    const-string/jumbo v3, "moduledisable"

    invoke-direct {v0, v1, v2, v3}, Lcom/dbappsecurity/utl/PushDataAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/PushDataAttribute;->moduledisable:Lcom/dbappsecurity/utl/PushDataAttribute;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dbappsecurity/utl/PushDataAttribute;

    sget-object v1, Lcom/dbappsecurity/utl/PushDataAttribute;->data:Lcom/dbappsecurity/utl/PushDataAttribute;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dbappsecurity/utl/PushDataAttribute;->datalen:Lcom/dbappsecurity/utl/PushDataAttribute;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dbappsecurity/utl/PushDataAttribute;->type:Lcom/dbappsecurity/utl/PushDataAttribute;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dbappsecurity/utl/PushDataAttribute;->keyupdate:Lcom/dbappsecurity/utl/PushDataAttribute;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dbappsecurity/utl/PushDataAttribute;->privateupdate:Lcom/dbappsecurity/utl/PushDataAttribute;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/dbappsecurity/utl/PushDataAttribute;->keyclear:Lcom/dbappsecurity/utl/PushDataAttribute;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dbappsecurity/utl/PushDataAttribute;->moduleenable:Lcom/dbappsecurity/utl/PushDataAttribute;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dbappsecurity/utl/PushDataAttribute;->moduledisable:Lcom/dbappsecurity/utl/PushDataAttribute;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dbappsecurity/utl/PushDataAttribute;->$VALUES:[Lcom/dbappsecurity/utl/PushDataAttribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/dbappsecurity/utl/PushDataAttribute;->key:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dbappsecurity/utl/PushDataAttribute;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/dbappsecurity/utl/PushDataAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dbappsecurity/utl/PushDataAttribute;

    return-object v0
.end method

.method public static values()[Lcom/dbappsecurity/utl/PushDataAttribute;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/dbappsecurity/utl/PushDataAttribute;->$VALUES:[Lcom/dbappsecurity/utl/PushDataAttribute;

    invoke-virtual {v0}, [Lcom/dbappsecurity/utl/PushDataAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dbappsecurity/utl/PushDataAttribute;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dbappsecurity/utl/PushDataAttribute;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dbappsecurity/utl/PushDataAttribute;->key:Ljava/lang/String;

    .line 44
    return-void
.end method
