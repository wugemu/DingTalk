.class public abstract Loq;
.super Lcmi;
.source "RPCIDSRequestCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcmi",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TID;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TID;>;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Object;

.field e:Lom;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Loq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcmi;-><init>()V

    .line 18
    iput-object v0, p0, Loq;->f:Ljava/util/List;

    .line 21
    iput-object v0, p0, Loq;->a:Ljava/util/Set;

    .line 24
    iput-object v0, p0, Loq;->b:Ljava/util/Set;

    .line 27
    iput-object v0, p0, Loq;->c:Ljava/util/List;

    .line 30
    iput-object v0, p0, Loq;->d:Ljava/lang/Object;

    .line 33
    iput-object v0, p0, Loq;->e:Lom;

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    iget-object v0, p0, Loq;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Loq;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    invoke-direct {p0}, Loq;->b()V

    .line 175
    invoke-direct {p0}, Loq;->c()V

    .line 176
    iget-object v0, p0, Loq;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Loq;->d(Ljava/util/List;)V

    .line 178
    :cond_1
    return-void
.end method

.method static synthetic a(Loq;)V
    .locals 0
    .param p0, "x0"    # Loq;

    .prologue
    .line 15
    invoke-direct {p0}, Loq;->a()V

    return-void
.end method

.method static synthetic a(Loq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "x0"    # Loq;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Throwable;

    .prologue
    .line 15
    .line 2122
    iget-object v0, p0, Loq;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Loq;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2123
    iget-object v0, p0, Loq;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loq;

    .line 2124
    if-eqz v0, :cond_0

    .line 2125
    invoke-virtual {v0, p1, p2, p3}, Loq;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 15
    :cond_1
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 184
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    iget-object v0, p0, Loq;->e:Lom;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Loq;->e:Lom;

    invoke-interface {v0, p0}, Lom;->a(Loq;)V

    .line 187
    :cond_0
    return-void
.end method

.method static synthetic b(Loq;)V
    .locals 0
    .param p0, "x0"    # Loq;

    .prologue
    .line 15
    invoke-direct {p0}, Loq;->b()V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Loq;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Loq;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 196
    iput-object v1, p0, Loq;->a:Ljava/util/Set;

    .line 199
    :cond_0
    iget-object v0, p0, Loq;->b:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Loq;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 201
    iput-object v1, p0, Loq;->b:Ljava/util/Set;

    .line 204
    :cond_1
    iget-object v0, p0, Loq;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Loq;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    iput-object v1, p0, Loq;->f:Ljava/util/List;

    .line 209
    :cond_2
    iget-object v0, p0, Loq;->d:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 210
    iput-object v1, p0, Loq;->d:Ljava/lang/Object;

    .line 213
    :cond_3
    iput-object v1, p0, Loq;->e:Lom;

    .line 214
    return-void
.end method

.method static synthetic c(Loq;)V
    .locals 0
    .param p0, "x0"    # Loq;

    .prologue
    .line 15
    invoke-direct {p0}, Loq;->c()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 275
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    iget-object v0, p0, Loq;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Loq;->c:Ljava/util/List;

    .line 278
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 145
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Loq;->d()V

    .line 146
    invoke-virtual {p0, p1}, Loq;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "id":Ljava/lang/Object;, "TID;"
    iget-object v1, p0, Loq;->a:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Loq;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Loq;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 107
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v1, p0, Loq;->f:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Loq;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 108
    iget-object v1, p0, Loq;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loq;

    .line 109
    .local v0, "callback":Loq;
    if-eqz v0, :cond_0

    .line 110
    iget-object v2, p0, Loq;->b:Ljava/util/Set;

    .line 1285
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1287
    invoke-direct {v0}, Loq;->d()V

    .line 1288
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1289
    invoke-virtual {v0, v4}, Loq;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1290
    if-eqz v5, :cond_1

    .line 1293
    iget-object v6, v0, Loq;->a:Ljava/util/Set;

    if-eqz v6, :cond_1

    iget-object v6, v0, Loq;->a:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1294
    iget-object v5, v0, Loq;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1299
    :cond_2
    iget-object v3, v0, Loq;->a:Ljava/util/Set;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 1300
    iget-object v3, v0, Loq;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1303
    :cond_3
    invoke-direct {v0}, Loq;->a()V

    goto :goto_0

    .line 115
    .end local v0    # "callback":Loq;
    :cond_4
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 134
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-direct {p0, v0}, Loq;->e(Ljava/util/List;)V

    .line 137
    invoke-direct {p0, p1}, Loq;->d(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TID;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<TID;>;"
    if-eqz p1, :cond_1

    .line 1257
    iget-object v0, p0, Loq;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1258
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Loq;->a:Ljava/util/Set;

    .line 56
    :cond_0
    iget-object v0, p0, Loq;->a:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Loq;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;Loq;)V
    .locals 7
    .param p2, "callback"    # Loq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TID;>;",
            "Loq;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 222
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<TID;>;"
    iget-object v3, p0, Loq;->c:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 223
    iget-object v3, p0, Loq;->c:Ljava/util/List;

    .line 1313
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1315
    invoke-direct {p2}, Loq;->d()V

    .line 1316
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1317
    invoke-virtual {p2, v4}, Loq;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1318
    iget-object v6, p2, Loq;->a:Ljava/util/Set;

    if-eqz v6, :cond_0

    iget-object v6, p2, Loq;->a:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1319
    iget-object v6, p2, Loq;->c:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1321
    if-eqz p1, :cond_0

    .line 1322
    invoke-interface {p1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1327
    :cond_1
    invoke-direct {p2}, Loq;->a()V

    .line 227
    :cond_2
    if-eqz p1, :cond_6

    iget-object v3, p0, Loq;->b:Ljava/util/Set;

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Loq;->b:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "merged":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TID;>;"
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 233
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 234
    .local v2, "tmp":Ljava/lang/Object;, "TID;"
    if-eqz v2, :cond_3

    .line 235
    iget-object v3, p0, Loq;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 237
    const/4 v1, 0x1

    goto :goto_1

    .line 243
    .end local v2    # "tmp":Ljava/lang/Object;, "TID;"
    :cond_4
    if-eqz v1, :cond_6

    .line 245
    iget-object v3, p0, Loq;->f:Ljava/util/List;

    if-nez v3, :cond_5

    .line 246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Loq;->f:Ljava/util/List;

    .line 248
    :cond_5
    iget-object v3, p0, Loq;->f:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TID;>;"
    .end local v1    # "merged":Z
    :cond_6
    return-void
.end method

.method public abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TID;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<TID;>;"
    if-eqz p1, :cond_1

    .line 1266
    iget-object v0, p0, Loq;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1267
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Loq;->b:Ljava/util/Set;

    .line 69
    :cond_0
    iget-object v0, p0, Loq;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 72
    :cond_1
    return-void
.end method

.method protected abstract c(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TID;"
        }
    .end annotation
.end method

.method protected final c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 158
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Loq;->e(Ljava/util/List;)V

    .line 160
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 162
    .local v0, "d":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v0}, Loq;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    .end local v0    # "d":Ljava/lang/Object;, "TE;"
    :cond_0
    return-void
.end method

.method protected abstract d(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation
.end method

.method public handleCaught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "r"    # Lcom/laiwang/idl/service/ResultError;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 356
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    invoke-virtual {p0, p1, p2}, Loq;->caughtImpl(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    .line 357
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 339
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    new-instance v0, Loq$2;

    invoke-direct {v0, p0, p1, p2, p3}, Loq$2;-><init>(Loq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    .local v0, "command":Ljava/lang/Runnable;
    iget-object v1, p0, Loq;->e:Lom;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Loq;->e:Lom;

    invoke-interface {v1, v0}, Lom;->a(Ljava/lang/Runnable;)V

    .line 352
    :cond_0
    return-void
.end method

.method public final onLoadSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 84
    .local p0, "this":Loq;, "Loq<TT;TE;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    new-instance v0, Loq$1;

    invoke-direct {v0, p0, p1}, Loq$1;-><init>(Loq;Ljava/lang/Object;)V

    .line 99
    .local v0, "command":Ljava/lang/Runnable;
    iget-object v1, p0, Loq;->e:Lom;

    invoke-interface {v1, v0}, Lom;->a(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method
