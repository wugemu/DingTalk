.class final Lrx/internal/util/InternalObservableUtils$n;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Llhk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llhk",
        "<",
        "Llgs",
        "<+",
        "Lrx/Notification",
        "<*>;>;",
        "Llgs",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-",
            "Llgs",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Llgs",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llhk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llhk",
            "<-",
            "Llgs",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Llgs",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "notificationHandler":Llhk;, "Llhk<-Llgs<+Ljava/lang/Throwable;>;+Llgs<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$n;->a:Llhk;

    .line 219
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 214
    check-cast p1, Llgs;

    .line 1223
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$n;->a:Llhk;

    sget-object v1, Lrx/internal/util/InternalObservableUtils;->ERROR_EXTRACTOR:Lrx/internal/util/InternalObservableUtils$e;

    invoke-virtual {p1, v1}, Llgs;->a(Llhk;)Llgs;

    move-result-object v1

    invoke-interface {v0, v1}, Llhk;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgs;

    .line 214
    return-object v0
.end method
