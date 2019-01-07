.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$2;
.super Ljava/lang/Object;
.source "YSDetectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$2;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

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
    .line 240
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$2;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    iget-object v1, v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$2;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    iget-object v1, v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$2;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    iget-object v1, v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$2;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    iget-object v1, v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 244
    .local v0, "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "prompt"

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$2;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    iget-object v2, v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$2;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    iget-object v1, v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EXIT_GUIDE_PAGE_PROMPT_COPY_POINT:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 248
    .end local v0    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$2;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    iget-object v1, v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->d:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$2;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    iget-object v1, v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->d:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$2$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$2$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$2;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    :cond_1
    return-void
.end method
