.class final Lme$1;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 44
    :try_start_0
    new-instance v0, Lmc;

    invoke-direct {v0}, Lmc;-><init>()V

    .line 45
    .local v0, "avfsCacheImpl":Lmc;
    invoke-static {}, Lmc;->a()V

    .line 47
    new-instance v1, Lme$1$1;

    invoke-direct {v1, p0}, Lme$1$1;-><init>(Lme$1;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lme;->a(Lanetwork/channel/cache/Cache;Lmf;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "avfsCacheImpl":Lmc;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
