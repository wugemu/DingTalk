.class final Lhgi$1$1;
.super Ljava/lang/Object;
.source "BeaconDetectPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhgi$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhgi$1;


# direct methods
.method constructor <init>(Lhgi$1;)V
    .locals 0
    .param p1, "this$1"    # Lhgi$1;

    .prologue
    .line 64
    iput-object p1, p0, Lhgi$1$1;->a:Lhgi$1;

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
    .line 67
    invoke-static {}, Lhrt;->a()Lhrt;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lhrt;->a(I)V

    .line 68
    return-void
.end method
