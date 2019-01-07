.class public final Ljtc;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static a:Ljava/text/SimpleDateFormat;

.field static b:Ljava/io/FileFilter;


# instance fields
.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/io/File;

.field f:I

.field g:Ljava/lang/String;

.field h:J

.field private i:I

.field private j:I

.field private k:J

.field private l:Ljava/io/FileFilter;

.field private m:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "yyyy-MM-dd"

    .line 8079
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 91
    sput-object v1, Ljtc;->a:Ljava/text/SimpleDateFormat;

    .line 93
    new-instance v0, Ljtc$1;

    invoke-direct {v0}, Ljtc$1;-><init>()V

    sput-object v0, Ljtc;->b:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V
    .locals 4

    .prologue
    const v1, 0x7fffffff

    const/16 v2, 0xa

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const-string/jumbo v0, "Tracer.File"

    iput-object v0, p0, Ljtc;->c:Ljava/lang/String;

    .line 121
    iput v1, p0, Ljtc;->i:I

    .line 122
    iput v1, p0, Ljtc;->j:I

    .line 123
    const/16 v0, 0x1000

    iput v0, p0, Ljtc;->d:I

    .line 124
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Ljtc;->k:J

    .line 126
    iput v2, p0, Ljtc;->f:I

    .line 127
    const-string/jumbo v0, ".log"

    iput-object v0, p0, Ljtc;->g:Ljava/lang/String;

    .line 128
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljtc;->h:J

    .line 130
    new-instance v0, Ljtc$2;

    invoke-direct {v0, p0}, Ljtc$2;-><init>(Ljtc;)V

    iput-object v0, p0, Ljtc;->l:Ljava/io/FileFilter;

    .line 153
    new-instance v0, Ljtc$3;

    invoke-direct {v0, p0}, Ljtc$3;-><init>(Ljtc;)V

    iput-object v0, p0, Ljtc;->m:Ljava/util/Comparator;

    .line 1495
    iput-object p1, p0, Ljtc;->e:Ljava/io/File;

    .line 2437
    iput p2, p0, Ljtc;->j:I

    .line 3416
    iput p3, p0, Ljtc;->i:I

    .line 3453
    iput p4, p0, Ljtc;->d:I

    .line 4395
    iput-object p5, p0, Ljtc;->c:Ljava/lang/String;

    .line 4474
    iput-wide p6, p0, Ljtc;->k:J

    .line 4516
    iput v2, p0, Ljtc;->f:I

    .line 4537
    iput-object p9, p0, Ljtc;->g:Ljava/lang/String;

    .line 4557
    iput-wide p10, p0, Ljtc;->h:J

    .line 210
    return-void
.end method

.method public static a(Ljava/io/File;)J
    .locals 2

    .prologue
    .line 112
    :try_start_0
    sget-object v0, Ljtc;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 116
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method static synthetic c(Ljava/io/File;)I
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Ljtc;->d(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method private static d(Ljava/io/File;)I
    .locals 3

    .prologue
    .line 362
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 364
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 366
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 373
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method b(Ljava/io/File;)Ljava/io/File;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 264
    .line 5306
    iget-object v0, p0, Ljtc;->l:Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 267
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_2

    .line 269
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "1"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5526
    iget-object v2, p0, Ljtc;->g:Ljava/lang/String;

    .line 269
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    :cond_1
    return-object v1

    .line 6346
    :cond_2
    iget-object v0, p0, Ljtc;->m:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 274
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-object v1, v3, v0

    .line 276
    array-length v0, v3

    .line 6426
    iget v2, p0, Ljtc;->j:I

    .line 276
    sub-int/2addr v0, v2

    .line 278
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v2, v4

    .line 7405
    iget v4, p0, Ljtc;->i:I

    .line 278
    if-le v2, v4, :cond_3

    .line 281
    invoke-static {v1}, Ljtc;->d(Ljava/io/File;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 282
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7526
    iget-object v4, p0, Ljtc;->g:Ljava/lang/String;

    .line 282
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    add-int/lit8 v0, v0, 0x1

    .line 288
    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 290
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
