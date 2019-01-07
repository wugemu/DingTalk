.class final Llib$a$2;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llib$a;->a(Llhf;JLjava/util/concurrent/TimeUnit;)Llgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llhf;

.field final synthetic b:Llib$a;


# direct methods
.method constructor <init>(Llib$a;Llhf;)V
    .locals 0
    .param p1, "this$0"    # Llib$a;

    .prologue
    .line 183
    iput-object p1, p0, Llib$a$2;->b:Llib$a;

    iput-object p2, p0, Llib$a$2;->a:Llhf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Llib$a$2;->b:Llib$a;

    invoke-virtual {v0}, Llib$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Llib$a$2;->a:Llhf;

    invoke-interface {v0}, Llhf;->call()V

    goto :goto_0
.end method
