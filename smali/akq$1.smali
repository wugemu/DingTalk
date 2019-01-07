.class final Lakq$1;
.super Ljava/lang/Object;
.source "OldDBTransferMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakq;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lakq$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lakq$1;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 29
    new-instance v1, Lako;

    iget-object v2, p0, Lakq$1;->a:Landroid/content/Context;

    invoke-static {}, Lakq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lako;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .local v1, "usertrackDbMgr":Lako;
    :goto_0
    const-class v2, Lald;

    const/4 v3, 0x0

    const-string/jumbo v4, "time"

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v3, v4, v5}, Lako;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 32
    .local v0, "logs":Ljava/util/List;, "Ljava/util/List<+Lakp;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 33
    const-string/jumbo v2, "OldDBTransferMgr"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "delete old db file:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lakq$1;->b:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v2, p0, Lakq$1;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 35
    return-void

    .line 37
    :cond_0
    invoke-virtual {v1, v0}, Lako;->b(Ljava/util/List;)I

    .line 38
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v2

    .line 1621
    iget-object v2, v2, Lajw;->m:Lako;

    .line 38
    invoke-virtual {v2, v0}, Lako;->a(Ljava/util/List;)V

    goto :goto_0
.end method
