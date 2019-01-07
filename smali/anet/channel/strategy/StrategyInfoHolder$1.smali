.class final Lanet/channel/strategy/StrategyInfoHolder$1;
.super Ljava/lang/Object;
.source "StrategyInfoHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/StrategyInfoHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lanet/channel/strategy/StrategyInfoHolder;


# direct methods
.method constructor <init>(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lanet/channel/strategy/StrategyInfoHolder$1;->b:Lanet/channel/strategy/StrategyInfoHolder;

    iput-object p2, p0, Lanet/channel/strategy/StrategyInfoHolder$1;->a:Ljava/lang/String;

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
    .line 111
    :try_start_0
    invoke-static {}, Lkf;->c()[Ljava/io/File;

    move-result-object v2

    .line 112
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 124
    .end local v2    # "files":[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 115
    .restart local v2    # "files":[Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v0, 0x0

    .local v0, "fileToLoad":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_0

    .line 116
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "filename":Ljava/lang/String;
    iget-object v4, p0, Lanet/channel/strategy/StrategyInfoHolder$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "config"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 118
    iget-object v4, p0, Lanet/channel/strategy/StrategyInfoHolder$1;->b:Lanet/channel/strategy/StrategyInfoHolder;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lanet/channel/strategy/StrategyInfoHolder;->a(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    add-int/lit8 v0, v0, 0x1

    .line 115
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "fileToLoad":I
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method
