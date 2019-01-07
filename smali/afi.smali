.class public Lafi;
.super Ljava/lang/Object;
.source "VideoManager.java"


# static fields
.field private static d:Lafi;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ladg;

.field private c:Ladk;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lafi;->a:Landroid/content/Context;

    .line 35
    new-instance v0, Ladg;

    invoke-direct {v0}, Ladg;-><init>()V

    iput-object v0, p0, Lafi;->b:Ladg;

    .line 36
    const/4 v0, 0x2

    invoke-static {p1, v0}, Ladj;->a(Landroid/content/Context;I)Ladk;

    move-result-object v0

    iput-object v0, p0, Lafi;->c:Ladk;

    .line 37
    return-void
.end method

.method static synthetic a(Lafi;)Ladk;
    .locals 1
    .param p0, "x0"    # Lafi;

    .prologue
    .line 25
    iget-object v0, p0, Lafi;->c:Ladk;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lafi;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lafi;->d:Lafi;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lafi;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lafi;->d:Lafi;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lafi;

    invoke-direct {v0, p0}, Lafi;-><init>(Landroid/content/Context;)V

    sput-object v0, Lafi;->d:Lafi;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lafi;->d:Lafi;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lafi;)Ladg;
    .locals 1
    .param p0, "x0"    # Lafi;

    .prologue
    .line 25
    iget-object v0, p0, Lafi;->b:Ladg;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Ljava/lang/String;III)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "kind"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 52
    iget-object v1, p0, Lafi;->b:Ladg;

    invoke-virtual {v1, p2}, Ladg;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lafi;->b:Ladg;

    invoke-virtual {v1, p2}, Ladg;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    :goto_0
    return-void

    .line 57
    :cond_0
    sget v1, Laxo$f;->base_adapter_id:I

    invoke-virtual {p1, v1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 58
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 59
    .local v2, "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/ImageView;>;"
    new-instance v0, Lafi$1;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lafi$1;-><init>(Lafi;Ljava/lang/ref/WeakReference;Ljava/lang/String;III)V

    .line 110
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v1}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v7

    .line 111
    .local v7, "thread":Laie;
    invoke-interface {v7, v0}, Laie;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
