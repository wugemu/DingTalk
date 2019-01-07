.class final Lckv$1;
.super Ljava/lang/Object;
.source "LunarFestivalInfoPreloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lckv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lckv;


# direct methods
.method constructor <init>(Lckv;II)V
    .locals 0
    .param p1, "this$0"    # Lckv;

    .prologue
    .line 44
    iput-object p1, p0, Lckv$1;->c:Lckv;

    iput p2, p0, Lckv$1;->a:I

    iput p3, p0, Lckv$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 47
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lckv$1;->c:Lckv;

    invoke-static {v1}, Lckv;->a(Lckv;)Lckv$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    iget-object v0, p0, Lckv$1;->c:Lckv;

    iget v1, p0, Lckv$1;->a:I

    invoke-static {v0, v1}, Lckv;->a(Lckv;I)I

    .line 49
    iget-object v0, p0, Lckv$1;->c:Lckv;

    iget v1, p0, Lckv$1;->b:I

    invoke-static {v0, v1}, Lckv;->b(Lckv;I)I

    .line 50
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lckv$1;->c:Lckv;

    invoke-static {v1}, Lckv;->a(Lckv;)Lckv$a;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    return-void
.end method
