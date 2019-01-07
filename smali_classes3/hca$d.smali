.class final Lhca$d;
.super Ljava/lang/Object;
.source "AlbumModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:I

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field g:Z

.field final synthetic h:Lhca;

.field private final i:I


# direct methods
.method public constructor <init>(Lhca;)V
    .locals 1

    .prologue
    .line 342
    iput-object p1, p0, Lhca$d;->h:Lhca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, 0x3

    iput v0, p0, Lhca$d;->i:I

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhca$d;->c:Ljava/util/List;

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhca$d;->f:Ljava/util/List;

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhca$d;->g:Z

    .line 346
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lhca$d;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lhca$d;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 379
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lhca$d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lhca$d;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 380
    .local v0, "resultData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    iget-object v1, p0, Lhca$d;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 381
    iget-object v1, p0, Lhca$d;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    return-object v0
.end method
