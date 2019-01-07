.class public Lcom/alibaba/dingtalk/doclens/DocLensLib;
.super Ljava/lang/Object;
.source "DocLensLib.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/doclens/DocLensLib;[FLjava/lang/String;Ljava/lang/String;II)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/DocLensLib;
    .param p1, "x1"    # [F
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 25
    .line 2339
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/alibaba/dingtalk/doclens/DocLensLib;->a([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 2341
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2344
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/dingtalk/doclens/DocLensLib;->correctionByQuadUnChecked([FLjava/lang/String;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/doclens/DocLensLib;[F[BII)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/DocLensLib;
    .param p1, "x1"    # [F
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 25
    .line 2321
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 2322
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2324
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/dingtalk/doclens/DocLensLib;->detectDocQuadUnChecked([F[BII)I

    move-result v0

    goto :goto_0
.end method

.method public static a([F)Z
    .locals 6
    .param p0, "quad"    # [F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    if-nez p0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v1

    .line 311
    :cond_1
    array-length v4, p0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget v0, p0, v3

    .line 312
    .local v0, "v":F
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_2

    move v1, v2

    .line 313
    goto :goto_0

    .line 311
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private native correctionByQuadUnChecked([FLjava/lang/String;Ljava/lang/String;II)I
.end method

.method private native correctionUnChecked([FLjava/lang/String;Ljava/lang/String;II)I
.end method

.method private native detectDocQuadUnChecked([F[BII)I
.end method

.method private native doDocCorrection(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public a(Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1034
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 1035
    const-string/jumbo v3, "DocLensLib"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "CPU_ABI = "

    aput-object v5, v4, v1

    aput-object v2, v4, v0

    invoke-static {v4}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2018
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const-string/jumbo v3, "armeabi-v5a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "armeabi-v6a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "x86"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 43
    :cond_1
    if-nez v0, :cond_2

    .line 45
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/doclens/DocLensLib$1;-><init>(Lcom/alibaba/dingtalk/doclens/DocLensLib;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_2
    invoke-static {}, Lgzo;->a()Lgzo;

    move-result-object v0

    invoke-virtual {v0}, Lgzo;->b()Lgrl;

    move-result-object v0

    const-string/jumbo v1, "doclens"

    invoke-interface {v0, v1, p1}, Lgrl;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
