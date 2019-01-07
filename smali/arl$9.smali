.class public final Larl$9;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Larl;


# direct methods
.method public constructor <init>(Larl;)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 623
    iput-object p1, p0, Larl$9;->a:Larl;

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
    const/4 v3, 0x1

    .line 626
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[FolderManager]clearCache"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Larl$9;->a:Larl;

    invoke-static {v0}, Larl;->e(Larl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 628
    iget-object v0, p0, Larl$9;->a:Larl;

    invoke-static {v0}, Larl;->b(Larl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 629
    iget-object v0, p0, Larl$9;->a:Larl;

    invoke-static {v0, v3}, Larl;->a(Larl;Z)Z

    .line 630
    return-void
.end method
