.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$2;
.super Ljava/lang/Object;
.source "MiniappAudioPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$2;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 232
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    .line 233
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$2;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "localId":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v1

    .line 235
    .local v1, "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    const-string/jumbo v3, "innerAudioManagerEvent"

    const-string/jumbo v4, "onerror"

    const/16 v5, 0xc

    invoke-static {v2, v3, v4, v5}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$2;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;)Lhmo;

    move-result-object v2

    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$2;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lhmo;->a(Ljava/lang/String;Lcom/alibaba/doraemon/audio/OnPlayListener;)V

    goto :goto_0
.end method
