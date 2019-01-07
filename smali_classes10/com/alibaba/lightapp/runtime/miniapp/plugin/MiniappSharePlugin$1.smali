.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$1;
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$1;->e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$1;->c:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$1;->d:Ljava/lang/String;

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
    .line 229
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$1;->e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$1;->c:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;Ljava/lang/String;)V

    .line 230
    return-void
.end method
