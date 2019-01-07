.class final Ldfe$1;
.super Ljava/lang/Object;
.source "ShoppingChatPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldfe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldfe;


# direct methods
.method constructor <init>(Ldfe;)V
    .locals 0
    .param p1, "this$0"    # Ldfe;

    .prologue
    .line 260
    iput-object p1, p0, Ldfe$1;->a:Ldfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 263
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 264
    .local v12, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "isretail"

    const-string/jumbo v1, "true"

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "chat_photo_button_click"

    invoke-interface {v0, v1, v12}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 266
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Ldfe$1;->a:Ldfe;

    iget-object v1, v1, Ldfe;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    sget-object v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a:Ljava/lang/String;

    const/16 v6, 0x8

    new-instance v11, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl;

    invoke-direct {v11}, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl;-><init>()V

    move v3, v2

    move v4, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-virtual/range {v0 .. v11}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;ZZZLjava/lang/String;IZZZZLcom/alibaba/laiwang/photokit/picker/VideoCompressWorker;)V

    .line 269
    return-void
.end method
