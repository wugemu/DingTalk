.class public final Lkmj;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkmj$a;,
        Lkmj$b;
    }
.end annotation


# static fields
.field public static final a:Lkmj;


# instance fields
.field final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lkmj$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lkpc;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 129
    new-instance v0, Lkmj$a;

    invoke-direct {v0}, Lkmj$a;-><init>()V

    .line 2341
    new-instance v1, Lkmj;

    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v0, v0, Lkmj$a;->a:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lkmj;-><init>(Ljava/util/Set;Lkpc;)V

    .line 129
    sput-object v1, Lkmj;->a:Lkmj;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Lkpc;)V
    .locals 0
    .param p2, "certificateChainCleaner"    # Lkpc;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lkmj$b;",
            ">;",
            "Lkpc;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "pins":Ljava/util/Set;, "Ljava/util/Set<Lkmj$b;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lkmj;->b:Ljava/util/Set;

    .line 136
    iput-object p2, p0, Lkmj;->c:Lkpc;

    .line 137
    return-void
.end method

.method public static a(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 2
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 243
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Certificate pinning requires X509 certificates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sha256/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/security/cert/X509Certificate;

    .end local p0    # "certificate":Ljava/security/cert/Certificate;
    invoke-static {p0}, Lkmj;->a(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    .locals 1
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 254
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->sha256()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 20
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 162
    .line 1218
    .local p2, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lkmj;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lkmj$b;

    .line 1289
    move-object/from16 v0, v18

    iget-object v2, v0, Lkmj$b;->a:Ljava/lang/String;

    const-string/jumbo v3, "*."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1290
    const/16 v2, 0x2e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1291
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v18

    iget-object v4, v0, Lkmj$b;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, v18

    iget-object v5, v0, Lkmj$b;->b:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    iget-object v2, v0, Lkmj$b;->b:Ljava/lang/String;

    .line 1293
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v2, p1

    .line 1292
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 1220
    :goto_1
    if-eqz v2, :cond_0

    .line 1221
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    :cond_1
    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1292
    :cond_2
    const/4 v2, 0x0

    .line 1291
    goto :goto_1

    .line 1296
    :cond_3
    move-object/from16 v0, v18

    iget-object v2, v0, Lkmj$b;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 163
    .local v13, "pins":Ljava/util/List;, "Ljava/util/List<Lkmj$b;>;"
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 183
    :cond_5
    :goto_2
    return-void

    .line 165
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lkmj;->c:Lkpc;

    if-eqz v2, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lkmj;->c:Lkpc;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lkpc;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 169
    :cond_7
    const/4 v8, 0x0

    .local v8, "c":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "certsSize":I
    :goto_3
    if-ge v8, v9, :cond_e

    .line 170
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/X509Certificate;

    .line 173
    .local v17, "x509Certificate":Ljava/security/cert/X509Certificate;
    const/4 v15, 0x0

    .line 174
    .local v15, "sha1":Lokio/ByteString;
    const/16 v16, 0x0

    .line 176
    .local v16, "sha256":Lokio/ByteString;
    const/4 v11, 0x0

    .local v11, "p":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "pinsSize":I
    :goto_4
    if-ge v11, v14, :cond_d

    .line 177
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkmj$b;

    .line 178
    .local v12, "pin":Lkmj$b;
    iget-object v2, v12, Lkmj$b;->c:Ljava/lang/String;

    const-string/jumbo v3, "sha256/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 179
    if-nez v16, :cond_8

    invoke-static/range {v17 .. v17}, Lkmj;->a(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v16

    .line 180
    :cond_8
    iget-object v2, v12, Lkmj$b;->d:Lokio/ByteString;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 176
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 181
    :cond_a
    iget-object v2, v12, Lkmj$b;->c:Ljava/lang/String;

    const-string/jumbo v3, "sha1/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 182
    if-nez v15, :cond_b

    .line 2250
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v15

    .line 183
    :cond_b
    iget-object v2, v12, Lkmj$b;->d:Lokio/ByteString;

    invoke-virtual {v2, v15}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    .line 185
    :cond_c
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unsupported hashAlgorithm: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v12, Lkmj$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 169
    .end local v12    # "pin":Lkmj$b;
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 191
    .end local v11    # "p":I
    .end local v14    # "pinsSize":I
    .end local v15    # "sha1":Lokio/ByteString;
    .end local v16    # "sha256":Lokio/ByteString;
    .end local v17    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Certificate pinning failure!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v3, "\n  Peer certificate chain:"

    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 194
    .local v10, "message":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    :goto_5
    if-ge v8, v9, :cond_f

    .line 195
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/X509Certificate;

    .line 196
    .restart local v17    # "x509Certificate":Ljava/security/cert/X509Certificate;
    const-string/jumbo v2, "\n    "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Lkmj;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 199
    .end local v17    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_f
    const-string/jumbo v2, "\n  Pinned certificates for "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const/4 v11, 0x0

    .restart local v11    # "p":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .restart local v14    # "pinsSize":I
    :goto_6
    if-ge v11, v14, :cond_10

    .line 201
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkmj$b;

    .line 202
    .restart local v12    # "pin":Lkmj$b;
    const-string/jumbo v2, "\n    "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 204
    .end local v12    # "pin":Lkmj$b;
    :cond_10
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 140
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 143
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 141
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lkmj;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lkmj;->c:Lkpc;

    move-object v0, p1

    check-cast v0, Lkmj;

    iget-object v0, v0, Lkmj;->c:Lkpc;

    .line 142
    invoke-static {v2, v0}, Lknj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkmj;->b:Ljava/util/Set;

    check-cast p1, Lkmj;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v2, p1, Lkmj;->b:Ljava/util/Set;

    .line 143
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 141
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 147
    iget-object v1, p0, Lkmj;->c:Lkpc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkmj;->c:Lkpc;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 148
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lkmj;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 149
    return v0

    .line 147
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
