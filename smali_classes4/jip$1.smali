.class final Ljip$1;
.super Ljava/lang/Object;
.source "MessageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljip;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

.field final synthetic b:Ljip;


# direct methods
.method constructor <init>(Ljip;Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Ljip$1;->b:Ljip;

    iput-object p2, p0, Ljip$1;->a:Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 924
    iget-object v0, p0, Ljip$1;->b:Ljip;

    iget-object v0, v0, Ljip;->f:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Ljip$1;->b:Ljip;

    iget-object v0, v0, Ljip;->f:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    iget-object v1, p0, Ljip$1;->a:Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    .line 927
    :cond_0
    return-void
.end method
