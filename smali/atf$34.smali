.class final Latf$34;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latf;->a(JJLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Latf;


# direct methods
.method constructor <init>(Latf;JJLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 182
    iput-object p1, p0, Latf$34;->d:Latf;

    iput-wide p2, p0, Latf$34;->a:J

    iput-wide p4, p0, Latf$34;->b:J

    iput-object p6, p0, Latf$34;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Latf$34;->d:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v1

    iget-wide v2, p0, Latf$34;->a:J

    iget-wide v4, p0, Latf$34;->b:J

    iget-object v6, p0, Latf$34;->c:Lcom/alibaba/wukong/Callback;

    .line 1452
    invoke-static {}, Larl;->a()Larl;

    move-result-object v7

    new-instance v0, Lapw$8;

    invoke-direct/range {v0 .. v6}, Lapw$8;-><init>(Lapw;JJLcom/alibaba/wukong/Callback;)V

    .line 2163
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    new-instance v2, Larl$12;

    invoke-direct {v2, v7, v0}, Larl$12;-><init>(Larl;Lapv;)V

    invoke-virtual {v1, v2}, Latf;->b(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method
