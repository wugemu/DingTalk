.class final Larl$8;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Larl;


# direct methods
.method constructor <init>(Larl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 610
    iput-object p1, p0, Larl$8;->b:Larl;

    iput-object p2, p0, Larl$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 613
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[FolderManager]removeFolder folderId:"

    aput-object v1, v0, v3

    iget-object v1, p0, Larl$8;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Larl$8;->b:Larl;

    invoke-static {v0}, Larl;->f(Larl;)Latu;

    move-result-object v0

    iget-object v1, p0, Larl$8;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Latu;->a(Ljava/lang/String;)Z

    .line 615
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v1, p0, Larl$8;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lark;->e(Ljava/lang/String;)V

    .line 616
    invoke-static {}, Lapy;->a()Lapy;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Larl$8;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapy;->a(Ljava/util/List;)V

    .line 617
    invoke-static {}, Lavh;->a()V

    .line 618
    return-void
.end method
