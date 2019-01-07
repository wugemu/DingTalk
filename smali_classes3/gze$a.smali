.class final Lgze$a;
.super Lgze$c;
.source "BizErrorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lgze;


# direct methods
.method constructor <init>(Lgze;Lgzh;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lgze;
    .param p2, "exceptionModule"    # Lgzh;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "reportName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J
    .param p7, "type"    # Ljava/lang/String;

    .prologue
    .line 463
    iput-object p1, p0, Lgze$a;->a:Lgze;

    .line 464
    invoke-direct/range {p0 .. p7}, Lgze$c;-><init>(Lgze;Lgzh;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    .line 465
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v3, 0x64

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lgze$a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p0}, Lgze$a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p0}, Lgze$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {p0}, Lgze$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {p0}, Lgze$a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    iget-object v1, p0, Lgze$a;->h:Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_0

    .line 478
    invoke-virtual {p0}, Lgze$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1239
    const/4 v2, 0x0

    invoke-super {p0, v2, v3}, Lgze$b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    const-string/jumbo v2, "events"

    invoke-super {p0, v2, v3}, Lgze$b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
