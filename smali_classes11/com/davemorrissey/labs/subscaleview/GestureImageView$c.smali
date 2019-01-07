.class final Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;
.super Landroid/os/AsyncTask;
.source "GestureImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/GestureImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/davemorrissey/labs/subscaleview/GestureImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Livw;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/net/Uri;

.field private final e:Z

.field private f:Landroid/graphics/Bitmap;

.field private g:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "view"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "source"    # Landroid/net/Uri;
    .param p5, "preview"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/davemorrissey/labs/subscaleview/GestureImageView;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Livw;",
            ">;",
            "Landroid/net/Uri;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1717
    .local p3, "decoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Livw;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1718
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->a:Ljava/lang/ref/WeakReference;

    .line 1719
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->b:Ljava/lang/ref/WeakReference;

    .line 1720
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->c:Ljava/lang/ref/WeakReference;

    .line 1721
    iput-object p4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->d:Landroid/net/Uri;

    .line 1722
    iput-boolean p5, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->e:Z

    .line 1723
    return-void
.end method

.method private varargs a()Ljava/lang/Integer;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1728
    :try_start_0
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->d:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1729
    .local v3, "sourceUri":Ljava/lang/String;
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1730
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 1731
    .local v1, "decoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Livw;>;"
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 1732
    .local v4, "subsamplingScaleImageView":Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 1733
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Livw;

    iget-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->d:Landroid/net/Uri;

    invoke-interface {v5, v0, v6}, Livw;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->f:Landroid/graphics/Bitmap;

    .line 1734
    invoke-static {v4, v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1740
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "decoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Livw;>;"
    .end local v3    # "sourceUri":Ljava/lang/String;
    .end local v4    # "subsamplingScaleImageView":Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    :goto_0
    return-object v5

    .line 1736
    :catch_0
    move-exception v2

    .line 1737
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->e()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Failed to load bitmap"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1738
    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->g:Ljava/lang/Exception;

    .line 1740
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1708
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1708
    check-cast p1, Ljava/lang/Integer;

    .line 2745
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 2746
    if-eqz v0, :cond_0

    .line 2747
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 2748
    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->e:Z

    if-eqz v1, :cond_1

    .line 2749
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->f:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/Bitmap;)V

    .line 2755
    :cond_0
    :goto_0
    return-void

    .line 2751
    :cond_1
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 2753
    :cond_2
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->g:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->l(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2754
    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->e:Z

    if-eqz v1, :cond_3

    .line 2755
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->l(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;->n()V

    goto :goto_0

    .line 2757
    :cond_3
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->l(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;->o()V

    goto :goto_0
.end method
