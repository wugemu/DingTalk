.class final Laun$24;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laun;
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
        "Laro;",
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
    .line 1231
    iput-object p1, p0, Laun$24;->a:Laun;

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
    .line 1245
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarDrawerContainer] loadAliMailFolderFromRemote onException code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1246
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1231
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1231
    check-cast p1, Ljava/util/List;

    .line 2235
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "[CalendarDrawerContainer] loadAliMailFolderFromRemote calendarObjects.size="

    aput-object v0, v1, v3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v0, "0"

    .line 2236
    :goto_0
    aput-object v0, v1, v2

    .line 2235
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 2237
    iget-object v0, p0, Laun$24;->a:Laun;

    invoke-static {v0, p1}, Laun;->a(Laun;Ljava/util/List;)V

    .line 2238
    iget-object v0, p0, Laun$24;->a:Laun;

    .line 3077
    iput-boolean v3, v0, Laun;->B:Z

    .line 2240
    iget-object v0, p0, Laun$24;->a:Laun;

    .line 4077
    invoke-virtual {v0}, Laun;->a()V

    .line 1231
    return-void

    .line 2236
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
