.class final Lhlw$2$1;
.super Ljava/lang/Object;
.source "MiniEmbedVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhlw$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhlw$2;


# direct methods
.method constructor <init>(Lhlw$2;)V
    .locals 0
    .param p1, "this$1"    # Lhlw$2;

    .prologue
    .line 486
    iput-object p1, p0, Lhlw$2$1;->a:Lhlw$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 488
    iget-object v0, p0, Lhlw$2$1;->a:Lhlw$2;

    iget-object v0, v0, Lhlw$2;->a:Lcma;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lhlw$2$1;->a:Lhlw$2;

    iget-object v0, v0, Lhlw$2;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 492
    :cond_0
    return-void
.end method
