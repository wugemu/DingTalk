.class final Lbtb$b;
.super Ljava/lang/Object;
.source "TCPBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lbtb$c;

.field final synthetic b:Lbtb;


# direct methods
.method constructor <init>(Lbtb;Lbtb$c;)V
    .locals 0
    .param p2, "listener"    # Lbtb$c;

    .prologue
    .line 478
    iput-object p1, p0, Lbtb$b;->b:Lbtb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p2, p0, Lbtb$b;->a:Lbtb$c;

    .line 480
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 484
    iget-object v1, p0, Lbtb$b;->b:Lbtb;

    .line 1064
    invoke-virtual {v1}, Lbtb;->c()Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;

    move-result-object v0

    .line 1490
    .local v0, "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;
    iget-object v1, p0, Lbtb$b;->b:Lbtb;

    new-instance v2, Lbtb$b$1;

    invoke-direct {v2, p0, v0}, Lbtb$b$1;-><init>(Lbtb$b;Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;)V

    invoke-virtual {v1, v2}, Lbtb;->a(Ljava/lang/Runnable;)V

    .line 486
    return-void
.end method
