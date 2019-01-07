.class final Ljax$b;
.super Landroid/os/AsyncTask;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljax;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljax;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "newApkFile"    # Ljava/lang/String;
    .param p3, "quiet"    # Z

    .prologue
    .line 402
    iput-object p1, p0, Ljax$b;->a:Ljax;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 403
    iput-object p2, p0, Ljax$b;->b:Ljava/lang/String;

    .line 404
    iput-boolean p3, p0, Ljax$b;->c:Z

    .line 405
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "x0"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 390
    check-cast p1, [Ljava/lang/String;

    .line 1426
    .end local p1    # "x0":[Ljava/lang/Object;
    iget-object v0, p0, Ljax$b;->a:Ljax;

    invoke-static {v0}, Ljax;->e(Ljax;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljax$b;->b:Ljava/lang/String;

    aget-object v2, p1, v4

    invoke-static {v0, v1, v2}, Lcom/taobao/bspatch/BSPatch;->bspatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1427
    if-ne v0, v3, :cond_0

    .line 1429
    iget-object v0, p0, Ljax$b;->b:Ljava/lang/String;

    invoke-static {v0}, Ljav;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1430
    if-eqz v0, :cond_0

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1433
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljax$b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1434
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected final onCancelled()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 394
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 396
    iget-object v0, p0, Ljax$b;->a:Ljax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljax;->a(Ljax;Z)Z

    .line 397
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "x0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 390
    check-cast p1, Ljava/lang/Boolean;

    .line 1410
    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1411
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1413
    iget-object v0, p0, Ljax$b;->a:Ljax;

    invoke-static {v0}, Ljax;->d(Ljax;)Ljaw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Ljax$b;->a:Ljax;

    invoke-static {v0}, Ljax;->d(Ljax;)Ljaw;

    move-result-object v0

    iget-object v1, p0, Ljax$b;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljaw;->a(Ljava/lang/String;)V

    .line 1420
    :cond_0
    :goto_0
    iget-object v0, p0, Ljax$b;->a:Ljax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljax;->a(Ljax;Z)Z

    .line 390
    return-void

    .line 1417
    :cond_1
    iget-object v0, p0, Ljax$b;->a:Ljax;

    invoke-static {v0}, Ljax;->d(Ljax;)Ljaw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Ljax$b;->a:Ljax;

    invoke-static {v0}, Ljax;->d(Ljax;)Ljaw;

    move-result-object v0

    const/16 v1, -0xf

    const-string/jumbo v2, "MD5\u6821\u9a8c\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljaw;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
