.class final Ljug$1;
.super Landroid/database/DataSetObserver;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljug;


# direct methods
.method constructor <init>(Ljug;)V
    .locals 0
    .param p1, "this$0"    # Ljug;

    .prologue
    .line 60
    iput-object p1, p0, Ljug$1;->a:Ljug;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Ljug$1;->a:Ljug;

    .line 1363
    iput v0, v1, Ljug;->a:I

    .line 1364
    iget-object v2, v1, Ljug;->c:Ljuf;

    invoke-interface {v2}, Ljuf;->a()I

    move-result v2

    .line 1365
    if-nez v2, :cond_1

    .line 1366
    iget-object v0, v1, Ljug;->c:Ljuf;

    invoke-interface {v0}, Ljuf;->getCount()I

    move-result v0

    iput v0, v1, Ljug;->a:I

    .line 1374
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v1, Ljug;->b:Z

    .line 64
    return-void

    .line 1371
    :cond_1
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1372
    iget v3, v1, Ljug;->a:I

    iget-object v4, v1, Ljug;->c:Ljuf;

    invoke-interface {v4, v0}, Ljuf;->a(I)I

    move-result v4

    iget v5, v1, Ljug;->d:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v1, Ljug;->a:I

    .line 1371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final onInvalidated()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Ljug$1;->a:Ljug;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljug;->a(Ljug;Z)Z

    .line 69
    return-void
.end method
