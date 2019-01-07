.class final Laun$25;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laun;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lask;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laun;


# direct methods
.method constructor <init>(Laun;)V
    .locals 0
    .param p1, "this$0"    # Laun;

    .prologue
    .line 1260
    iput-object p1, p0, Laun$25;->a:Laun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1277
    iget-object v0, p0, Laun$25;->a:Laun;

    .line 2077
    iput-boolean v2, v0, Laun;->D:Z

    .line 1278
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarDrawerContainer] loadCalendarShareAsync onException. code="

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1280
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1260
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1260
    check-cast p1, Ljava/util/List;

    .line 2264
    iget-object v0, p0, Laun$25;->a:Laun;

    .line 3077
    iput-boolean v3, v0, Laun;->D:Z

    .line 2265
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "[CalendarDrawerContainer] loadCalendarShareAsync onSuccess. size="

    aput-object v0, v1, v3

    if-nez p1, :cond_1

    const-string/jumbo v0, "0"

    :goto_0
    aput-object v0, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 2266
    iget-object v0, p0, Laun$25;->a:Laun;

    invoke-static {v0, p1}, Laun;->b(Laun;Ljava/util/List;)V

    .line 2267
    iget-object v0, p0, Laun$25;->a:Laun;

    .line 4077
    invoke-virtual {v0}, Laun;->a()V

    .line 2269
    iget-object v0, p0, Laun$25;->a:Laun;

    .line 5077
    iget-boolean v0, v0, Laun;->A:Z

    .line 2269
    if-eqz v0, :cond_0

    .line 2270
    iget-object v0, p0, Laun$25;->a:Laun;

    .line 6291
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarDrawerContainer] loadShareFoldersFromRemote."

    aput-object v2, v1, v3

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 6292
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    new-instance v2, Laun$26;

    invoke-direct {v2, v0}, Laun$26;-><init>(Laun;)V

    .line 6443
    iget-object v0, v1, Latf;->b:Latf$a;

    new-instance v3, Latf$15;

    invoke-direct {v3, v1, v2}, Latf$15;-><init>(Latf;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v3}, Latf$a;->execute(Ljava/lang/Runnable;)V

    .line 1260
    :cond_0
    return-void

    .line 2265
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
