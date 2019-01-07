.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;
.super Ljava/lang/Object;
.source "MiniappRecordPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;->a:Landroid/app/Activity;

    const/4 v1, 0x2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.RECORD_AUDIO"

    aput-object v4, v2, v3

    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2$1;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;)V

    invoke-static {v0, v1, v2, v3}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 112
    return-void
.end method
