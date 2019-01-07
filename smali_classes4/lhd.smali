.class public final Llhd;
.super Llgv;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llhd$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 37
    invoke-direct {p0}, Llgv;-><init>()V

    .line 38
    iput-object p1, p0, Llhd;->a:Landroid/os/Handler;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Llgv$a;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 43
    new-instance v0, Llhd$a;

    iget-object v1, p0, Llhd;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Llhd$a;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
