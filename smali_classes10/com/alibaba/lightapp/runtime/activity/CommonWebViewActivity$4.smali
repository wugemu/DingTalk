.class final Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;
.super Ljava/lang/Object;
.source "CommonWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhin;

.field final synthetic b:Lhfo$b;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Lhin;Lhfo$b;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->f:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->a:Lhin;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->b:Lhfo$b;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->d:Ljava/lang/String;

    iput p6, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 370
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->f:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->d(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 371
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->a:Lhin;

    iget-object v0, v3, Lhin;->a:Ljava/lang/String;

    .line 372
    .local v0, "logo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 373
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->b:Lhfo$b;

    iget-object v4, v4, Lhfo$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/oabase/OAInterface;->q(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v1

    .line 375
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-nez v1, :cond_0

    .line 376
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->b:Lhfo$b;

    iget-object v4, v4, Lhfo$b;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->b:Lhfo$b;

    iget-object v5, v5, Lhfo$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v1

    .line 378
    :cond_0
    if-eqz v1, :cond_1

    .line 379
    iget-object v0, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->icon:Ljava/lang/String;

    .line 382
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_1
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "remoteUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 384
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->f:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 385
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->f:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    :cond_2
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->f:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->f(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->a:Lhin;

    iget-object v4, v4, Lhin;->e:Ljava/util/Map;

    invoke-static {v4}, Lhdo;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4$1;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4$1;-><init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v0    # "logo":Ljava/lang/String;
    .end local v2    # "remoteUrl":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method
