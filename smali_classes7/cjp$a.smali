.class final Lcjp$a;
.super Ljava/lang/Object;
.source "EventCenterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcjp;

.field private b:Lcjo$b;


# direct methods
.method protected constructor <init>(Lcjp;Lcjo$b;)V
    .locals 0
    .param p1, "this$0"    # Lcjp;
    .param p2, "data"    # Lcjo$b;

    .prologue
    .line 42
    iput-object p1, p0, Lcjp$a;->a:Lcjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcjp$a;->b:Lcjo$b;

    .line 44
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    iget-object v1, p0, Lcjp$a;->a:Lcjp;

    invoke-static {v1}, Lcjp;->a(Lcjp;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjo$a;

    .line 51
    .local v0, "listener":Lcjo$a;
    if-eqz v0, :cond_0

    .line 52
    iget-object v2, p0, Lcjp$a;->b:Lcjo$b;

    invoke-interface {v0, v2}, Lcjo$a;->a(Lcjo$b;)V

    goto :goto_0

    .line 55
    .end local v0    # "listener":Lcjo$a;
    :cond_1
    return-void
.end method
