.class Lcom/amap/api/mapcore/util/k$j;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/amap/api/mapcore/util/k$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1778
    const-string/jumbo v0, "GLThreadManager"

    sput-object v0, Lcom/amap/api/mapcore/util/k$j;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/k$1;)V
    .locals 0

    .prologue
    .line 1777
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/k$j;-><init>()V

    return-void
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v2, 0x20000

    const/4 v1, 0x1

    .line 1862
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$j;->b:Z

    if-nez v0, :cond_1

    .line 1863
    iput v2, p0, Lcom/amap/api/mapcore/util/k$j;->c:I

    .line 1864
    iget v0, p0, Lcom/amap/api/mapcore/util/k$j;->c:I

    if-lt v0, v2, :cond_0

    .line 1865
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/k$j;->e:Z

    .line 1872
    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/k$j;->b:Z

    .line 1874
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/amap/api/mapcore/util/k$i;)V
    .locals 1

    .prologue
    .line 1784
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/k$i;->a(Lcom/amap/api/mapcore/util/k$i;Z)Z

    .line 1785
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    if-ne v0, p1, :cond_0

    .line 1786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    .line 1788
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1789
    monitor-exit p0

    return-void

    .line 1784
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1842
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/k$j;->d:Z

    if-nez v2, :cond_1

    .line 1843
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/k$j;->c()V

    .line 1844
    const/16 v2, 0x1f01

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 1845
    iget v3, p0, Lcom/amap/api/mapcore/util/k$j;->c:I

    const/high16 v4, 0x20000

    if-ge v3, v4, :cond_0

    .line 1846
    const-string/jumbo v3, "Q3Dimension MSM7500 "

    .line 1847
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/k$j;->e:Z

    .line 1848
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1850
    :cond_0
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/k$j;->e:Z

    if-nez v2, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$j;->f:Z

    .line 1857
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/k$j;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1859
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    move v2, v1

    .line 1847
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1850
    goto :goto_1

    .line 1842
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 1833
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$j;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 1837
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/k$j;->c()V

    .line 1838
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/k$j;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1837
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/amap/api/mapcore/util/k$i;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 1799
    iget-object v1, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    if-nez v1, :cond_2

    .line 1800
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    .line 1801
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1815
    :cond_1
    :goto_0
    return v0

    .line 1804
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/k$j;->c()V

    .line 1805
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/k$j;->e:Z

    if-nez v1, :cond_1

    .line 1812
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    if-eqz v0, :cond_3

    .line 1813
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/k$i;->i()V

    .line 1815
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/amap/api/mapcore/util/k$i;)V
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    if-ne v0, p1, :cond_0

    .line 1824
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/k$j;->g:Lcom/amap/api/mapcore/util/k$i;

    .line 1826
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1827
    return-void
.end method
