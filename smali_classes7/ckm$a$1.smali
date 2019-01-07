.class final Lckm$a$1;
.super Ljava/lang/Object;
.source "ObservedData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lckm$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lckm$a;


# direct methods
.method constructor <init>(Lckm$a;)V
    .locals 0
    .param p1, "this$0"    # Lckm$a;

    .prologue
    .line 58
    .local p0, "this":Lckm$a$1;, "Lckm$a$1;"
    iput-object p1, p0, Lckm$a$1;->a:Lckm$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 61
    .local p0, "this":Lckm$a$1;, "Lckm$a$1;"
    iget-object v1, p0, Lckm$a$1;->a:Lckm$a;

    invoke-static {v1}, Lckm$a;->a(Lckm$a;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lckm$a$1;->a:Lckm$a;

    invoke-static {v1}, Lckm$a;->a(Lckm$a;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckm;

    .line 64
    .local v0, "observer":Lckm;, "Lckm<TT;>;"
    if-eqz v0, :cond_0

    iget-object v2, p0, Lckm$a$1;->a:Lckm$a;

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lckm$a$1;->a:Lckm$a;

    invoke-virtual {v0, v2}, Lckm;->b(Lckm$a;)V

    goto :goto_0

    .line 68
    .end local v0    # "observer":Lckm;, "Lckm<TT;>;"
    :cond_1
    iget-object v1, p0, Lckm$a$1;->a:Lckm$a;

    invoke-static {v1}, Lckm$a;->a(Lckm$a;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 69
    iget-object v1, p0, Lckm$a$1;->a:Lckm$a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lckm$a;->a(Lckm$a;Ljava/util/Set;)Ljava/util/Set;

    .line 71
    :cond_2
    return-void
.end method
