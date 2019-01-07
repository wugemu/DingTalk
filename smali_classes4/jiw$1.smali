.class final Ljiw$1;
.super Ljava/lang/Object;
.source "HttpDnsProvider.java"

# interfaces
.implements Lkn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiw;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljiw;


# direct methods
.method constructor <init>(Ljiw;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Ljiw$1;->a:Ljiw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkk;)V
    .locals 4
    .param p1, "event"    # Lkk;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 34
    new-instance v0, Ljiw$1$1;

    invoke-direct {v0, p0}, Ljiw$1$1;-><init>(Ljiw$1;)V

    const-wide/16 v2, 0x7d0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Ljin;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 40
    return-void
.end method
