.class public final Lizo;
.super Lizr;
.source "ClientContext.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/laiwang/lws/protocol/LwsSession;

.field private final k:[B

.field private final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/laiwang/lws/protocol/LwsSession;)V
    .locals 0
    .param p1, "sni"    # Ljava/lang/String;
    .param p2, "pubKey"    # [B
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "session"    # Lcom/laiwang/lws/protocol/LwsSession;

    .prologue
    .line 23
    invoke-direct {p0}, Lizr;-><init>()V

    .line 24
    iput-object p1, p0, Lizo;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lizo;->k:[B

    .line 26
    iput-object p3, p0, Lizo;->l:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Lizv;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/lws/protocol/LwsException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 33
    iget-object v2, p0, Lizo;->a:Ljava/lang/String;

    invoke-static {v2}, Ljab;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    new-instance v2, Ljaa;

    invoke-direct {v2}, Ljaa;-><init>()V

    iput-object v2, p0, Lizo;->c:Ljaa;

    .line 36
    :try_start_0
    iget-object v2, p0, Lizo;->c:Ljaa;

    iget-object v3, p0, Lizo;->k:[B

    .line 1077
    const-string/jumbo v4, "X509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 1078
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 1079
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 2069
    const-string/jumbo v4, "MD5withRSA"

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    iput-object v4, v2, Ljaa;->d:Ljava/security/Signature;

    .line 2070
    iget-object v4, v2, Ljaa;->d:Ljava/security/Signature;

    invoke-virtual {v4, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 2072
    const-string/jumbo v4, "RSA/ECB/PKCS1PADDING"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    iput-object v4, v2, Ljaa;->a:Ljavax/crypto/Cipher;

    .line 2073
    iget-object v2, v2, Ljaa;->a:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    iget-object v2, p0, Lizo;->c:Ljaa;

    iget v3, p0, Lizo;->d:I

    .line 3008
    new-instance v1, Lizv;

    invoke-direct {v1, v2, v3}, Lizv;-><init>(Ljaa;I)V

    .line 43
    .local v1, "request":Lizv;
    iget-object v2, p0, Lizo;->b:Lcom/laiwang/lws/protocol/LwsSession;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lizo;->b:Lcom/laiwang/lws/protocol/LwsSession;

    invoke-virtual {v2}, Lcom/laiwang/lws/protocol/LwsSession;->getId()[B

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lizo;->b:Lcom/laiwang/lws/protocol/LwsSession;

    invoke-virtual {v2}, Lcom/laiwang/lws/protocol/LwsSession;->getVersion()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lizo;->b:Lcom/laiwang/lws/protocol/LwsSession;

    invoke-virtual {v2}, Lcom/laiwang/lws/protocol/LwsSession;->isExpire()Z

    move-result v2

    if-nez v2, :cond_3

    .line 45
    iget-object v2, p0, Lizo;->b:Lcom/laiwang/lws/protocol/LwsSession;

    invoke-virtual {v2}, Lcom/laiwang/lws/protocol/LwsSession;->getId()[B

    move-result-object v2

    .line 3037
    iget-object v3, v1, Lizv;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v4, Lcom/laiwang/lws/protocol/Attributes$Name;->SESSION_ID:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v3, v4, v2}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;[B)V

    .line 46
    iget-object v2, p0, Lizo;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lizv;->a(Ljava/lang/String;)V

    .line 48
    :try_start_1
    iget-object v2, p0, Lizo;->c:Ljaa;

    iget-object v3, p0, Lizo;->b:Lcom/laiwang/lws/protocol/LwsSession;

    invoke-virtual {v3}, Lcom/laiwang/lws/protocol/LwsSession;->getAesKey()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljaa;->c([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :cond_1
    :goto_0
    iget v2, p0, Lizo;->d:I

    if-lez v2, :cond_2

    .line 4164
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 4165
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 65
    iput v2, p0, Lizo;->h:I

    .line 66
    iget v2, p0, Lizo;->h:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lizv;->a(II)V

    .line 68
    :cond_2
    return-object v1

    .line 37
    .end local v1    # "request":Lizv;
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/laiwang/lws/protocol/LwsException;

    invoke-direct {v2, v0}, Lcom/laiwang/lws/protocol/LwsException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "request":Lizv;
    :catch_1
    move-exception v0

    .line 50
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Lcom/laiwang/lws/protocol/LwsException;

    invoke-direct {v2, v0}, Lcom/laiwang/lws/protocol/LwsException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lizo;->a:Ljava/lang/String;

    invoke-static {v2}, Ljab;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    :try_start_2
    iget-object v2, p0, Lizo;->c:Ljaa;

    .line 3093
    const-string/jumbo v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 3094
    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 3095
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 3096
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    iput-object v3, v2, Ljaa;->e:[B

    .line 3098
    iget-object v3, v2, Ljaa;->e:[B

    invoke-virtual {v2, v3}, Ljaa;->c([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    iget-object v2, p0, Lizo;->c:Ljaa;

    .line 3102
    iget-object v2, v2, Ljaa;->e:[B

    .line 59
    invoke-virtual {v1, v2}, Lizv;->c([B)V

    .line 60
    iget-object v2, p0, Lizo;->a:Ljava/lang/String;

    .line 4029
    iget-object v3, v1, Lizv;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v4, Lcom/laiwang/lws/protocol/Attributes$Name;->SNI:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v3, v4, v2}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lizo;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lizv;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :catch_2
    move-exception v0

    .line 57
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Lcom/laiwang/lws/protocol/LwsException;

    invoke-direct {v2, v0}, Lcom/laiwang/lws/protocol/LwsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final a(Ljava/nio/ByteBuffer;Ljava/util/List;Lizx;)V
    .locals 14
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "listener"    # Lizx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List",
            "<[B>;",
            "Lizx;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 127
    .local p2, "outs":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v8, p0, Lizo;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 128
    iget-object v8, p0, Lizo;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 129
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v7, "packets":Ljava/util/List;, "Ljava/util/List<Lizy;>;"
    iget-object v8, p0, Lizo;->c:Ljaa;

    iget-object v9, p0, Lizo;->j:Ljava/nio/ByteBuffer;

    invoke-static {v8, v9, v7}, Lizp;->a(Ljaa;Ljava/nio/ByteBuffer;Ljava/util/List;)V

    .line 132
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lizy;

    .line 133
    .local v6, "packet":Lizy;
    instance-of v8, v6, Lizt;

    if-eqz v8, :cond_1

    move-object v2, v6

    .line 134
    check-cast v2, Lizt;

    .line 6021
    .local v2, "data":Lizt;
    iget-object v8, v2, Lizt;->a:[B

    .line 135
    if-eqz v8, :cond_0

    .line 7021
    iget-object v8, v2, Lizt;->a:[B

    .line 135
    array-length v8, v8

    if-lez v8, :cond_0

    .line 140
    :try_start_0
    invoke-virtual {p0, v2}, Lizo;->a(Lizt;)[B
    :try_end_0
    .catch Lcom/laiwang/lws/protocol/LwsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 145
    .local v5, "message":[B
    if-eqz v5, :cond_0

    .line 146
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v5    # "message":[B
    :catch_0
    move-exception v8

    const-string/jumbo v8, "read data packet error"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Lizx;->onFailed(Ljava/lang/String;)V

    .line 166
    .end local v2    # "data":Lizt;
    .end local v6    # "packet":Lizy;
    :goto_1
    return-void

    .line 148
    .restart local v6    # "packet":Lizy;
    :cond_1
    instance-of v8, v6, Lizs;

    if-eqz v8, :cond_6

    move-object v1, v6

    .line 149
    check-cast v1, Lizs;

    .line 150
    .local v1, "controlRequest":Lizs;
    invoke-virtual {v1}, Lizs;->a()[B

    move-result-object v3

    .line 151
    .local v3, "extraData":[B
    if-eqz v3, :cond_2

    .line 152
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lizx;->onControl([B)V

    goto :goto_0

    .line 7027
    :cond_2
    iget-object v8, v1, Lizs;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v9, Lcom/laiwang/lws/protocol/Attributes$Name;->HEARTBEAT:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v8, v9}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;)I

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    .line 153
    :goto_2
    if-eqz v8, :cond_4

    .line 154
    invoke-interface/range {p3 .. p3}, Lizx;->onPing()V

    goto :goto_0

    .line 7027
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 7031
    :cond_4
    iget-object v8, v1, Lizs;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v9, Lcom/laiwang/lws/protocol/Attributes$Name;->HEARTBEAT:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v8, v9}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    const/4 v8, 0x1

    .line 155
    :goto_3
    if-eqz v8, :cond_0

    .line 156
    invoke-interface/range {p3 .. p3}, Lizx;->onPong()V

    goto :goto_0

    .line 7031
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 158
    .end local v1    # "controlRequest":Lizs;
    .end local v3    # "extraData":[B
    :cond_6
    instance-of v8, v6, Lizw;

    if-eqz v8, :cond_e

    .line 159
    check-cast v6, Lizw;

    .line 8025
    .end local v6    # "packet":Lizy;
    iget-object v8, v6, Lizw;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v9, Lcom/laiwang/lws/protocol/Attributes$Name;->RESULT:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v8, v9}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;)I

    move-result v9

    .line 7085
    const/16 v8, 0x19a

    if-ne v9, v8, :cond_7

    .line 7087
    const/4 v8, 0x0

    iput-object v8, p0, Lizo;->b:Lcom/laiwang/lws/protocol/LwsSession;

    .line 7088
    const/4 v8, 0x1

    iput v8, p0, Lizo;->d:I

    .line 7089
    invoke-interface/range {p3 .. p3}, Lizx;->refreshSession()V

    goto/16 :goto_0

    .line 7092
    :cond_7
    const/16 v8, 0xc8

    if-eq v9, v8, :cond_8

    const/16 v8, 0x19b

    if-eq v9, v8, :cond_8

    .line 7093
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "handShake failed, return code: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Lizx;->onFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7097
    :cond_8
    iget-object v8, p0, Lizo;->b:Lcom/laiwang/lws/protocol/LwsSession;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lizo;->b:Lcom/laiwang/lws/protocol/LwsSession;

    invoke-virtual {v8}, Lcom/laiwang/lws/protocol/LwsSession;->getId()[B

    move-result-object v8

    if-nez v8, :cond_a

    .line 7100
    :cond_9
    :try_start_1
    iget-object v8, p0, Lizo;->c:Ljaa;

    iget-object v10, p0, Lizo;->c:Ljaa;

    .line 8102
    iget-object v10, v10, Ljaa;->e:[B

    .line 7100
    invoke-virtual {v6}, Lizw;->e()[B

    move-result-object v11

    .line 9033
    iget-object v12, v8, Ljaa;->d:Ljava/security/Signature;

    invoke-virtual {v12, v10}, Ljava/security/Signature;->update([B)V

    .line 9034
    iget-object v8, v8, Ljaa;->d:Ljava/security/Signature;

    invoke-virtual {v8, v11}, Ljava/security/Signature;->verify([B)Z
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7107
    :cond_a
    iget v8, v6, Lizw;->c:I

    iput v8, p0, Lizo;->d:I

    .line 7108
    invoke-virtual {v6}, Lizw;->d()I

    move-result v8

    iput v8, p0, Lizo;->i:I

    .line 7109
    iget-object v8, v6, Lizw;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v10, Lcom/laiwang/lws/protocol/Attributes$Name;->SESSION_ID:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v8, v10}, Lcom/laiwang/lws/protocol/Attributes;->c(Lcom/laiwang/lws/protocol/Attributes$Name;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 7110
    invoke-virtual {v6}, Lizw;->f()[B

    move-result-object v10

    .line 7111
    const/4 v8, 0x0

    .line 7112
    iget-object v11, v6, Lizw;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v12, Lcom/laiwang/lws/protocol/Attributes$Name;->EXPIRE:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v11, v12}, Lcom/laiwang/lws/protocol/Attributes;->c(Lcom/laiwang/lws/protocol/Attributes$Name;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 10033
    iget-object v8, v6, Lizw;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v11, Lcom/laiwang/lws/protocol/Attributes$Name;->EXPIRE:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v8, v11}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;)I

    move-result v8

    .line 7115
    :cond_b
    if-eqz v10, :cond_c

    .line 7116
    new-instance v11, Lcom/laiwang/lws/protocol/LwsSession;

    iget-object v12, p0, Lizo;->c:Ljaa;

    .line 10102
    iget-object v12, v12, Ljaa;->e:[B

    .line 7116
    iget v13, p0, Lizo;->d:I

    invoke-direct {v11, v10, v12, v8, v13}, Lcom/laiwang/lws/protocol/LwsSession;-><init>([B[BII)V

    iput-object v11, p0, Lizo;->b:Lcom/laiwang/lws/protocol/LwsSession;

    .line 7119
    :cond_c
    const/16 v8, 0x19b

    if-ne v8, v9, :cond_d

    .line 7120
    invoke-interface/range {p3 .. p3}, Lizx;->reAuth()V

    goto/16 :goto_0

    .line 7102
    :catch_1
    move-exception v8

    const-string/jumbo v8, "handShake failed, aeskey verify failed"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Lizx;->onFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7123
    :cond_d
    invoke-interface/range {p3 .. p3}, Lizx;->onHandshakeDone()V

    goto/16 :goto_0

    .line 161
    .restart local v6    # "packet":Lizy;
    :cond_e
    const-string/jumbo v8, "read package error"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Lizx;->onFailed(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 165
    .end local v6    # "packet":Lizy;
    :cond_f
    iget-object v8, p0, Lizo;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto/16 :goto_1
.end method

.method public final b()Lizs;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 72
    new-instance v0, Lizs;

    iget-object v1, p0, Lizo;->c:Ljaa;

    iget v2, p0, Lizo;->d:I

    invoke-direct {v0, v1, v2}, Lizs;-><init>(Ljaa;I)V

    .line 5019
    .local v0, "control":Lizs;
    iget-object v1, v0, Lizs;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->HEARTBEAT:Lcom/laiwang/lws/protocol/Attributes$Name;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;I)V

    .line 74
    return-object v0
.end method

.method public final c()Lizs;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 78
    new-instance v0, Lizs;

    iget-object v1, p0, Lizo;->c:Ljaa;

    iget v2, p0, Lizo;->d:I

    invoke-direct {v0, v1, v2}, Lizs;-><init>(Ljaa;I)V

    .line 5023
    .local v0, "control":Lizs;
    iget-object v1, v0, Lizs;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->HEARTBEAT:Lcom/laiwang/lws/protocol/Attributes$Name;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;I)V

    .line 80
    return-object v0
.end method

.method public final d()Ljaa;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lizo;->c:Ljaa;

    return-object v0
.end method
