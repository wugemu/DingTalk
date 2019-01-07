.class public abstract Late;
.super Ljava/lang/Object;
.source "AbsCalendarEventProvider.java"

# interfaces
.implements Lati;


# instance fields
.field final a:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lawv;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lati$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Late;->b:Ljava/util/List;

    .line 20
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Late;->a:Lfp;

    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Late;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    iget-object v0, p0, Late;->a:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 36
    return-void
.end method

.method public final a(Lati$a;)V
    .locals 1
    .param p1, "listener"    # Lati$a;

    .prologue
    .line 28
    iget-object v0, p0, Late;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 39
    iget-object v1, p0, Late;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lati$a;

    .line 40
    .local v0, "onDataSetChangedListener":Lati$a;
    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0}, Lati$a;->a()V

    goto :goto_0

    .line 45
    .end local v0    # "onDataSetChangedListener":Lati$a;
    :cond_1
    return-void
.end method
