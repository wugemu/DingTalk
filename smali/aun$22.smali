.class final Laun$22;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"

# interfaces
.implements Lapv;


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
        "Lapv",
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
    .line 1166
    iput-object p1, p0, Laun$22;->a:Laun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1166
    check-cast p1, Ljava/util/List;

    .line 2170
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "[CalendarDrawerContainer] queryAliMailFolders calendarObjects.size="

    aput-object v0, v1, v3

    if-nez p1, :cond_1

    const-string/jumbo v0, "0"

    .line 2171
    :goto_0
    aput-object v0, v1, v2

    .line 2170
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 2172
    iget-object v0, p0, Laun$22;->a:Laun;

    invoke-static {v0, p1}, Laun;->a(Laun;Ljava/util/List;)V

    .line 2173
    iget-object v0, p0, Laun$22;->a:Laun;

    .line 3077
    invoke-virtual {v0}, Laun;->a()V

    .line 2175
    iget-object v0, p0, Laun$22;->a:Laun;

    .line 4077
    iget-boolean v0, v0, Laun;->B:Z

    .line 2175
    if-eqz v0, :cond_0

    .line 2176
    iget-object v0, p0, Laun$22;->a:Laun;

    .line 5230
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarDrawerContainer] loadAliMailFolderFromRemote."

    aput-object v2, v1, v3

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 5231
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    new-instance v2, Laun$24;

    invoke-direct {v2, v0}, Laun$24;-><init>(Laun;)V

    invoke-virtual {v1, v2}, Latf;->a(Lcom/alibaba/wukong/Callback;)V

    .line 1166
    :cond_0
    return-void

    .line 2171
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
