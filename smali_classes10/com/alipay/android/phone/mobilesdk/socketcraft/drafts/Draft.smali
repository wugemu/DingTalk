.class public abstract Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;
.super Ljava/lang/Object;
.source "Draft.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;,
        Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static final c:[B


# instance fields
.field protected d:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

.field protected e:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x3e8

    sput v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a:I

    .line 38
    const/16 v0, 0x40

    sput v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->b:I

    .line 40
    const-string/jumbo v0, "<policy-file-request/>\u0000"

    invoke-static {v0}, Liib;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->c:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->d:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    .line 45
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->e:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    return-void
.end method

.method public static a(I)I
    .locals 3
    .param p0, "bytecount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/LimitExedeedException;,
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 208
    if-gez p0, :cond_0

    .line 209
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;

    const/16 v1, 0x3ea

    const-string/jumbo v2, "Negative count"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    return p0
.end method

.method public static a(Ljava/nio/ByteBuffer;Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;)Liha;
    .locals 12
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "role"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;,
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 75
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->c(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 77
    new-instance v6, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    add-int/lit16 v7, v7, 0x80

    invoke-direct {v6, v7}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;-><init>(I)V

    throw v6

    .line 79
    :cond_0
    const-string/jumbo v6, " "

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "firstLineTokens":[Ljava/lang/String;
    array-length v6, v1

    if-eq v6, v7, :cond_1

    .line 81
    new-instance v6, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;

    invoke-direct {v6}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;-><init>()V

    throw v6

    .line 84
    :cond_1
    sget-object v6, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->CLIENT:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    if-ne p1, v6, :cond_2

    .line 86
    new-instance v2, Lihc;

    invoke-direct {v2}, Lihc;-><init>()V

    .local v2, "handshake":Liha;
    move-object v5, v2

    .line 87
    check-cast v5, Lihg;

    .line 88
    .local v5, "serverhandshake":Lihg;
    aget-object v6, v1, v10

    invoke-static {v6}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    invoke-interface {v5, v6}, Lihg;->a(S)V

    .line 89
    aget-object v6, v1, v11

    invoke-interface {v5, v6}, Lihg;->a(Ljava/lang/String;)V

    .line 97
    .end local v5    # "serverhandshake":Lihg;
    :goto_0
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->c(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 98
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 99
    const-string/jumbo v6, ":"

    invoke-virtual {v3, v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "pair":[Ljava/lang/String;
    array-length v6, v4

    if-eq v6, v11, :cond_3

    .line 101
    new-instance v6, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;

    const-string/jumbo v7, "not an http header"

    invoke-direct {v6, v7}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 92
    .end local v2    # "handshake":Liha;
    .end local v4    # "pair":[Ljava/lang/String;
    :cond_2
    new-instance v0, Lihb;

    invoke-direct {v0}, Lihb;-><init>()V

    .line 93
    .local v0, "clienthandshake":Ligz;
    aget-object v6, v1, v10

    invoke-interface {v0, v6}, Ligz;->a(Ljava/lang/String;)V

    .line 94
    move-object v2, v0

    .restart local v2    # "handshake":Liha;
    goto :goto_0

    .line 102
    .end local v0    # "clienthandshake":Ligz;
    .restart local v4    # "pair":[Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    aget-object v6, v4, v6

    aget-object v7, v4, v10

    const-string/jumbo v8, "^ +"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Liha;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v4    # "pair":[Ljava/lang/String;
    :cond_4
    if-nez v3, :cond_5

    .line 106
    new-instance v6, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;

    invoke-direct {v6}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;-><init>()V

    throw v6

    .line 107
    :cond_5
    return-object v2
.end method

.method protected static a(Lihd;)Z
    .locals 2
    .param p0, "handshakedata"    # Lihd;

    .prologue
    .line 115
    const-string/jumbo v0, "Upgrade"

    invoke-interface {p0, v0}, Lihd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "websocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Connection"

    invoke-interface {p0, v0}, Lihd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 68
    .line 1048
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1050
    const/16 v1, 0x30

    .line 1051
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1053
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 1054
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1055
    const/16 v4, 0xd

    if-ne v1, v4, :cond_2

    const/16 v1, 0xa

    if-ne v2, v1, :cond_2

    .line 1056
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1057
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 69
    .local v0, "b":Ljava/nio/ByteBuffer;
    :goto_1
    if-nez v0, :cond_1

    move-object v1, v3

    :goto_2
    return-object v1

    .line 1063
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, v3

    .line 1064
    goto :goto_1

    .line 69
    .restart local v0    # "b":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v1, v5, v2}, Liib;->a([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .end local v0    # "b":Ljava/nio/ByteBuffer;
    :cond_2
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Ligy;)Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract a(Ligy;Lihf;)Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract a(Ligz;)Ligz;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract a(Ligy;Lihg;)Liha;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)Ljava/nio/ByteBuffer;
.end method

.method public final a(Lihd;Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;)Ljava/util/List;
    .locals 4
    .param p1, "handshakedata"    # Lihd;
    .param p2, "ownrole"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lihd;",
            "Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 153
    .line 1157
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1158
    instance-of v0, p1, Ligy;

    if-eqz v0, :cond_0

    .line 1159
    const-string/jumbo v0, "GET "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    .line 1160
    check-cast v0, Ligy;

    invoke-interface {v0}, Ligy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    const-string/jumbo v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    :goto_0
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    invoke-interface {p1}, Lihd;->b()Ljava/util/Iterator;

    move-result-object v2

    .line 1169
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1171
    invoke-interface {p1, v0}, Lihd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1172
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    const-string/jumbo v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1162
    :cond_0
    instance-of v0, p1, Lihf;

    if-eqz v0, :cond_1

    .line 1163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "HTTP/1.1 101 "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lihf;

    invoke-interface {v0}, Lihf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1165
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unknow role"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1177
    :cond_2
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Liib;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 1180
    invoke-interface {p1}, Lihd;->c()[B

    move-result-object v2

    .line 1181
    if-nez v2, :cond_4

    const/4 v0, 0x0

    :goto_2
    array-length v3, v1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1182
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1183
    if-eqz v2, :cond_3

    .line 1184
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1185
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1186
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 153
    return-object v0

    .line 1181
    :cond_4
    array-length v0, v2

    goto :goto_2
.end method

.method public abstract a(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a()V
.end method

.method public final a(Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;)V
    .locals 0
    .param p1, "role"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->d:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    .line 215
    return-void
.end method

.method public abstract b()Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;
.end method

.method public b(Ljava/nio/ByteBuffer;)Lihd;
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->d:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a(Ljava/nio/ByteBuffer;Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;)Liha;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;
.end method
