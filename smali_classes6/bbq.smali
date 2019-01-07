.class public final Lbbq;
.super Ljava/lang/Object;
.source "DingDataSetChangedNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbq$a;
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing$a;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Lckm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Lckm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lbep;",
            ">;"
        }
    .end annotation
.end field

.field f:Lckm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field g:Lckm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm",
            "<",
            "Lbgl;",
            ">;"
        }
    .end annotation
.end field

.field h:Lckm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm",
            "<",
            "Lcom/alibaba/android/ding/base/objects/CommentObject;",
            ">;"
        }
    .end annotation
.end field

.field i:Lckm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field j:Lckm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm",
            "<",
            "Lbfe;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Lckm$a",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;",
            "Lbbq$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lbbq;->a:Landroid/os/Handler;

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lbbq;->b:Ljava/util/Map;

    .line 32
    new-instance v1, Lckm;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lckm;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lbbq;->c:Lckm;

    .line 33
    new-instance v1, Lckm;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lckm;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lbbq;->d:Lckm;

    .line 34
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lbbq;->e:Ljava/util/Collection;

    .line 35
    new-instance v1, Lckm;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lckm;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lbbq;->f:Lckm;

    .line 36
    new-instance v1, Lckm;

    invoke-direct {v1, v4, v4}, Lckm;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lbbq;->g:Lckm;

    .line 37
    new-instance v1, Lckm;

    invoke-direct {v1, v4, v4}, Lckm;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lbbq;->h:Lckm;

    .line 38
    new-instance v1, Lckm;

    invoke-direct {v1, v4, v4}, Lckm;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lbbq;->i:Lckm;

    .line 39
    new-instance v1, Lckm;

    invoke-direct {v1, v4, v4}, Lckm;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lbbq;->j:Lckm;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lbbq;->k:Ljava/util/Map;

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lbbq;->l:Ljava/util/Map;

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->values()[Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lbbq;->b:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->values()[Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    move-result-object v2

    aget-object v2, v2, v0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "type"    # Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 63
    .local p2, "orderlyData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .local p3, "orderlessData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v1, p0, Lbbq;->l:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbq$a;

    .line 64
    .local v0, "command":Lbbq$a;
    iget-object v1, p0, Lbbq;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    new-instance v0, Lbbq$a;

    .end local v0    # "command":Lbbq$a;
    invoke-direct {v0, p0, p1, p2, p3}, Lbbq$a;-><init>(Lbbq;Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Ljava/util/List;Ljava/util/List;)V

    .line 66
    .restart local v0    # "command":Lbbq$a;
    iget-object v1, p0, Lbbq;->l:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lbbq;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 1
    .param p1, "received"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 158
    new-instance v0, Lbbq$7;

    invoke-direct {v0, p0, p1}, Lbbq$7;-><init>(Lbbq;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {p0, v0}, Lbbq;->a(Ljava/lang/Runnable;)V

    .line 166
    invoke-virtual {p0, p1}, Lbbq;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 167
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p0, Lbbq;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 4
    .param p1, "received"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 193
    .line 1828
    iget-wide v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    .line 194
    .local v0, "parentDingId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 211
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v2, Lbbq$8;

    invoke-direct {v2, p0, v0, v1, p1}, Lbbq$8;-><init>(Lbbq;JLcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {p0, v2}, Lbbq;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
