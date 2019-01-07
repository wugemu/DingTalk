.class public Lorg/altbeacon/beacon/Identifier;
.super Ljava/lang/Object;
.source "Identifier.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/altbeacon/beacon/Identifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final DECIMAL_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEX_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEX_PATTERN_NO_PREFIX:Ljava/util/regex/Pattern;

.field private static final MAX_INTEGER:I = 0xffff

.field private static final UUID_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "^0x[0-9A-Fa-f]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Identifier;->HEX_PATTERN:Ljava/util/regex/Pattern;

    .line 23
    const-string/jumbo v0, "^[0-9A-Fa-f]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Identifier;->HEX_PATTERN_NO_PREFIX:Ljava/util/regex/Pattern;

    .line 24
    const-string/jumbo v0, "^0|[1-9][0-9]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Identifier;->DECIMAL_PATTERN:Ljava/util/regex/Pattern;

    .line 26
    const-string/jumbo v0, "^[0-9A-Fa-f]{8}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{12}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Identifier;->UUID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/Identifier;)V
    .locals 2
    .param p1, "identifier"    # Lorg/altbeacon/beacon/Identifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    if-nez p1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Identifiers cannot be constructed from null pointers but \"identifier\" is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p1, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    iput-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    .line 215
    return-void
.end method

.method protected constructor <init>([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    if-nez p1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Identifiers cannot be constructed from null pointers but \"value\" is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iput-object p1, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    .line 226
    return-void
.end method

.method public static fromBytes([BIIZ)Lorg/altbeacon/beacon/Identifier;
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "littleEndian"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 172
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Identifiers cannot be constructed from null pointers but \"bytes\" is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_0
    if-ltz p1, :cond_1

    array-length v1, p0

    if-le p1, v1, :cond_2

    .line 175
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v2, "start < 0 || start > bytes.length"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_2
    array-length v1, p0

    if-le p2, v1, :cond_3

    .line 178
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v2, "end > bytes.length"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_3
    if-le p1, p2, :cond_4

    .line 181
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "start > end"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_4
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 185
    .local v0, "byteRange":[B
    if-eqz p3, :cond_5

    .line 186
    invoke-static {v0}, Lorg/altbeacon/beacon/Identifier;->reverseArray([B)V

    .line 188
    :cond_5
    new-instance v1, Lorg/altbeacon/beacon/Identifier;

    invoke-direct {v1, v0}, Lorg/altbeacon/beacon/Identifier;-><init>([B)V

    return-object v1
.end method

.method public static fromInt(I)Lorg/altbeacon/beacon/Identifier;
    .locals 3
    .param p0, "intValue"    # I

    .prologue
    .line 146
    if-ltz p0, :cond_0

    const v1, 0xffff

    if-le p0, v1, :cond_1

    .line 147
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Identifiers can only be constructed from integers between 0 and 65535 (inclusive)."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 152
    .local v0, "newValue":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 153
    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 155
    new-instance v1, Lorg/altbeacon/beacon/Identifier;

    invoke-direct {v1, v0}, Lorg/altbeacon/beacon/Identifier;-><init>([B)V

    return-object v1
.end method

.method public static fromLong(JI)Lorg/altbeacon/beacon/Identifier;
    .locals 4
    .param p0, "longValue"    # J
    .param p2, "desiredByteLength"    # I

    .prologue
    .line 129
    if-gez p2, :cond_0

    .line 130
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Identifier length must be > 0."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_0
    new-array v1, p2, [B

    .line 133
    .local v1, "newValue":[B
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 134
    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 135
    const/16 v2, 0x8

    shr-long/2addr p0, v2

    .line 133
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 137
    :cond_1
    new-instance v2, Lorg/altbeacon/beacon/Identifier;

    invoke-direct {v2, v1}, Lorg/altbeacon/beacon/Identifier;-><init>([B)V

    return-object v2
.end method

.method public static fromUuid(Ljava/util/UUID;)Lorg/altbeacon/beacon/Identifier;
    .locals 4
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 197
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 198
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 199
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 200
    new-instance v1, Lorg/altbeacon/beacon/Identifier;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/altbeacon/beacon/Identifier;-><init>([B)V

    return-object v1
.end method

.method public static parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;
    .locals 1
    .param p0, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;I)Lorg/altbeacon/beacon/Identifier;
    .locals 4
    .param p0, "stringValue"    # Ljava/lang/String;
    .param p1, "desiredByteLength"    # I

    .prologue
    const/4 v3, 0x2

    .line 65
    if-nez p0, :cond_0

    .line 66
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Identifiers cannot be constructed from null pointers but \"stringValue\" is null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_0
    sget-object v2, Lorg/altbeacon/beacon/Identifier;->HEX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/altbeacon/beacon/Identifier;->parseHex(Ljava/lang/String;I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    .line 94
    :goto_0
    return-object v2

    .line 73
    :cond_1
    sget-object v2, Lorg/altbeacon/beacon/Identifier;->UUID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/altbeacon/beacon/Identifier;->parseHex(Ljava/lang/String;I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    goto :goto_0

    .line 77
    :cond_2
    sget-object v2, Lorg/altbeacon/beacon/Identifier;->DECIMAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 80
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    .local v1, "value":I
    if-lez p1, :cond_3

    if-ne p1, v3, :cond_4

    .line 86
    :cond_3
    invoke-static {v1}, Lorg/altbeacon/beacon/Identifier;->fromInt(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    goto :goto_0

    .line 82
    .end local v1    # "value":I
    :catch_0
    move-exception v0

    .line 83
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unable to parse Identifier in decimal format."

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 89
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v1    # "value":I
    :cond_4
    int-to-long v2, v1

    invoke-static {v2, v3, p1}, Lorg/altbeacon/beacon/Identifier;->fromLong(JI)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    goto :goto_0

    .line 93
    .end local v1    # "value":I
    :cond_5
    sget-object v2, Lorg/altbeacon/beacon/Identifier;->HEX_PATTERN_NO_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 94
    invoke-static {p0, p1}, Lorg/altbeacon/beacon/Identifier;->parseHex(Ljava/lang/String;I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    goto :goto_0

    .line 97
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unable to parse Identifier."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseHex(Ljava/lang/String;I)Lorg/altbeacon/beacon/Identifier;
    .locals 7
    .param p0, "identifierString"    # Ljava/lang/String;
    .param p1, "desiredByteLength"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    const-string/jumbo v4, ""

    .line 102
    .local v4, "str":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 103
    if-lez p1, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-ge p1, v5, :cond_0

    .line 104
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v6, p1, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 106
    :cond_0
    if-lez p1, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le p1, v5, :cond_3

    .line 107
    mul-int/lit8 v5, p1, 0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v0, v5, v6

    .line 108
    .local v0, "extraCharsToAdd":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v5, v0, :cond_2

    .line 110
    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 101
    .end local v0    # "extraCharsToAdd":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "0"

    goto :goto_0

    .line 112
    .restart local v0    # "extraCharsToAdd":I
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    .end local v0    # "extraCharsToAdd":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v2, v5, [B

    .line 116
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v5, v2

    if-ge v1, v5, :cond_4

    .line 117
    mul-int/lit8 v5, v1, 0x2

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 119
    :cond_4
    new-instance v5, Lorg/altbeacon/beacon/Identifier;

    invoke-direct {v5, v2}, Lorg/altbeacon/beacon/Identifier;-><init>([B)V

    return-object v5
.end method

.method private static reverseArray([B)V
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_0

    .line 283
    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 284
    .local v1, "mirroredIndex":I
    aget-byte v2, p0, v0

    .line 285
    .local v2, "tmp":B
    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    .line 286
    aput-byte v2, p0, v1

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "mirroredIndex":I
    .end local v2    # "tmp":B
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lorg/altbeacon/beacon/Identifier;

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/Identifier;->compareTo(Lorg/altbeacon/beacon/Identifier;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/altbeacon/beacon/Identifier;)I
    .locals 5
    .param p1, "that"    # Lorg/altbeacon/beacon/Identifier;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 380
    iget-object v3, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v3, v3

    iget-object v4, p1, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v4, v4

    if-eq v3, v4, :cond_2

    .line 381
    iget-object v3, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v3, v3

    iget-object v4, p1, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 381
    goto :goto_0

    .line 383
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 384
    iget-object v3, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    aget-byte v3, v3, v0

    iget-object v4, p1, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_3

    .line 385
    iget-object v3, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    aget-byte v3, v3, v0

    iget-object v4, p1, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    aget-byte v4, v4, v0

    if-lt v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 383
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 388
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "that"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 311
    instance-of v1, p1, Lorg/altbeacon/beacon/Identifier;

    if-nez v1, :cond_0

    .line 312
    const/4 v1, 0x0

    .line 315
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 314
    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    .line 315
    .local v0, "thatIdentifier":Lorg/altbeacon/beacon/Identifier;
    iget-object v1, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    iget-object v2, v0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public getByteCount()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toByteArrayOfSpecifiedEndianness(Z)[B
    .locals 3
    .param p1, "bigEndian"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 272
    iget-object v1, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    iget-object v2, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 274
    .local v0, "copy":[B
    if-nez p1, :cond_0

    .line 275
    invoke-static {v0}, Lorg/altbeacon/beacon/Identifier;->reverseArray([B)V

    .line 278
    :cond_0
    return-object v0
.end method

.method public toHexString()Ljava/lang/String;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 324
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v4, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-byte v0, v4, v2

    .line 326
    .local v0, "item":B
    const-string/jumbo v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "item":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toInt()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 253
    iget-object v2, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v2, v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 254
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Only supported for Identifiers with max byte length of 2"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :cond_0
    const/4 v1, 0x0

    .line 258
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 259
    iget-object v2, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 238
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 239
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Identifier;->toInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 242
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Identifier;->toUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Identifier;->toHexString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toUuid()Ljava/util/UUID;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 351
    iget-object v1, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    array-length v1, v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 352
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Only Identifiers backed by a byte array with length of exactly 16 can be UUIDs."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_0
    iget-object v1, p0, Lorg/altbeacon/beacon/Identifier;->mValue:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    .line 355
    .local v0, "buf":Ljava/nio/LongBuffer;
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v1
.end method

.method public toUuidString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Identifier;->toUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
