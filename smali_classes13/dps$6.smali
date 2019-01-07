.class final Ldps$6;
.super Ljava/lang/Object;
.source "CustomEmotionMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldps;


# direct methods
.method constructor <init>(Ldps;)V
    .locals 0
    .param p1, "this$0"    # Ldps;

    .prologue
    .line 522
    iput-object p1, p0, Ldps$6;->a:Ldps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 525
    iget-object v1, p0, Ldps$6;->a:Ldps;

    invoke-static {v1}, Ldps;->b(Ldps;)Ljava/util/List;

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

    check-cast v0, Ldps$a;

    .line 526
    .local v0, "listener":Ldps$a;
    if-eqz v0, :cond_0

    .line 529
    iget-object v2, p0, Ldps$6;->a:Ldps;

    invoke-static {v2}, Ldps;->c(Ldps;)Ljava/util/List;

    invoke-interface {v0}, Ldps$a;->a()V

    goto :goto_0

    .line 531
    .end local v0    # "listener":Ldps$a;
    :cond_1
    return-void
.end method
