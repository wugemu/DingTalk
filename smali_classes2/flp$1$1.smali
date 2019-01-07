.class final Lflp$1$1;
.super Ljava/lang/Object;
.source "BatchProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflp$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflp$1;


# direct methods
.method constructor <init>(Lflp$1;)V
    .locals 0
    .param p1, "this$1"    # Lflp$1;

    .prologue
    .line 160
    .local p0, "this":Lflp$1$1;, "Lflp$1$1;"
    iput-object p1, p0, Lflp$1$1;->a:Lflp$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 163
    .local p0, "this":Lflp$1$1;, "Lflp$1$1;"
    iget-object v0, p0, Lflp$1$1;->a:Lflp$1;

    iget-object v0, v0, Lflp$1;->e:Lflp;

    invoke-static {v0}, Lflp;->c(Lflp;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lflp$1$1;->a:Lflp$1;

    iget-object v0, v0, Lflp$1;->d:Lflp$a;

    iget-object v1, p0, Lflp$1$1;->a:Lflp$1;

    iget-object v1, v1, Lflp$1;->e:Lflp;

    invoke-static {v1}, Lflp;->c(Lflp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lflp$a;->a(Ljava/util/List;)V

    .line 166
    :cond_0
    return-void
.end method
