.class final Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "action":Ljava/lang/String;
    sget-object v6, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "receive :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    sget-object v6, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    const-string/jumbo v6, "send_origin_picture"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 131
    .local v2, "isSendOrigin":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "choose_picture_ids"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 134
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "IMAGE"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 135
    .local v1, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    const-wide/16 v6, 0x0

    invoke-interface {v1, v6, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->clearMemoryCache(J)V

    .line 137
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;

    invoke-static {v6, v3, v2}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;->a(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;Ljava/util/List;Z)V

    goto :goto_0

    .line 139
    .end local v1    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v2    # "isSendOrigin":Z
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v6, "finish_editor"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 140
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;->a(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;Z)Z

    goto :goto_0

    .line 141
    :cond_3
    sget-object v6, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;->d:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 142
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;->dismissLoadingDialog()V

    .line 143
    const-string/jumbo v6, "url"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "url":Ljava/lang/String;
    const-string/jumbo v6, "operation"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "opt":Ljava/lang/String;
    sget-object v6, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "data :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string/jumbo v6, "continue"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 148
    const-string/jumbo v6, "NAVIGATOR"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/oa_common_webview.html"

    new-instance v8, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1$1;

    invoke-direct {v8, p0, v5, v4}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1$1;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7, v8}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 159
    :cond_4
    const-string/jumbo v6, "commit"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 160
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;->finish()V

    goto/16 :goto_0

    .line 161
    :cond_5
    const-string/jumbo v6, "failedtosendimage"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 162
    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;->dismissLoadingDialog()V

    goto/16 :goto_0
.end method
