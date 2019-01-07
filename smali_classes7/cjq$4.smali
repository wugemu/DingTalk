.class final Lcjq$4;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcjq;->a(Lcjs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjs;

.field final synthetic b:Lcjq;


# direct methods
.method constructor <init>(Lcjq;Lcjs;)V
    .locals 0
    .param p1, "this$0"    # Lcjq;

    .prologue
    .line 189
    iput-object p1, p0, Lcjq$4;->b:Lcjq;

    iput-object p2, p0, Lcjq$4;->a:Lcjs;

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
    .line 192
    iget-object v0, p0, Lcjq$4;->b:Lcjq;

    iget-object v1, p0, Lcjq$4;->a:Lcjs;

    invoke-static {v0, v1}, Lcjq;->b(Lcjq;Lcjs;)Lcjs;

    .line 193
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcjq$4;->b:Lcjq;

    invoke-static {v1}, Lcjq;->d(Lcjq;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcjq$4;->b:Lcjq;

    invoke-static {v1}, Lcjq;->d(Lcjq;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    return-void
.end method
