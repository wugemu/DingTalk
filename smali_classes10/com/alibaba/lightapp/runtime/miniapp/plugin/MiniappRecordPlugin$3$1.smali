.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;
.super Ljava/lang/Object;
.source "MiniappRecordPlugin.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/OnRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifySampleResult(JLjava/util/List;)V
    .locals 3
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->e(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/doraemon/audio/AudioMagician;->stopRecord()V

    .line 223
    :cond_0
    return-void
.end method

.method public final onRecordCompleted(Ljava/lang/String;Ljava/util/List;J)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 181
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-static {v0, v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;Z)Z

    .line 183
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->d(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->c(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 185
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v0, "hybrid_e_app_record_show_permission_hint"

    invoke-static {v0, v5}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v3, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->RECORD:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->b(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;)V

    .line 190
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    const-string/jumbo v1, "recordEvent"

    const-string/jumbo v2, "onerror"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    const-string/jumbo v0, "MiniappRecordPlugin"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "record end path error, path = "

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    .line 1098
    const-string/jumbo v2, "mini_api"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :goto_0
    return-void

    .line 196
    :cond_2
    const-string/jumbo v0, "MiniappRecordPlugin"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onRecordErrorListener(ILjava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 227
    const-string/jumbo v0, "MiniappRecordPlugin"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onRecordError: errorCode ="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "errorMsg ="

    aput-object v3, v1, v2

    aput-object p2, v1, v5

    .line 2098
    const-string/jumbo v2, "mini_api"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    if-ne v4, p1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    const-string/jumbo v1, "recordEvent"

    const-string/jumbo v2, "onerror"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    const-string/jumbo v1, "recordEvent"

    const-string/jumbo v2, "onerror"

    invoke-static {v0, v1, v2, v5}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onRecordStart(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 166
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-static {v1, v5}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;Z)Z

    .line 168
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->d(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->c(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 170
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v1, "hybrid_e_app_record_show_permission_hint"

    invoke-static {v1, v5}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v4, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->RECORD:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;)V

    .line 174
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 175
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "onstart"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    const-string/jumbo v2, "recordEvent"

    invoke-static {v1, v2, v0}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 177
    return-void
.end method
