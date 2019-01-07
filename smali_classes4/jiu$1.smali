.class final Ljiu$1;
.super Ljava/lang/Object;
.source "BaseConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiu;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljiu;


# direct methods
.method constructor <init>(Ljiu;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Ljiu$1;->a:Ljiu;

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
    .line 104
    invoke-static {}, Lih;->a()Lij;

    move-result-object v0

    const-class v1, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    invoke-interface {v0, v1}, Lij;->a(Ljava/lang/Class;)V

    .line 105
    invoke-static {}, Lih;->a()Lij;

    move-result-object v0

    const-class v1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    invoke-interface {v0, v1}, Lij;->a(Ljava/lang/Class;)V

    .line 106
    invoke-static {}, Lih;->a()Lij;

    move-result-object v0

    const-class v1, Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-interface {v0, v1}, Lij;->a(Ljava/lang/Class;)V

    .line 107
    return-void
.end method
