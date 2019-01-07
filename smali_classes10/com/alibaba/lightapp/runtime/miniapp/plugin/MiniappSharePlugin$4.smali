.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$4;
.super Ljava/lang/Object;
.source "MiniappSharePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$4;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 336
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$4;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 345
    :goto_0
    return-void

    .line 340
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$4;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$4;->a:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$4;->a:Landroid/content/Context;

    sget v5, Lhdn$k;->dt_miniapp_share_sharing:I

    .line 341
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 340
    invoke-static {v2, v3, v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
