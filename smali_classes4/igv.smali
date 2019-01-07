.class public final Ligv;
.super Ligx;
.source "CloseFrameBuilder.java"

# interfaces
.implements Ligu;


# static fields
.field static final a:Ljava/nio/ByteBuffer;


# instance fields
.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Ligv;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CLOSING:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    invoke-direct {p0, v0}, Ligx;-><init>(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;)V

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ligv;->a(Z)V

    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CLOSING:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    invoke-direct {p0, v0}, Ligx;-><init>(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ligv;->a(Z)V

    .line 24
    const/16 v0, 0x3e8

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Ligv;->a(ILjava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "m"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CLOSING:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    invoke-direct {p0, v0}, Ligx;-><init>(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ligv;->a(Z)V

    .line 30
    invoke-direct {p0, p1, p2}, Ligv;->a(ILjava/lang/String;)V

    .line 31
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "m"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 34
    if-nez p2, :cond_0

    .line 35
    const-string/jumbo p2, ""

    .line 38
    :cond_0
    const/16 v3, 0x3f7

    if-ne p1, v3, :cond_1

    .line 39
    const/16 p1, 0x3ed

    .line 40
    const-string/jumbo p2, ""

    .line 42
    :cond_1
    const/16 v3, 0x3ed

    if-ne p1, v3, :cond_2

    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 44
    new-instance v3, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;

    const/16 v4, 0x3ea

    const-string/jumbo v5, "A close frame must have a closecode if it has a reason"

    invoke-direct {v3, v4, v5}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 49
    :cond_2
    invoke-static {p2}, Liib;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 50
    .local v1, "by":[B
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 51
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    array-length v3, v1

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 54
    .local v2, "pay":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 57
    invoke-virtual {p0, v2}, Ligv;->a(Ljava/nio/ByteBuffer;)V

    .line 58
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "by":[B
    .end local v2    # "pay":Ljava/nio/ByteBuffer;
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Ligv;->f:I

    return v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/16 v3, 0x3ed

    .line 112
    invoke-super {p0, p1}, Ligx;->a(Ljava/nio/ByteBuffer;)V

    .line 1061
    iput v3, p0, Ligv;->f:I

    .line 1062
    invoke-super {p0}, Ligx;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1063
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 1064
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v2, :cond_1

    .line 1065
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1066
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1067
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1068
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1069
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Ligv;->f:I

    .line 1071
    iget v1, p0, Ligv;->f:I

    const/16 v2, 0x3ee

    if-eq v1, v2, :cond_0

    iget v1, p0, Ligv;->f:I

    const/16 v2, 0x3f7

    if-eq v1, v2, :cond_0

    iget v1, p0, Ligv;->f:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Ligv;->f:I

    const/16 v2, 0x1387

    if-gt v1, v2, :cond_0

    iget v1, p0, Ligv;->f:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_0

    iget v1, p0, Ligv;->f:I

    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_1

    .line 1072
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "closecode must not be sent over the wire: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Ligv;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1075
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 1084
    iget v0, p0, Ligv;->f:I

    if-ne v0, v3, :cond_2

    .line 1085
    invoke-super {p0}, Ligx;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Liib;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ligv;->g:Ljava/lang/String;

    .line 1096
    :goto_0
    return-void

    .line 1087
    :cond_2
    invoke-super {p0}, Ligx;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1088
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 1090
    :try_start_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1091
    invoke-static {v1}, Liib;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ligv;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    :try_start_1
    new-instance v3, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;

    invoke-direct {v3, v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ligv;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/nio/ByteBuffer;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 118
    iget v0, p0, Ligv;->f:I

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_0

    .line 119
    sget-object v0, Ligv;->a:Ljava/nio/ByteBuffer;

    .line 120
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ligx;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ligx;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ligv;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
