.class final Lflp$1$2;
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
    .line 169
    .local p0, "this":Lflp$1$2;, "Lflp$1$2;"
    iput-object p1, p0, Lflp$1$2;->a:Lflp$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 172
    .local p0, "this":Lflp$1$2;, "Lflp$1$2;"
    iget-object v0, p0, Lflp$1$2;->a:Lflp$1;

    iget-object v0, v0, Lflp$1;->d:Lflp$a;

    iget-object v1, p0, Lflp$1$2;->a:Lflp$1;

    iget-object v1, v1, Lflp$1;->e:Lflp;

    invoke-static {v1}, Lflp;->b(Lflp;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lflp$1$2;->a:Lflp$1;

    iget-object v2, v2, Lflp$1;->e:Lflp;

    invoke-static {v2}, Lflp;->d(Lflp;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lflp$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method
