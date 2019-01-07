.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;
.super Ljava/lang/Object;
.source "CreateLiveActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 283
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    if-nez v4, :cond_3

    const-string/jumbo v3, ""

    .line 284
    .local v3, "title":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v4

    if-gtz v4, :cond_1

    .line 285
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_4

    const-string/jumbo v3, ""

    .line 287
    :cond_1
    :goto_1
    new-instance v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;-><init>()V

    .line 288
    .local v2, "liveInfoObject":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->title:Ljava/lang/String;

    .line 289
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->anchorId:J

    .line 290
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    iput v4, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->isLandscape:I

    .line 291
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)I

    move-result v4

    iput v4, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->codeLevel:I

    .line 292
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->d(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->d(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_3
    iput-boolean v4, v2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->enableLinkMic:Z

    .line 293
    const-string/jumbo v4, "intent_key_live_info_object"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 294
    const-string/jumbo v4, "intent_extra_save_replay"

    iget-object v7, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v7}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isSelected()Z

    move-result v7

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->f(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Ljjx;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->f(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Ljjx;

    move-result-object v4

    invoke-virtual {v4}, Ljjx;->f()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    move v0, v5

    .line 297
    .local v0, "cameraId":I
    :goto_4
    const-string/jumbo v4, "intent_extra_camera_id"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    const-string/jumbo v4, "intent_extra_is_enable_hw_code"

    iget-object v7, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v7}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->g(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Z

    move-result v7

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 300
    const-string/jumbo v4, "intent_extra_is_enable_hd_beauty"

    iget-object v7, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v7}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->h(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Z

    move-result v7

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->f(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Ljjx;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->f(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Ljjx;

    move-result-object v4

    invoke-virtual {v4}, Ljjx;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    move v1, v5

    .line 302
    .local v1, "isFaceBeautyOpen":Z
    :goto_5
    const-string/jumbo v4, "intent_extra_is_face_beauty_open"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    return-object p1

    .line 283
    .end local v0    # "cameraId":I
    .end local v1    # "isFaceBeautyOpen":Z
    .end local v2    # "liveInfoObject":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    .end local v3    # "title":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 285
    .restart local v3    # "title":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .restart local v2    # "liveInfoObject":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    :cond_5
    move v4, v6

    .line 290
    goto/16 :goto_2

    :cond_6
    move v4, v6

    .line 292
    goto/16 :goto_3

    :cond_7
    move v0, v6

    .line 295
    goto :goto_4

    .restart local v0    # "cameraId":I
    :cond_8
    move v1, v6

    .line 301
    goto :goto_5
.end method
