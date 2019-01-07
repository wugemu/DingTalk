.class final Llia$b$1;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llia$b;->a(Llhf;JLjava/util/concurrent/TimeUnit;)Llgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llhf;

.field final synthetic b:Llia$b;


# direct methods
.method constructor <init>(Llia$b;Llhf;)V
    .locals 0
    .param p1, "this$0"    # Llia$b;

    .prologue
    .line 224
    iput-object p1, p0, Llia$b$1;->b:Llia$b;

    iput-object p2, p0, Llia$b$1;->a:Llhf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Llia$b$1;->b:Llia$b;

    invoke-virtual {v0}, Llia$b;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Llia$b$1;->a:Llhf;

    invoke-interface {v0}, Llhf;->call()V

    goto :goto_0
.end method
