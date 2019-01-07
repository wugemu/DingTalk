.class final Ldmt$4;
.super Ljava/util/TimerTask;
.source "LuckyTimeBannerManager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldmt;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldmt;


# direct methods
.method constructor <init>(Ldmt;)V
    .locals 0
    .param p1, "this$0"    # Ldmt;

    .prologue
    .line 264
    iput-object p1, p0, Ldmt$4;->a:Ldmt;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 267
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldmt$4$1;

    invoke-direct {v1, p0}, Ldmt$4$1;-><init>(Ldmt$4;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 275
    return-void
.end method
