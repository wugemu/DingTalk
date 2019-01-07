.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2$1;
.super Lbzd;
.source "MiniappRecordPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    const-string/jumbo v0, "MiniappRecordPlugin"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "record permission grant"

    aput-object v3, v1, v2

    .line 1082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 94
    return-void
.end method

.method public final onDenied()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    invoke-super {p0}, Lbzd;->onDenied()V

    .line 99
    const-string/jumbo v0, "MiniappRecordPlugin"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "record permission onDenied"

    aput-object v3, v1, v2

    .line 2082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    const-string/jumbo v1, "recordEvent"

    const-string/jumbo v2, "onerror"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public final onNeverAsk()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    invoke-super {p0}, Lbzd;->onNeverAsk()V

    .line 107
    const-string/jumbo v0, "MiniappRecordPlugin"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "record permission onDenied"

    aput-object v3, v1, v2

    .line 3082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    const-string/jumbo v1, "recordEvent"

    const-string/jumbo v2, "onerror"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    return-void
.end method
