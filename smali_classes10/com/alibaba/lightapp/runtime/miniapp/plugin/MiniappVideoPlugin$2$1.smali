.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$1;
.super Ljava/lang/Object;
.source "MiniappVideoPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 253
    packed-switch p2, :pswitch_data_0

    .line 263
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    .local v0, "intent":Landroid/os/Bundle;
    const-string/jumbo v1, "video_compress"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    const-string/jumbo v1, "album_show_video"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    const-string/jumbo v1, "video_compress_worker"

    new-instance v2, Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 267
    const-string/jumbo v1, "album_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    const-string/jumbo v1, "album_hide_function_button"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    const-string/jumbo v1, "allow_check_origin_origin_picture"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 271
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 272
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->d:Liny;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;)V

    .line 274
    .end local v0    # "intent":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 255
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->b:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->a:Landroid/app/Activity;

    sget v3, Lhdn$k;->dt_lightapp_upload_menu_take_video:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    iget v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->c:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v2, v4, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;II)V

    .line 257
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->d:Liny;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;)V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
