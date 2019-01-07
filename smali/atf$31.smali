.class final Latf$31;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latf;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Latf;


# direct methods
.method constructor <init>(Latf;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 594
    iput-object p1, p0, Latf$31;->a:Latf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 597
    iget-object v0, p0, Latf$31;->a:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    .line 2146
    invoke-static {}, Lare;->a()Lare;

    move-result-object v0

    .line 2364
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    new-instance v2, Lare$8;

    invoke-direct {v2, v0}, Lare$8;-><init>(Lare;)V

    invoke-virtual {v1, v2}, Latf;->b(Ljava/lang/Runnable;)V

    .line 598
    return-void
.end method
