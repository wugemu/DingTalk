.class final Ldjx$5$1;
.super Ljava/lang/Object;
.source "InputSmartTipViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjx$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjx$5;


# direct methods
.method constructor <init>(Ldjx$5;)V
    .locals 0
    .param p1, "this$1"    # Ldjx$5;

    .prologue
    .line 376
    iput-object p1, p0, Ldjx$5$1;->a:Ldjx$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 379
    const/4 v4, 0x0

    .line 381
    .local v4, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Ldjx$5$1;->a:Ldjx$5;

    iget-object v0, v0, Ldjx$5;->a:Lgwo;

    iget-object v0, v0, Lgwo;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 384
    :goto_0
    iget-object v0, p0, Ldjx$5$1;->a:Ldjx$5;

    iget-object v0, v0, Ldjx$5;->b:Ldjx;

    .line 1046
    iget-object v0, v0, Ldjx;->b:Ldiz;

    .line 384
    iget-object v1, p0, Ldjx$5$1;->a:Ldjx$5;

    iget-object v1, v1, Ldjx$5;->a:Lgwo;

    iget-object v1, v1, Lgwo;->b:Ljava/lang/String;

    iget-object v2, p0, Ldjx$5$1;->a:Ldjx$5;

    iget-object v2, v2, Ldjx$5;->a:Lgwo;

    iget-object v2, v2, Lgwo;->c:Ljava/lang/String;

    iget-object v3, p0, Ldjx$5$1;->a:Ldjx$5;

    iget-object v3, v3, Ldjx$5;->a:Lgwo;

    iget-object v3, v3, Lgwo;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 385
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
