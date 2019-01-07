.class public final Latf$36;
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
.field final synthetic a:Lcom/alibaba/wukong/sync/SyncAck;

.field final synthetic b:Latf;


# direct methods
.method public constructor <init>(Latf;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 211
    iput-object p1, p0, Latf$36;->b:Latf;

    iput-object p2, p0, Latf$36;->a:Lcom/alibaba/wukong/sync/SyncAck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 214
    iget-object v0, p0, Latf$36;->b:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    iget-object v1, p0, Latf$36;->a:Lcom/alibaba/wukong/sync/SyncAck;

    invoke-virtual {v0, v1}, Lapw;->a(Lcom/alibaba/wukong/sync/SyncAck;)V

    .line 215
    return-void
.end method
