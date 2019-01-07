.class final Latf$32;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/alibaba/wukong/Callback;

.field final synthetic e:Latf;


# direct methods
.method constructor <init>(Latf;JJJLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 173
    iput-object p1, p0, Latf$32;->e:Latf;

    iput-wide p2, p0, Latf$32;->a:J

    iput-wide p4, p0, Latf$32;->b:J

    iput-wide p6, p0, Latf$32;->c:J

    iput-object p8, p0, Latf$32;->d:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 176
    iget-object v0, p0, Latf$32;->e:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v2

    iget-wide v8, p0, Latf$32;->a:J

    iget-wide v4, p0, Latf$32;->b:J

    iget-wide v6, p0, Latf$32;->c:J

    iget-object v3, p0, Latf$32;->d:Lcom/alibaba/wukong/Callback;

    .line 1426
    new-instance v1, Lapw$7;

    invoke-direct/range {v1 .. v7}, Lapw$7;-><init>(Lapw;Lcom/alibaba/wukong/Callback;JJ)V

    .line 1447
    invoke-static {}, Larl;->a()Larl;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v1}, Larl;->a(JLapv;)V

    .line 177
    return-void
.end method
