.class public Lcom/amap/api/services/a/ce;
.super Ljava/lang/Object;
.source "DexDownloadItem.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amap/api/services/a/ce;->h:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/amap/api/services/a/ce;->i:Ljava/lang/String;

    .line 54
    :try_start_0
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 55
    array-length v1, v0

    .line 57
    if-gt v1, v2, :cond_0

    .line 77
    :goto_0
    return-void

    .line 60
    :cond_0
    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/amap/api/services/a/ce;->a:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/amap/api/services/a/ce;->a:Ljava/lang/String;

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 64
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/amap/api/services/a/ce;->b:Ljava/lang/String;

    .line 66
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/amap/api/services/a/ce;->c:Ljava/lang/String;

    .line 68
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/amap/api/services/a/ce;->d:Ljava/lang/String;

    .line 70
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amap/api/services/a/ce;->f:I

    .line 72
    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string/jumbo v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/a/ce;->g:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string/jumbo v1, "DexDownloadItem"

    const-string/jumbo v2, "DexDownloadItem"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/co;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/services/a/ce;->h:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amap/api/services/a/ce;->i:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amap/api/services/a/ce;->c:Ljava/lang/String;

    return-object v0
.end method
