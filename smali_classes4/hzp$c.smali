.class final Lhzp$c;
.super Ljava/lang/Object;
.source "SpringSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Landroid/support/animation/SpringAnimation;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhzp$c;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhzp$c;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhzp$c;",
            ">;"
        }
    .end annotation
.end field

.field f:Lhzp$c;

.field g:Z


# direct methods
.method public constructor <init>(Landroid/support/animation/SpringAnimation;)V
    .locals 2
    .param p1, "animation"    # Landroid/support/animation/SpringAnimation;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object v1, p0, Lhzp$c;->b:Ljava/util/ArrayList;

    .line 300
    iput-boolean v0, p0, Lhzp$c;->c:Z

    .line 306
    iput-object v1, p0, Lhzp$c;->f:Lhzp$c;

    .line 308
    iput-boolean v0, p0, Lhzp$c;->g:Z

    .line 311
    iput-object p1, p0, Lhzp$c;->a:Landroid/support/animation/SpringAnimation;

    .line 312
    return-void
.end method


# virtual methods
.method public final a(Lhzp$c;)V
    .locals 2
    .param p1, "node"    # Lhzp$c;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 325
    :goto_0
    iget-object v1, p0, Lhzp$c;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lhzp$c;->d:Ljava/util/ArrayList;

    .line 328
    :cond_0
    iget-object v1, p0, Lhzp$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    iget-object v1, p0, Lhzp$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    move-object v0, p0

    .end local p1    # "node":Lhzp$c;
    .local v0, "node":Lhzp$c;
    move-object p0, p1

    move-object p1, v0

    .end local v0    # "node":Lhzp$c;
    .restart local p1    # "node":Lhzp$c;
    goto :goto_0

    .line 332
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhzp$c;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 345
    .local p1, "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhzp$c;>;"
    if-nez p1, :cond_1

    .line 352
    :cond_0
    return-void

    .line 348
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 349
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 350
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhzp$c;

    invoke-virtual {p0, v2}, Lhzp$c;->b(Lhzp$c;)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(Lhzp$c;)V
    .locals 1
    .param p1, "node"    # Lhzp$c;

    .prologue
    .line 335
    :goto_0
    iget-object v0, p0, Lhzp$c;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhzp$c;->e:Ljava/util/ArrayList;

    .line 338
    :cond_0
    iget-object v0, p0, Lhzp$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    iget-object v0, p0, Lhzp$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    iget-object v0, p1, Lhzp$c;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lhzp$c;->b:Ljava/util/ArrayList;

    .line 1318
    :cond_1
    iget-object v0, p1, Lhzp$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1319
    iget-object v0, p1, Lhzp$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    :cond_2
    return-void
.end method
