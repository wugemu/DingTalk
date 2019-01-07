.class public final Lkcy;
.super Ljava/lang/Object;


# static fields
.field private static e:Ljava/lang/String;

.field private static f:J

.field private static final g:[B


# instance fields
.field public a:Lkac$a;

.field public b:S

.field public c:[B

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lkee;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkcy;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lkcy;->f:J

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lkcy;->g:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-short v0, p0, Lkcy;->b:S

    sget-object v0, Lkcy;->g:[B

    iput-object v0, p0, Lkcy;->c:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lkcy;->d:Ljava/lang/String;

    new-instance v0, Lkac$a;

    invoke-direct {v0}, Lkac$a;-><init>()V

    iput-object v0, p0, Lkcy;->a:Lkac$a;

    return-void
.end method

.method private constructor <init>(Lkac$a;S[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-short v0, p0, Lkcy;->b:S

    sget-object v0, Lkcy;->g:[B

    iput-object v0, p0, Lkcy;->c:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lkcy;->d:Ljava/lang/String;

    iput-object p1, p0, Lkcy;->a:Lkac$a;

    iput-short p2, p0, Lkcy;->b:S

    iput-object p3, p0, Lkcy;->c:[B

    return-void
.end method

.method public static a(Lkdu;Ljava/lang/String;)Lkcy;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 0
    new-instance v2, Lkcy;

    invoke-direct {v2}, Lkcy;-><init>()V

    const/4 v0, 0x1

    .line 17000
    :try_start_0
    iget-object v1, p0, Lkdu;->t:Ljava/lang/String;

    .line 0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Lkcy;->a(I)V

    invoke-virtual {p0}, Lkdu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkcy;->a(Ljava/lang/String;)V

    .line 18000
    iget-object v0, p0, Lkdu;->s:Ljava/lang/String;

    .line 0
    invoke-virtual {v2, v0}, Lkcy;->b(Ljava/lang/String;)V

    .line 19000
    iget-object v0, p0, Lkdu;->u:Ljava/lang/String;

    .line 20000
    iput-object v0, v2, Lkcy;->d:Ljava/lang/String;

    .line 0
    const-string/jumbo v0, "XMLMSG"

    invoke-virtual {v2, v0, v5}, Lkcy;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0}, Lkdu;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lkcy;->a([BLjava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 21000
    iput-short v0, v2, Lkcy;->b:S
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 0
    :goto_1
    return-object v2

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Blob parse chid err "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljuw;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 22000
    :try_start_2
    iput-short v0, v2, Lkcy;->b:S

    .line 0
    const-string/jumbo v0, "SECMSG"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lkcy;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Blob setPayload err\uff1a "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static b(Ljava/nio/ByteBuffer;)Lkcy;
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    new-instance v4, Lkac$a;

    invoke-direct {v4}, Lkac$a;-><init>()V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v4, v5, v6, v2}, Lkac$a;->b([BII)Liwy;

    new-array v5, v3, [B

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance v0, Lkcy;

    invoke-direct {v0, v4, v1, v5}, Lkcy;-><init>(Lkac$a;S[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "read Blob err :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Malformed Input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized j()Ljava/lang/String;
    .locals 6

    const-class v1, Lkcy;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkcy;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lkcy;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lkcy;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lkcy;->a:Lkac$a;

    .line 2000
    iget-object v0, v0, Lkac$a;->f:Ljava/lang/String;

    .line 0
    return-object v0
.end method

.method final a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lkcy;->i()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :cond_0
    iget-short v0, p0, Lkcy;->b:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lkcy;->a:Lkac$a;

    invoke-virtual {v0}, Lkac$a;->a()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lkcy;->c:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lkcy;->a:Lkac$a;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lkcy;->a:Lkac$a;

    invoke-virtual {v4}, Lkac$a;->a()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lkac$a;->a([BII)V

    iget-object v1, p0, Lkcy;->a:Lkac$a;

    invoke-virtual {v1}, Lkac$a;->a()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lkcy;->c:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lkcy;->a:Lkac$a;

    invoke-virtual {v0, p1}, Lkac$a;->a(I)Lkac$a;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lkcy;->a:Lkac$a;

    invoke-virtual {v0, p1}, Lkac$a;->e(Ljava/lang/String;)Lkac$a;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "command should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lkcy;->a:Lkac$a;

    invoke-virtual {v0, p1}, Lkac$a;->c(Ljava/lang/String;)Lkac$a;

    iget-object v0, p0, Lkcy;->a:Lkac$a;

    .line 1000
    const/4 v1, 0x0

    iput-boolean v1, v0, Lkac$a;->g:Z

    const-string/jumbo v1, ""

    iput-object v1, v0, Lkac$a;->h:Ljava/lang/String;

    .line 0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkcy;->a:Lkac$a;

    invoke-virtual {v0, p2}, Lkac$a;->d(Ljava/lang/String;)Lkac$a;

    :cond_1
    return-void
.end method

.method public final a([BLjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkcy;->a:Lkac$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkac$a;->b(I)Lkac$a;

    invoke-virtual {p0}, Lkcy;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkaz;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lkaz;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lkcy;->c:[B

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lkcy;->a:Lkac$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkac$a;->b(I)Lkac$a;

    iput-object p1, p0, Lkcy;->c:[B

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lkcy;->a:Lkac$a;

    .line 3000
    iget-object v0, v0, Lkac$a;->h:Ljava/lang/String;

    .line 0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lkcy;->a:Lkac$a;

    invoke-virtual {v4, v2, v3}, Lkac$a;->a(J)Lkac$a;

    iget-object v2, p0, Lkcy;->a:Lkac$a;

    invoke-virtual {v2, v0}, Lkac$a;->a(Ljava/lang/String;)Lkac$a;

    iget-object v0, p0, Lkcy;->a:Lkac$a;

    invoke-virtual {v0, v1}, Lkac$a;->b(Ljava/lang/String;)Lkac$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Blob parse user err "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lkcy;->a:Lkac$a;

    .line 4000
    iget v0, v0, Lkac$a;->a:I

    .line 0
    return v0
.end method

.method public final c(Ljava/lang/String;)[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    iget-object v0, p0, Lkcy;->a:Lkac$a;

    .line 14000
    iget v0, v0, Lkac$a;->k:I

    .line 0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkcy;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkaz;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lkcy;->c:[B

    invoke-static {v0, v1}, Lkaz;->a([B[B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkcy;->a:Lkac$a;

    .line 15000
    iget v0, v0, Lkac$a;->k:I

    .line 0
    if-nez v0, :cond_1

    iget-object v0, p0, Lkcy;->c:[B

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknow cipher = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkcy;->a:Lkac$a;

    .line 16000
    iget v1, v1, Lkac$a;->k:I

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lkcy;->c:[B

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lkcy;->a:Lkac$a;

    .line 5000
    iget-boolean v0, v0, Lkac$a;->l:Z

    .line 0
    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lkcy;->a:Lkac$a;

    .line 6000
    iget v0, v0, Lkac$a;->m:I

    .line 0
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lkcy;->a:Lkac$a;

    .line 7000
    iget-object v0, v0, Lkac$a;->n:Ljava/lang/String;

    .line 0
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    iget-object v0, p0, Lkcy;->a:Lkac$a;

    .line 8000
    iget-object v0, v0, Lkac$a;->j:Ljava/lang/String;

    .line 0
    const-string/jumbo v1, "ID_NOT_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lkcy;->a:Lkac$a;

    .line 9000
    iget-boolean v1, v1, Lkac$a;->i:Z

    .line 0
    if-nez v1, :cond_0

    invoke-static {}, Lkcy;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkcy;->a:Lkac$a;

    invoke-virtual {v1, v0}, Lkac$a;->e(Ljava/lang/String;)Lkac$a;

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    iget-object v0, p0, Lkcy;->a:Lkac$a;

    .line 10000
    iget-boolean v0, v0, Lkac$a;->b:Z

    .line 0
    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkcy;->a:Lkac$a;

    .line 11000
    iget-wide v2, v1, Lkac$a;->c:J

    .line 0
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkcy;->a:Lkac$a;

    .line 12000
    iget-object v1, v1, Lkac$a;->d:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkcy;->a:Lkac$a;

    .line 13000
    iget-object v1, v1, Lkac$a;->e:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Lkcy;->a:Lkac$a;

    invoke-virtual {v0}, Lkac$a;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lkcy;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Blob [chid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkcy;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkcy;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkcy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 23000
    iget-short v1, p0, Lkcy;->b:S

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkcy;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
