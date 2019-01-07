.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;
.super Ljava/lang/Object;
.source "AlipayDetectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

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
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 310
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v2, v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->showFaceStatus()Z

    move-result v1

    .line 313
    .local v1, "isShowTip":Z
    if-eqz v1, :cond_2

    .line 314
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v2, v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v2, v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTipContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v2, v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v2, v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v0, "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "prompt"

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v3, v3, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v3}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v2, v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v3, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EXIT_GUIDE_PAGE_PROMPT_COPY_POINT:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 326
    .end local v0    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "isShowTip":Z
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v2, v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->d:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 327
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v2, v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->d:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    :cond_1
    return-void

    .line 317
    .restart local v1    # "isShowTip":Z
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v2, v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v2, v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTipContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
