.class public final Lckm;
.super Ljava/lang/Object;
.source "ObservedData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lckm$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Landroid/os/Handler;


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lckm$a",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 309
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lckm;->d:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lckm;, "Lckm<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lckm;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lckm;->b:Ljava/lang/Object;

    .line 177
    iput-object p1, p0, Lckm;->b:Ljava/lang/Object;

    .line 178
    iput-object p2, p0, Lckm;->c:Ljava/lang/Object;

    .line 179
    return-void
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lckm;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lckm;, "Lckm<TT;>;"
    iget-object v0, p0, Lckm;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lckm;->c:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lckm;->b:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lckm$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lckm$a",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 266
    .local p0, "this":Lckm;, "Lckm<TT;>;"
    .local p1, "observer":Lckm$a;, "Lckm$a<TT;>;"
    if-eqz p1, :cond_0

    .line 267
    iget-object v0, p0, Lckm;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {p1}, Lckm$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4021
    sget-object v0, Lckm;->d:Landroid/os/Handler;

    .line 3080
    new-instance v1, Lckm$a$2;

    invoke-direct {v1, p1, p0}, Lckm$a$2;-><init>(Lckm$a;Lckm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Z)V
    .locals 1
    .param p2, "quietly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lckm;, "Lckm<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_0

    .line 197
    iput-object p1, p0, Lckm;->b:Ljava/lang/Object;

    .line 201
    :goto_0
    return-void

    .line 1228
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lckm;->b(Ljava/lang/Object;Z)Z

    goto :goto_0
.end method

.method public final a(Lckm;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lckm",
            "<TT;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 215
    .local p0, "this":Lckm;, "Lckm<TT;>;"
    .local p1, "data":Lckm;, "Lckm<TT;>;"
    const/4 v0, 0x0

    .line 217
    .local v0, "ret":Z
    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1}, Lckm;->a()Ljava/lang/Object;

    move-result-object v1

    .line 2228
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lckm;->b(Ljava/lang/Object;Z)Z

    move-result v0

    .line 221
    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lckm;, "Lckm<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lckm;->b(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public final b(Lckm$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lckm$a",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 292
    .local p0, "this":Lckm;, "Lckm<TT;>;"
    .local p1, "observer":Lckm$a;, "Lckm$a<TT;>;"
    iget-object v0, p0, Lckm;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 294
    if-eqz p1, :cond_0

    .line 5021
    sget-object v0, Lckm;->d:Landroid/os/Handler;

    .line 4098
    new-instance v1, Lckm$a$3;

    invoke-direct {v1, p1, p0}, Lckm$a$3;-><init>(Lckm$a;Lckm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Z)Z
    .locals 5
    .param p2, "forceNotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p0, "this":Lckm;, "Lckm<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    .line 235
    if-nez p1, :cond_4

    iget-object v2, p0, Lckm;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 240
    :cond_0
    const/4 v0, 0x0

    .line 243
    .local v0, "changed":Z
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_5

    .line 244
    :cond_2
    iput-object p1, p0, Lckm;->b:Ljava/lang/Object;

    .line 245
    iget-object v2, p0, Lckm;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lckm$a;

    .line 246
    .local v1, "observer":Lckm$a;, "Lckm$a<TT;>;"
    if-eqz v1, :cond_3

    .line 249
    sget-object v3, Lckm;->d:Landroid/os/Handler;

    new-instance v4, Lckm$1;

    invoke-direct {v4, p0, v1, p1}, Lckm$1;-><init>(Lckm;Lckm$a;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 237
    .end local v0    # "changed":Z
    .end local v1    # "observer":Lckm$a;, "Lckm$a<TT;>;"
    :cond_4
    if-eqz p1, :cond_1

    iget-object v2, p0, Lckm;->b:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lckm;->b:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 259
    .restart local v0    # "changed":Z
    :cond_5
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p0, "this":Lckm;, "Lckm<TT;>;"
    const/4 v1, 0x0

    .line 280
    if-eqz p1, :cond_2

    instance-of v2, p1, Lckm;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 281
    check-cast v0, Lckm;

    .line 282
    .local v0, "obj":Lckm;
    invoke-virtual {p0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 285
    .end local v0    # "obj":Lckm;
    :cond_2
    return v1
.end method
