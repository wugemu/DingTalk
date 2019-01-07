.class public final Lkfn;
.super Ljava/lang/Object;
.source "FileUtil.java"


# instance fields
.field private final a:Ljava/util/ResourceBundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    const-string/jumbo v0, "messages"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lkfn;->a:Ljava/util/ResourceBundle;

    .line 554
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Z
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    const/4 v1, 0x1

    .line 334
    .local v1, "ret":Z
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 335
    .local v0, "read":I
    const/16 v2, 0x7f

    if-le v0, v2, :cond_1

    .line 336
    const/4 v1, 0x0

    .line 341
    :goto_0
    return v1

    .line 340
    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 561
    if-ne p0, p1, :cond_1

    .line 578
    :cond_0
    :goto_0
    return v1

    .line 564
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 565
    goto :goto_0

    .line 567
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 568
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 570
    check-cast v0, Lkfn;

    .line 571
    .local v0, "other":Lkfn;
    iget-object v3, p0, Lkfn;->a:Ljava/util/ResourceBundle;

    if-nez v3, :cond_4

    .line 572
    iget-object v3, v0, Lkfn;->a:Ljava/util/ResourceBundle;

    if-eqz v3, :cond_0

    move v1, v2

    .line 573
    goto :goto_0

    .line 575
    :cond_4
    iget-object v3, p0, Lkfn;->a:Ljava/util/ResourceBundle;

    iget-object v4, v0, Lkfn;->a:Ljava/util/ResourceBundle;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 576
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 625
    iget-object v1, p0, Lkfn;->a:Ljava/util/ResourceBundle;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 626
    .local v0, "result":I
    return v0

    .line 625
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lkfn;->a:Ljava/util/ResourceBundle;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method
