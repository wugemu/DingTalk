.class final Lapi$9;
.super Ljava/lang/Object;
.source "CalendarActivityPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapi;


# direct methods
.method constructor <init>(Lapi;)V
    .locals 0
    .param p1, "this$0"    # Lapi;

    .prologue
    .line 146
    iput-object p1, p0, Lapi$9;->a:Lapi;

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
    .line 149
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    .line 1506
    iget-object v1, v0, Latf;->c:Latf$c;

    new-instance v2, Latf$23;

    invoke-direct {v2, v0}, Latf$23;-><init>(Latf;)V

    invoke-virtual {v1, v2}, Latf$c;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method
