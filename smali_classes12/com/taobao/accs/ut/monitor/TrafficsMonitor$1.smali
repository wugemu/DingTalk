.class Lcom/taobao/accs/ut/monitor/TrafficsMonitor$1;
.super Ljava/util/HashMap;
.source "TrafficsMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/ut/monitor/TrafficsMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;


# direct methods
.method constructor <init>(Lcom/taobao/accs/ut/monitor/TrafficsMonitor;)V
    .locals 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$1;->this$0:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 40
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "512"

    invoke-virtual {p0, v0, v1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string/jumbo v0, "motu"

    const-string/jumbo v1, "513"

    invoke-virtual {p0, v0, v1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string/jumbo v0, "acds"

    const-string/jumbo v1, "514"

    invoke-virtual {p0, v0, v1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v0, "agooSend"

    const-string/jumbo v1, "515"

    invoke-virtual {p0, v0, v1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v0, "agooAck"

    const-string/jumbo v1, "515"

    invoke-virtual {p0, v0, v1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v0, "agooTokenReport"

    const-string/jumbo v1, "515"

    invoke-virtual {p0, v0, v1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v0, "accsSelf"

    const-string/jumbo v1, "1000"

    invoke-virtual {p0, v0, v1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method
