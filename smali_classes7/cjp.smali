.class public final Lcjp;
.super Ljava/lang/Object;
.source "EventCenterImpl.java"

# interfaces
.implements Lcjo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcjp$a;
    }
.end annotation


# static fields
.field private static b:Landroid/os/Handler;


# instance fields
.field private a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcjo$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcjp;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcjp;->a:Ljava/util/Queue;

    .line 39
    return-void
.end method

.method static synthetic a(Lcjp;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcjp;

    .prologue
    .line 14
    iget-object v0, p0, Lcjp;->a:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method public final a(Lcjo$a;)V
    .locals 1
    .param p1, "event"    # Lcjo$a;

    .prologue
    .line 21
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcjp;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcjp;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_0
    return-void
.end method

.method public final a(Lcjo$b;)V
    .locals 2
    .param p1, "data"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 32
    sget-object v0, Lcjp;->b:Landroid/os/Handler;

    new-instance v1, Lcjp$a;

    invoke-direct {v1, p0, p1}, Lcjp$a;-><init>(Lcjp;Lcjo$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method

.method public final b(Lcjo$a;)V
    .locals 1
    .param p1, "event"    # Lcjo$a;

    .prologue
    .line 27
    if-eqz p1, :cond_0

    .line 28
    iget-object v0, p0, Lcjp;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    return-void
.end method
