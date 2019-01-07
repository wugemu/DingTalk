.class public final Latf$2;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Latf;


# direct methods
.method public constructor <init>(Latf;JZ)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 251
    iput-object p1, p0, Latf$2;->c:Latf;

    iput-wide p2, p0, Latf$2;->a:J

    iput-boolean p4, p0, Latf$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 254
    iget-object v0, p0, Latf$2;->c:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    iget-wide v0, p0, Latf$2;->a:J

    iget-boolean v2, p0, Latf$2;->b:Z

    .line 1557
    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    .line 1561
    invoke-static {}, Larl;->a()Larl;

    move-result-object v3

    .line 2260
    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 2263
    invoke-static {}, Latf;->a()Latf;

    move-result-object v4

    new-instance v5, Larl$17;

    invoke-direct {v5, v3, v0, v1, v2}, Larl$17;-><init>(Larl;JZ)V

    invoke-virtual {v4, v5}, Latf;->b(Ljava/lang/Runnable;)V

    .line 255
    :cond_0
    return-void
.end method
