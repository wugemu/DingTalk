.class public interface abstract Liwe;
.super Ljava/lang/Object;
.source "Cryptor.java"


# virtual methods
.method public abstract a(IILjava/io/InputStream;Ljava/io/OutputStream;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidParameterSpecException;,
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dingtalk/cryptokit/InvalidIvException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract a([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/KeyNotSetException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation
.end method

.method public abstract b([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/KeyNotSetException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Lcom/dingtalk/cryptokit/InvalidIvException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method
