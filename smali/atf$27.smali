.class final Latf$27;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latf;->a(Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Latf;


# direct methods
.method constructor <init>(Latf;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 556
    iput-object p1, p0, Latf$27;->b:Latf;

    iput-object p2, p0, Latf$27;->a:Lcom/alibaba/wukong/Callback;

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
    .line 559
    iget-object v0, p0, Latf$27;->b:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    iget-object v0, p0, Latf$27;->a:Lcom/alibaba/wukong/Callback;

    .line 2121
    invoke-static {}, Lare;->a()Lare;

    move-result-object v1

    .line 2223
    new-instance v2, Lare$4;

    invoke-direct {v2, v1, v0}, Lare$4;-><init>(Lare;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v1, v2}, Lare;->a(Lcom/alibaba/wukong/Callback;)V

    .line 560
    return-void
.end method
