.class public Lhbb;
.super Ljava/lang/Object;
.source "PreDecoder.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alibaba/doraemon/image/ImageMagician;

.field private static c:Lhcg$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lhbb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhbb;->a:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    sput-object v0, Lhbb;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 21
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhcg;->a(Landroid/content/Context;)Lhcg$c;

    move-result-object v0

    sput-object v0, Lhbb;->c:Lhcg$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(II)Lhbc;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 86
    if-lez p0, :cond_1

    if-lez p1, :cond_1

    .line 87
    sget-object v1, Lhbb;->c:Lhcg$c;

    new-instance v2, Lhcg$b;

    invoke-direct {v2, p0, p1}, Lhcg$b;-><init>(II)V

    invoke-static {v1, v2}, Lhcg;->a(Lhcg$c;Lhcg$b;)Lhcg$b;

    move-result-object v0

    .line 1164
    .local v0, "resultSize":Lhcg$b;
    iget v1, v0, Lhcg$b;->a:I

    .line 89
    if-ge v1, p0, :cond_0

    .line 2164
    iget p0, v0, Lhcg$b;->a:I

    .line 2168
    iget p1, v0, Lhcg$b;->b:I

    .line 93
    :cond_0
    new-instance v1, Lhbc;

    invoke-direct {v1, p0, p1}, Lhbc;-><init>(II)V

    .line 95
    .end local v0    # "resultSize":Lhcg$b;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lhbb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "compressUrl"    # Ljava/lang/String;
    .param p2, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_4

    .line 27
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 28
    .local v6, "sWidth":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 29
    .local v5, "sHeight":I
    invoke-static {v6, v5}, Lhbb;->a(II)Lhbc;

    move-result-object v4

    .line 30
    .local v4, "resizeOptions":Lhbc;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lhbc;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 31
    iget v7, v4, Lhbc;->a:I

    if-ne v6, v7, :cond_3

    iget v7, v4, Lhbc;->b:I

    if-ne v5, v7, :cond_3

    .line 32
    move-object v0, p2

    .line 39
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 40
    sget-object v7, Lhbb;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "preDecodeChatBitmap from bitmap."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    .end local v4    # "resizeOptions":Lhbc;
    .end local v5    # "sHeight":I
    .end local v6    # "sWidth":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 1075
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v7

    new-instance v8, Lhbb$1;

    invoke-direct {v8, p0, v0, p1}, Lhbb$1;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 68
    :cond_2
    return-void

    .line 34
    .restart local v4    # "resizeOptions":Lhbc;
    .restart local v5    # "sHeight":I
    .restart local v6    # "sWidth":I
    :cond_3
    :try_start_1
    iget v7, v4, Lhbc;->a:I

    iget v8, v4, Lhbc;->b:I

    const/4 v9, 0x0

    invoke-static {p2, v7, v8, v9}, Lgzt;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    if-eq v0, p2, :cond_0

    .line 36
    invoke-static {p2}, Lgzt;->a(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 43
    .end local v4    # "resizeOptions":Lhbc;
    .end local v5    # "sHeight":I
    .end local v6    # "sWidth":I
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 48
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    new-instance v2, Lgzt$a;

    invoke-direct {v2}, Lgzt$a;-><init>()V

    .line 49
    .local v2, "options":Lgzt$a;
    const/4 v7, 0x1

    iput-boolean v7, v2, Lgzt$a;->inJustDecodeBounds:Z

    .line 50
    invoke-static {p1, v2}, Lgzt;->a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;

    .line 51
    const/4 v7, 0x0

    iput-boolean v7, v2, Lgzt$a;->inJustDecodeBounds:Z

    .line 52
    iget v7, v2, Lgzt$a;->outWidth:I

    iget v8, v2, Lgzt$a;->outHeight:I

    invoke-static {v7, v8}, Lhbb;->a(II)Lhbc;

    move-result-object v3

    .line 54
    .local v3, "resize":Lhbc;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lhbc;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 55
    iget v7, v3, Lhbc;->a:I

    iput v7, v2, Lgzt$a;->b:I

    .line 56
    iget v7, v3, Lhbc;->b:I

    iput v7, v2, Lgzt$a;->c:I

    .line 57
    invoke-static {p1, v2}, Lgzt;->a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    sget-object v7, Lhbb;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "preDecodeChatBitmap from file."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 62
    .end local v2    # "options":Lgzt$a;
    .end local v3    # "resize":Lhbc;
    :catch_1
    move-exception v1

    .line 63
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method static synthetic b()Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lhbb;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method
