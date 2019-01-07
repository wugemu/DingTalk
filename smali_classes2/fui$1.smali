.class final Lfui$1;
.super Ljava/lang/Object;
.source "ExchangeCardHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfui;->onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfui;


# direct methods
.method constructor <init>(Lfui;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lfui;

    .prologue
    .line 67
    iput-object p1, p0, Lfui$1;->b:Lfui;

    iput-object p2, p0, Lfui$1;->a:Ljava/util/List;

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
    .line 70
    iget-object v1, p0, Lfui$1;->b:Lfui;

    invoke-static {v1}, Lfui;->a(Lfui;)Ljava/util/List;

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

    check-cast v0, Lfui$a;

    .line 71
    .local v0, "callback":Lfui$a;
    if-eqz v0, :cond_0

    .line 74
    iget-object v2, p0, Lfui$1;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Lfui$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 76
    .end local v0    # "callback":Lfui$a;
    :cond_1
    return-void
.end method
