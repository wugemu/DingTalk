.class final Lfuh$1;
.super Ljava/lang/Object;
.source "CardRedDotHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfuh;->onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfuh;


# direct methods
.method constructor <init>(Lfuh;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lfuh;

    .prologue
    .line 53
    iput-object p1, p0, Lfuh$1;->b:Lfuh;

    iput-object p2, p0, Lfuh$1;->a:Ljava/util/List;

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
    .line 56
    iget-object v1, p0, Lfuh$1;->b:Lfuh;

    invoke-static {v1}, Lfuh;->a(Lfuh;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuh$a;

    .line 57
    .local v0, "callback":Lfuh$a;
    if-eqz v0, :cond_0

    .line 60
    iget-object v2, p0, Lfuh$1;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Lfuh$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 62
    .end local v0    # "callback":Lfuh$a;
    :cond_1
    return-void
.end method
