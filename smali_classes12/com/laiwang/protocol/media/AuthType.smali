.class public final enum Lcom/laiwang/protocol/media/AuthType;
.super Ljava/lang/Enum;
.source "AuthType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/media/AuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laiwang/protocol/media/AuthType;

.field public static final enum CDN_ONLY:Lcom/laiwang/protocol/media/AuthType;

.field public static final enum NO_AUTH:Lcom/laiwang/protocol/media/AuthType;

.field public static final enum ONLY_INTERNAL_AUTH:Lcom/laiwang/protocol/media/AuthType;

.field public static final enum ONLY_LOGIN_AUTH:Lcom/laiwang/protocol/media/AuthType;

.field public static final enum ONLY_SERVICE_AUTH:Lcom/laiwang/protocol/media/AuthType;

.field public static final enum STRICT_AUTH:Lcom/laiwang/protocol/media/AuthType;

.field public static final enum TEMP_AUTH:Lcom/laiwang/protocol/media/AuthType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/laiwang/protocol/media/AuthType;

    const-string/jumbo v1, "NO_AUTH"

    invoke-direct {v0, v1, v4, v4}, Lcom/laiwang/protocol/media/AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/AuthType;->NO_AUTH:Lcom/laiwang/protocol/media/AuthType;

    new-instance v0, Lcom/laiwang/protocol/media/AuthType;

    const-string/jumbo v1, "STRICT_AUTH"

    invoke-direct {v0, v1, v5, v5}, Lcom/laiwang/protocol/media/AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/AuthType;->STRICT_AUTH:Lcom/laiwang/protocol/media/AuthType;

    new-instance v0, Lcom/laiwang/protocol/media/AuthType;

    const-string/jumbo v1, "ONLY_LOGIN_AUTH"

    invoke-direct {v0, v1, v6, v6}, Lcom/laiwang/protocol/media/AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/AuthType;->ONLY_LOGIN_AUTH:Lcom/laiwang/protocol/media/AuthType;

    new-instance v0, Lcom/laiwang/protocol/media/AuthType;

    const-string/jumbo v1, "ONLY_INTERNAL_AUTH"

    invoke-direct {v0, v1, v7, v7}, Lcom/laiwang/protocol/media/AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/AuthType;->ONLY_INTERNAL_AUTH:Lcom/laiwang/protocol/media/AuthType;

    new-instance v0, Lcom/laiwang/protocol/media/AuthType;

    const-string/jumbo v1, "TEMP_AUTH"

    invoke-direct {v0, v1, v8, v8}, Lcom/laiwang/protocol/media/AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/AuthType;->TEMP_AUTH:Lcom/laiwang/protocol/media/AuthType;

    new-instance v0, Lcom/laiwang/protocol/media/AuthType;

    const-string/jumbo v1, "ONLY_SERVICE_AUTH"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/AuthType;->ONLY_SERVICE_AUTH:Lcom/laiwang/protocol/media/AuthType;

    new-instance v0, Lcom/laiwang/protocol/media/AuthType;

    const-string/jumbo v1, "CDN_ONLY"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/media/AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/media/AuthType;->CDN_ONLY:Lcom/laiwang/protocol/media/AuthType;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/laiwang/protocol/media/AuthType;

    sget-object v1, Lcom/laiwang/protocol/media/AuthType;->NO_AUTH:Lcom/laiwang/protocol/media/AuthType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/protocol/media/AuthType;->STRICT_AUTH:Lcom/laiwang/protocol/media/AuthType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/protocol/media/AuthType;->ONLY_LOGIN_AUTH:Lcom/laiwang/protocol/media/AuthType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laiwang/protocol/media/AuthType;->ONLY_INTERNAL_AUTH:Lcom/laiwang/protocol/media/AuthType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/laiwang/protocol/media/AuthType;->TEMP_AUTH:Lcom/laiwang/protocol/media/AuthType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/laiwang/protocol/media/AuthType;->ONLY_SERVICE_AUTH:Lcom/laiwang/protocol/media/AuthType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/laiwang/protocol/media/AuthType;->CDN_ONLY:Lcom/laiwang/protocol/media/AuthType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/laiwang/protocol/media/AuthType;->$VALUES:[Lcom/laiwang/protocol/media/AuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/laiwang/protocol/media/AuthType;->value:I

    .line 15
    return-void
.end method

.method public static getAuthType(I)Lcom/laiwang/protocol/media/AuthType;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 34
    packed-switch p0, :pswitch_data_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported auth type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :pswitch_0
    sget-object v0, Lcom/laiwang/protocol/media/AuthType;->NO_AUTH:Lcom/laiwang/protocol/media/AuthType;

    .line 41
    :goto_0
    return-object v0

    .line 36
    :pswitch_1
    sget-object v0, Lcom/laiwang/protocol/media/AuthType;->STRICT_AUTH:Lcom/laiwang/protocol/media/AuthType;

    goto :goto_0

    .line 37
    :pswitch_2
    sget-object v0, Lcom/laiwang/protocol/media/AuthType;->ONLY_LOGIN_AUTH:Lcom/laiwang/protocol/media/AuthType;

    goto :goto_0

    .line 38
    :pswitch_3
    sget-object v0, Lcom/laiwang/protocol/media/AuthType;->ONLY_INTERNAL_AUTH:Lcom/laiwang/protocol/media/AuthType;

    goto :goto_0

    .line 39
    :pswitch_4
    sget-object v0, Lcom/laiwang/protocol/media/AuthType;->TEMP_AUTH:Lcom/laiwang/protocol/media/AuthType;

    goto :goto_0

    .line 40
    :pswitch_5
    sget-object v0, Lcom/laiwang/protocol/media/AuthType;->ONLY_SERVICE_AUTH:Lcom/laiwang/protocol/media/AuthType;

    goto :goto_0

    .line 41
    :pswitch_6
    sget-object v0, Lcom/laiwang/protocol/media/AuthType;->CDN_ONLY:Lcom/laiwang/protocol/media/AuthType;

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getAuthType(Ljava/lang/String;)Lcom/laiwang/protocol/media/AuthType;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 23
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unsupported auth name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 25
    :cond_1
    invoke-static {}, Lcom/laiwang/protocol/media/AuthType;->values()[Lcom/laiwang/protocol/media/AuthType;

    move-result-object v0

    .local v0, "arr$":[Lcom/laiwang/protocol/media/AuthType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 26
    .local v1, "e":Lcom/laiwang/protocol/media/AuthType;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/AuthType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 27
    return-object v1

    .line 25
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "e":Lcom/laiwang/protocol/media/AuthType;
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unsupported auth name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/media/AuthType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/laiwang/protocol/media/AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/media/AuthType;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/media/AuthType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/laiwang/protocol/media/AuthType;->$VALUES:[Lcom/laiwang/protocol/media/AuthType;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/media/AuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/media/AuthType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/laiwang/protocol/media/AuthType;->value:I

    return v0
.end method
