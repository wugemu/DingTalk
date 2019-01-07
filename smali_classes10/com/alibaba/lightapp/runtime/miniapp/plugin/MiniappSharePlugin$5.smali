.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$5;
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
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 356
    :cond_0
    return-void
.end method
