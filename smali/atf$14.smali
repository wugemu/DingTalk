.class public final Latf$14;
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
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Latf;


# direct methods
.method public constructor <init>(Latf;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 434
    iput-object p1, p0, Latf$14;->b:Latf;

    iput-object p2, p0, Latf$14;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 437
    iget-object v0, p0, Latf$14;->b:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    iget-object v0, p0, Latf$14;->a:Lcom/alibaba/wukong/Callback;

    .line 1742
    invoke-static {}, Larl;->a()Larl;

    move-result-object v1

    .line 2388
    invoke-static {}, Latf;->a()Latf;

    move-result-object v2

    new-instance v3, Larl$2;

    invoke-direct {v3, v1, v0}, Larl$2;-><init>(Larl;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v2, v3}, Latf;->b(Ljava/lang/Runnable;)V

    .line 438
    return-void
.end method
