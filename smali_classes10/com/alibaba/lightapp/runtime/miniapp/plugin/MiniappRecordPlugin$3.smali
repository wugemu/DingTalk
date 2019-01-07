.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;
.super Ljava/lang/Object;
.source "MiniappRecordPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Event;

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
    .line 156
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v1

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    const-string/jumbo v2, "recordEvent"

    const-string/jumbo v3, "onerror"

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    const-string/jumbo v1, "MiniappRecordPlugin"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "mAudioMagician is null"

    aput-object v4, v2, v3

    .line 1098
    const-string/jumbo v3, "mini_api"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v1}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "miniAppId":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/audio/AudioMagician;->recordCommon(Lcom/alibaba/doraemon/audio/OnRecordListener;)Ljava/lang/String;

    goto :goto_0
.end method
