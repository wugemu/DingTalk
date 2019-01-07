.class final Lije;
.super Ljava/lang/Object;
.source "DiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lijc;


# direct methods
.method constructor <init>(Lijc;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lije;->a:Lijc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 501
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lije;->a:Lijc;

    .line 1433
    const/4 v1, 0x0

    .line 501
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 504
    if-nez v1, :cond_1

    .line 511
    :cond_0
    return-void

    .line 507
    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 508
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
