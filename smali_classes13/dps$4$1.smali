.class final Ldps$4$1;
.super Ljava/lang/Object;
.source "CustomEmotionMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldps$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldps$4;


# direct methods
.method constructor <init>(Ldps$4;)V
    .locals 0
    .param p1, "this$1"    # Ldps$4;

    .prologue
    .line 295
    iput-object p1, p0, Ldps$4$1;->a:Ldps$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 298
    iget-object v0, p0, Ldps$4$1;->a:Ldps$4;

    iget-object v0, v0, Ldps$4;->c:Ldps;

    iget-object v1, p0, Ldps$4$1;->a:Ldps$4;

    iget-object v1, v1, Ldps$4;->a:Ljava/util/List;

    invoke-static {v0, v1}, Ldps;->a(Ldps;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Ldps$4$1;->a:Ldps$4;

    iget-object v0, v0, Ldps$4;->c:Ldps;

    invoke-static {v0}, Ldps;->a(Ldps;)V

    .line 302
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldps$4$1$1;

    invoke-direct {v1, p0}, Ldps$4$1$1;-><init>(Ldps$4$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 321
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldps$4$1$2;

    invoke-direct {v1, p0}, Ldps$4$1$2;-><init>(Ldps$4$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
