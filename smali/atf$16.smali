.class public final Latf$16;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Latf;


# direct methods
.method public constructor <init>(Latf;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 452
    iput-object p1, p0, Latf$16;->a:Latf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 455
    iget-object v0, p0, Latf$16;->a:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    .line 1750
    invoke-static {}, Larl;->a()Larl;

    move-result-object v0

    .line 2637
    invoke-virtual {v0}, Larl;->d()Ljava/util/List;

    move-result-object v1

    .line 2638
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2639
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "[FolderManager]checkIfPreloadMyFolders myFolders size="

    aput-object v2, v0, v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 2640
    :goto_0
    return-void

    .line 2643
    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "[FolderManager]checkIfPreloadMyFolders myFolders"

    aput-object v2, v1, v3

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 2644
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Larl;->a(Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
