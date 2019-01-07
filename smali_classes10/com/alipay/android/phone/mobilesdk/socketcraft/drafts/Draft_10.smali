.class public Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;
.super Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;
.source "Draft_10.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException;
    }
.end annotation


# static fields
.field static final synthetic f:Z


# instance fields
.field private g:Ljava/nio/ByteBuffer;

.field private final h:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;-><init>()V

    .line 61
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->h:Ljava/util/Random;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "seckey":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "acc":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 179
    .local v3, "sh1":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Liia;->a([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 176
    .end local v3    # "sh1":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static a(JI)[B
    .locals 6
    .param p0, "val"    # J
    .param p2, "bytecount"    # I

    .prologue
    .line 208
    new-array v0, p2, [B

    .line 209
    .local v0, "buffer":[B
    mul-int/lit8 v3, p2, 0x8

    add-int/lit8 v1, v3, -0x8

    .line 210
    .local v1, "highest":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 211
    mul-int/lit8 v3, v2, 0x8

    sub-int v3, v1, v3

    ushr-long v4, p0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-object v0
.end method

.method public static b(Lihd;)I
    .locals 4
    .param p0, "handshakedata"    # Lihd;

    .prologue
    const/4 v0, -0x1

    .line 43
    const-string/jumbo v2, "Sec-WebSocket-Version"

    invoke-interface {p0, v2}, Lihd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "vers":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 47
    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 50
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private c(Ljava/nio/ByteBuffer;)Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;
    .locals 25
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException;,
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    .line 299
    .local v14, "maxpacketsize":I
    const/16 v18, 0x2

    .line 300
    .local v18, "realpacketsize":I
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ge v14, v0, :cond_0

    .line 301
    new-instance v21, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException;

    const/16 v22, 0x2

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException;-><init>(Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;I)V

    throw v21

    .line 302
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 303
    .local v6, "b1":B
    shr-int/lit8 v21, v6, 0x8

    if-eqz v21, :cond_1

    const/4 v4, 0x1

    .line 304
    .local v4, "FIN":Z
    :goto_0
    and-int/lit8 v21, v6, 0x7f

    shr-int/lit8 v21, v21, 0x4

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v19, v0

    .line 305
    .local v19, "rsv":B
    if-eqz v19, :cond_2

    .line 306
    new-instance v21, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "bad rsv "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 303
    .end local v4    # "FIN":Z
    .end local v19    # "rsv":B
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 307
    .restart local v4    # "FIN":Z
    .restart local v19    # "rsv":B
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 308
    .local v7, "b2":B
    and-int/lit8 v21, v7, -0x80

    if-eqz v21, :cond_3

    const/4 v5, 0x1

    .line 309
    .local v5, "MASK":Z
    :goto_1
    and-int/lit8 v21, v7, 0x7f

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 310
    .local v17, "payloadlength":I
    and-int/lit8 v21, v6, 0xf

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    .line 1217
    packed-switch v21, :pswitch_data_0

    .line 1233
    :pswitch_0
    new-instance v22, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "unknow optcode "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 308
    .end local v5    # "MASK":Z
    .end local v17    # "payloadlength":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1219
    .restart local v5    # "MASK":Z
    .restart local v17    # "payloadlength":I
    :pswitch_1
    sget-object v15, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CONTINUOUS:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    .line 312
    .local v15, "optcode":Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;
    :goto_2
    if-nez v4, :cond_5

    .line 313
    sget-object v21, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->PING:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    move-object/from16 v0, v21

    if-eq v15, v0, :cond_4

    sget-object v21, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->PONG:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    move-object/from16 v0, v21

    if-eq v15, v0, :cond_4

    sget-object v21, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CLOSING:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    move-object/from16 v0, v21

    if-ne v15, v0, :cond_5

    .line 314
    :cond_4
    new-instance v21, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;

    const-string/jumbo v22, "control frames may no be fragmented"

    invoke-direct/range {v21 .. v22}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1221
    .end local v15    # "optcode":Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;
    :pswitch_2
    sget-object v15, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->TEXT:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    goto :goto_2

    .line 1223
    :pswitch_3
    sget-object v15, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->BINARY:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    goto :goto_2

    .line 1226
    :pswitch_4
    sget-object v15, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CLOSING:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    goto :goto_2

    .line 1228
    :pswitch_5
    sget-object v15, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->PING:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    goto :goto_2

    .line 1230
    :pswitch_6
    sget-object v15, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->PONG:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    goto :goto_2

    .line 318
    .restart local v15    # "optcode":Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;
    :cond_5
    if-ltz v17, :cond_6

    const/16 v21, 0x7d

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 321
    :cond_6
    sget-object v21, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->PING:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    move-object/from16 v0, v21

    if-eq v15, v0, :cond_7

    sget-object v21, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->PONG:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    move-object/from16 v0, v21

    if-eq v15, v0, :cond_7

    sget-object v21, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CLOSING:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    move-object/from16 v0, v21

    if-ne v15, v0, :cond_8

    .line 322
    :cond_7
    new-instance v21, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;

    const-string/jumbo v22, "more than 125 octets"

    invoke-direct/range {v21 .. v22}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 324
    :cond_8
    const/16 v21, 0x7e

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 325
    add-int/lit8 v18, v18, 0x2

    .line 326
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v14, v0, :cond_9

    .line 327
    new-instance v21, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException;

    const/16 v22, 0x4

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException;-><init>(Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;I)V

    throw v21

    .line 328
    :cond_9
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 329
    .local v20, "sizebytes":[B
    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v22

    aput-byte v22, v20, v21

    .line 330
    const/16 v21, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v22

    aput-byte v22, v20, v21

    .line 331
    new-instance v21, Ljava/math/BigInteger;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->intValue()I

    move-result v17

    .line 350
    .end local v20    # "sizebytes":[B
    :cond_a
    :goto_3
    if-eqz v5, :cond_f

    const/16 v21, 0x4

    :goto_4
    add-int v18, v18, v21

    .line 352
    add-int v18, v18, v17

    .line 354
    move/from16 v0, v18

    if-ge v14, v0, :cond_10

    .line 355
    new-instance v21, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException;-><init>(Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;I)V

    throw v21

    .line 333
    :cond_b
    add-int/lit8 v18, v18, 0x8

    .line 334
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v14, v0, :cond_c

    .line 335
    new-instance v21, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException;

    const/16 v22, 0xa

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException;-><init>(Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;I)V

    throw v21

    .line 336
    :cond_c
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v8, v0, [B

    .line 337
    .local v8, "bytes":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ge v10, v0, :cond_d

    .line 338
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v21

    aput-byte v21, v8, v10

    .line 337
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 340
    :cond_d
    new-instance v21, Ljava/math/BigInteger;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v12

    .line 341
    .local v12, "length":J
    const-wide/32 v22, 0x7fffffff

    cmp-long v21, v12, v22

    if-lez v21, :cond_e

    .line 342
    new-instance v21, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/LimitExedeedException;

    const-string/jumbo v22, "Payloadsize is to big..."

    invoke-direct/range {v21 .. v22}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/LimitExedeedException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 344
    :cond_e
    long-to-int v0, v12

    move/from16 v17, v0

    goto :goto_3

    .line 350
    .end local v8    # "bytes":[B
    .end local v10    # "i":I
    .end local v12    # "length":J
    :cond_f
    const/16 v21, 0x0

    goto :goto_4

    .line 357
    :cond_10
    invoke-static/range {v17 .. v17}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->a(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 358
    .local v16, "payload":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_11

    .line 359
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v11, v0, [B

    .line 360
    .local v11, "maskskey":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 361
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    move/from16 v0, v17

    if-ge v10, v0, :cond_12

    .line 362
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v21

    rem-int/lit8 v22, v10, 0x4

    aget-byte v22, v11, v22

    xor-int v21, v21, v22

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 361
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 365
    .end local v10    # "i":I
    .end local v11    # "maskskey":[B
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v22

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->limit()I

    move-result v23

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 366
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v21

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->limit()I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 370
    :cond_12
    sget-object v21, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CLOSING:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    move-object/from16 v0, v21

    if-ne v15, v0, :cond_13

    .line 371
    new-instance v9, Ligv;

    invoke-direct {v9}, Ligv;-><init>()V

    .line 377
    .local v9, "frame":Ligw;
    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 378
    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ligw;->a(Ljava/nio/ByteBuffer;)V

    .line 379
    return-object v9

    .line 373
    .end local v9    # "frame":Ligw;
    :cond_13
    new-instance v9, Ligx;

    invoke-direct {v9}, Ligx;-><init>()V

    .line 374
    .restart local v9    # "frame":Ligw;
    invoke-interface {v9, v4}, Ligw;->a(Z)V

    .line 375
    invoke-interface {v9, v15}, Ligw;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;)V

    goto :goto_7

    .line 1217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public a(Ligy;)Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    .locals 2
    .param p1, "handshakedata"    # Ligy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    invoke-static {p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->b(Lihd;)I

    move-result v0

    .line 81
    .local v0, "v":I
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 82
    :cond_0
    invoke-static {p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->a(Lihd;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    .line 83
    :goto_0
    return-object v1

    .line 82
    :cond_1
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    goto :goto_0

    .line 83
    :cond_2
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public final a(Ligy;Lihf;)Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    .locals 3
    .param p1, "request"    # Ligy;
    .param p2, "response"    # Lihf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    const-string/jumbo v2, "Sec-WebSocket-Key"

    invoke-interface {p1, v2}, Ligy;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Sec-WebSocket-Accept"

    invoke-interface {p2, v2}, Lihf;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    :cond_0
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    .line 74
    :goto_0
    return-object v2

    .line 68
    :cond_1
    const-string/jumbo v2, "Sec-WebSocket-Accept"

    invoke-interface {p2, v2}, Lihf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "seckey_answere":Ljava/lang/String;
    const-string/jumbo v2, "Sec-WebSocket-Key"

    invoke-interface {p1, v2}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "seckey_challenge":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    goto :goto_0

    .line 74
    :cond_2
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public a(Ligz;)Ligz;
    .locals 3
    .param p1, "request"    # Ligz;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    const-string/jumbo v1, "Upgrade"

    const-string/jumbo v2, "websocket"

    invoke-interface {p1, v1, v2}, Ligz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "Upgrade"

    invoke-interface {p1, v1, v2}, Ligz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v1, "Sec-WebSocket-Version"

    const-string/jumbo v2, "8"

    invoke-interface {p1, v1, v2}, Ligz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 189
    .local v0, "random":[B
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->h:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 190
    const-string/jumbo v1, "Sec-WebSocket-Key"

    invoke-static {v0}, Liia;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ligz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-object p1
.end method

.method public final a(Ligy;Lihg;)Liha;
    .locals 3
    .param p1, "request"    # Ligy;
    .param p2, "response"    # Lihg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 197
    const-string/jumbo v1, "Upgrade"

    const-string/jumbo v2, "websocket"

    invoke-interface {p2, v1, v2}, Lihg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "Connection"

    invoke-interface {p1, v2}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lihg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string/jumbo v1, "Switching Protocols"

    invoke-interface {p2, v1}, Lihg;->a(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v1, "Sec-WebSocket-Key"

    invoke-interface {p1, v1}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "seckey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 202
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;

    const-string/jumbo v2, "missing Sec-WebSocket-Key"

    invoke-direct {v1, v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_0
    const-string/jumbo v1, "Sec-WebSocket-Accept"

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lihg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-object p2
.end method

.method public final a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)Ljava/nio/ByteBuffer;
    .locals 13
    .param p1, "framedata"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    invoke-interface {p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->c()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 89
    .local v4, "mes":Ljava/nio/ByteBuffer;
    iget-object v9, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->d:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    sget-object v10, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->CLIENT:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    if-ne v9, v10, :cond_0

    const/4 v2, 0x1

    .line 90
    .local v2, "mask":Z
    :goto_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const/16 v10, 0x7d

    if-gt v9, v10, :cond_1

    const/4 v8, 0x1

    .line 91
    .local v8, "sizebytes":I
    :goto_1
    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    add-int/lit8 v9, v8, 0x1

    :goto_2
    add-int/lit8 v10, v9, 0x1

    if-eqz v2, :cond_4

    const/4 v9, 0x4

    :goto_3
    add-int/2addr v9, v10

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-interface {p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->f()Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    move-result-object v9

    .line 1155
    sget-object v10, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CONTINUOUS:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-ne v9, v10, :cond_5

    .line 1156
    const/4 v6, 0x0

    .line 93
    .local v6, "optcode":B
    :goto_4
    invoke-interface {p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->d()Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, -0x80

    :goto_5
    int-to-byte v5, v9

    .line 94
    .local v5, "one":B
    or-int v9, v5, v6

    int-to-byte v5, v9

    .line 95
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    int-to-long v10, v9

    invoke-static {v10, v11, v8}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->a(JI)[B

    move-result-object v7

    .line 97
    .local v7, "payloadlengthbytes":[B
    sget-boolean v9, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->f:Z

    if-nez v9, :cond_c

    array-length v9, v7

    if-eq v9, v8, :cond_c

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 89
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "mask":Z
    .end local v5    # "one":B
    .end local v6    # "optcode":B
    .end local v7    # "payloadlengthbytes":[B
    .end local v8    # "sizebytes":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 90
    .restart local v2    # "mask":Z
    :cond_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const v10, 0xffff

    if-gt v9, v10, :cond_2

    const/4 v8, 0x2

    goto :goto_1

    :cond_2
    const/16 v8, 0x8

    goto :goto_1

    .restart local v8    # "sizebytes":I
    :cond_3
    move v9, v8

    .line 91
    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 1157
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_5
    sget-object v10, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->TEXT:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-ne v9, v10, :cond_6

    .line 1158
    const/4 v6, 0x1

    goto :goto_4

    .line 1159
    :cond_6
    sget-object v10, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->BINARY:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-ne v9, v10, :cond_7

    .line 1160
    const/4 v6, 0x2

    goto :goto_4

    .line 1161
    :cond_7
    sget-object v10, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CLOSING:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-ne v9, v10, :cond_8

    .line 1162
    const/16 v6, 0x8

    goto :goto_4

    .line 1163
    :cond_8
    sget-object v10, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->PING:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-ne v9, v10, :cond_9

    .line 1164
    const/16 v6, 0x9

    goto :goto_4

    .line 1165
    :cond_9
    sget-object v10, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->PONG:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-ne v9, v10, :cond_a

    .line 1166
    const/16 v6, 0xa

    goto :goto_4

    .line 1167
    :cond_a
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Don\'t know how to handle "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 93
    .restart local v6    # "optcode":B
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 99
    .restart local v5    # "one":B
    .restart local v7    # "payloadlengthbytes":[B
    :cond_c
    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 100
    const/4 v9, 0x0

    aget-byte v10, v7, v9

    if-eqz v2, :cond_d

    const/16 v9, -0x80

    :goto_6
    or-int/2addr v9, v10

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 110
    :goto_7
    if-eqz v2, :cond_13

    .line 111
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 112
    .local v3, "maskkey":Ljava/nio/ByteBuffer;
    iget-object v9, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->h:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 115
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    rem-int/lit8 v10, v1, 0x4

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 100
    .end local v1    # "i":I
    .end local v3    # "maskkey":Ljava/nio/ByteBuffer;
    :cond_d
    const/4 v9, 0x0

    goto :goto_6

    .line 101
    :cond_e
    const/4 v9, 0x2

    if-ne v8, v9, :cond_10

    .line 102
    if-eqz v2, :cond_f

    const/16 v9, -0x80

    :goto_9
    or-int/lit8 v9, v9, 0x7e

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_7

    .line 102
    :cond_f
    const/4 v9, 0x0

    goto :goto_9

    .line 104
    :cond_10
    const/16 v9, 0x8

    if-ne v8, v9, :cond_12

    .line 105
    if-eqz v2, :cond_11

    const/16 v9, -0x80

    :goto_a
    or-int/lit8 v9, v9, 0x7f

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_7

    .line 105
    :cond_11
    const/4 v9, 0x0

    goto :goto_a

    .line 108
    :cond_12
    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "Size representation not supported/specified"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 118
    :cond_13
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 120
    :cond_14
    sget-boolean v9, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->f:Z

    if-nez v9, :cond_15

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-eqz v9, :cond_15

    new-instance v9, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(I)V

    throw v9

    .line 121
    :cond_15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 123
    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "mask"    # Z
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    new-instance v0, Ligx;

    invoke-direct {v0}, Ligx;-><init>()V

    .line 144
    .local v0, "curframe":Ligw;
    :try_start_0
    invoke-static {p1}, Liib;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ligw;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ligw;->a(Z)V

    .line 149
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->TEXT:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    invoke-interface {v0, v2}, Ligw;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;)V

    .line 150
    invoke-interface {v0, p2}, Ligw;->b(Z)V

    .line 151
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/NotSendableException;

    invoke-direct {v2, v1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final a(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
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
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/LimitExedeedException;,
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 239
    :goto_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 242
    .local v5, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->g:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_2

    .line 246
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 247
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 248
    .local v0, "available_next_byte_count":I
    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 250
    .local v3, "expected_next_byte_count":I
    if-le v3, v0, :cond_1

    .line 252
    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {v7, v8, v9, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 253
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 294
    .end local v0    # "available_next_byte_count":I
    .end local v3    # "expected_next_byte_count":I
    .end local v5    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    :cond_0
    :goto_1
    return-object v5

    .line 256
    .restart local v0    # "available_next_byte_count":I
    .restart local v3    # "expected_next_byte_count":I
    .restart local v5    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    :cond_1
    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {v7, v8, v9, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 257
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 259
    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v7}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->c(Ljava/nio/ByteBuffer;)Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    move-result-object v1

    .line 260
    .local v1, "cur":Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->g:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 280
    .end local v0    # "available_next_byte_count":I
    .end local v1    # "cur":Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;
    .end local v3    # "expected_next_byte_count":I
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 281
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 283
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->c(Ljava/nio/ByteBuffer;)Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    move-result-object v1

    .line 284
    .restart local v1    # "cur":Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 285
    .end local v1    # "cur":Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;
    :catch_0
    move-exception v2

    .line 287
    .local v2, "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 288
    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException;->getPreferedSize()I

    move-result v6

    .line 289
    .local v6, "pref":I
    invoke-static {v6}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->a(I)I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->g:Ljava/nio/ByteBuffer;

    .line 290
    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 263
    .end local v2    # "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException;
    .end local v6    # "pref":I
    :catch_1
    move-exception v2

    .line 265
    .restart local v2    # "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException;
    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    .line 269
    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10$IncompleteException;->getPreferedSize()I

    move-result v7

    invoke-static {v7}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->a(I)I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 270
    .local v4, "extendedframe":Ljava/nio/ByteBuffer;
    sget-boolean v7, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->f:Z

    if-nez v7, :cond_3

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    iget-object v8, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    if-gt v7, v8, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 271
    :cond_3
    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 272
    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 273
    iput-object v4, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->g:Ljava/nio/ByteBuffer;

    goto/16 :goto_0
.end method

.method public final a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 3
    .param p1, "binary"    # Ljava/nio/ByteBuffer;
    .param p2, "mask"    # Z
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    new-instance v0, Ligx;

    invoke-direct {v0}, Ligx;-><init>()V

    .line 130
    .local v0, "curframe":Ligw;
    :try_start_0
    invoke-interface {v0, p1}, Ligw;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ligw;->a(Z)V

    .line 135
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->BINARY:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    invoke-interface {v0, v2}, Ligw;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;)V

    .line 136
    invoke-interface {v0, p2}, Ligw;->b(Z)V

    .line 137
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/NotSendableException;

    invoke-direct {v2, v1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->g:Ljava/nio/ByteBuffer;

    .line 385
    return-void
.end method

.method public final b()Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;->TWOWAY:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;

    return-object v0
.end method

.method public c()Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;
    .locals 1

    .prologue
    .line 389
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;-><init>()V

    return-object v0
.end method
