.class final Lfvl$1;
.super Ljava/lang/Object;
.source "ClearCacheHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfvl;->onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfvl;


# direct methods
.method constructor <init>(Lfvl;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lfvl;

    .prologue
    .line 42
    iput-object p1, p0, Lfvl$1;->b:Lfvl;

    iput-object p2, p0, Lfvl$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 45
    iget-object v1, p0, Lfvl$1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfow;

    .line 46
    .local v0, "model":Lfow;
    if-eqz v0, :cond_0

    .line 49
    iget-object v2, p0, Lfvl$1;->b:Lfvl;

    invoke-static {v2, v0}, Lfvl;->a(Lfvl;Lfow;)V

    goto :goto_0

    .line 51
    .end local v0    # "model":Lfow;
    :cond_1
    return-void
.end method
