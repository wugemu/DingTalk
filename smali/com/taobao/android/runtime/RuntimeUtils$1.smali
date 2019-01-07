.class final Lcom/taobao/android/runtime/RuntimeUtils$1;
.super Ljava/lang/Object;
.source "RuntimeUtils.java"

# interfaces
.implements Lcom/taobao/android/runtime/IMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/runtime/RuntimeUtils;->init(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final trace(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "typeID"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;
    .param p3, "success"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 25
    if-eqz p3, :cond_0

    .line 26
    const-string/jumbo v0, "Runtime"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    const-string/jumbo v0, "Runtime"

    const-string/jumbo v1, "init"

    const-string/jumbo v2, "-1"

    invoke-static {v0, v1, v2, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
