.class final Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$6;
.super Landroid/content/BroadcastReceiver;
.source "PreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 295
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const-string/jumbo v3, "action_edit_picture_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    const-string/jumbo v3, "intent_key_original_path"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "originalUrl":Ljava/lang/String;
    const-string/jumbo v3, "intent_key_repath_url"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "repathUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->c(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->c(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 306
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->c(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 307
    .local v2, "selectItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    invoke-virtual {v2, v1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->setImage(Ljava/lang/String;)V

    .line 309
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->c(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;I)V

    .line 310
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->h(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Lhbn;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 311
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->h(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Lhbn;

    move-result-object v3

    invoke-virtual {v3}, Lhbn;->notifyDataSetChanged()V

    goto :goto_0
.end method
