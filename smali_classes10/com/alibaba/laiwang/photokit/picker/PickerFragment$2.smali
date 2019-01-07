.class final Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "PickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-virtual {v7}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->isDetached()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-virtual {v7}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->isAdded()Z

    move-result v7

    if-nez v7, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const-string/jumbo v7, "com.workapp.choose.pictire.from.preview"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 237
    const-string/jumbo v7, "choose_changed_picture_objects"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 238
    .local v2, "imageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 239
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 240
    .local v3, "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    if-eqz v3, :cond_2

    .line 245
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v8}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v8

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lhca;->b(Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    move-result-object v6

    .line 246
    .local v6, "syncItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    if-eqz v6, :cond_2

    .line 248
    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v8

    invoke-virtual {v6}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v9

    if-eq v8, v9, :cond_3

    const/4 v1, 0x1

    .line 250
    .local v1, "changed":Z
    :goto_2
    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v8

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getSelectedTime()J

    move-result-wide v10

    invoke-virtual {v6, v8, v10, v11}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->setSelected(ZJ)V

    .line 252
    if-eqz v1, :cond_2

    .line 253
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v8, v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    .line 255
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v8}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 256
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v8}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;->a(Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    goto :goto_1

    .line 248
    .end local v1    # "changed":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 261
    .end local v3    # "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    .end local v6    # "syncItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    :cond_4
    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v7}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhbl;

    move-result-object v7

    invoke-virtual {v7}, Lhbl;->notifyDataSetChanged()V

    .line 264
    :cond_5
    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    const-string/jumbo v8, "send_origin_picture"

    iget-object v9, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v9}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->f(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Z

    move-result v9

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Z)Z

    .line 265
    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v7}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->g(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Landroid/widget/CheckBox;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v8}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->f(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 266
    .end local v2    # "imageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    :cond_6
    const-string/jumbo v7, "action_edit_picture_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 267
    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-virtual {v7}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->isDetached()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-virtual {v7}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 270
    const-string/jumbo v7, "intent_key_original_path"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "orginalUrl":Ljava/lang/String;
    const-string/jumbo v7, "intent_key_repath_url"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "repathUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 277
    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v7}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v7

    invoke-virtual {v7, v4}, Lhca;->b(Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    move-result-object v0

    .line 278
    .local v0, "changeItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0, v5}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->setImage(Ljava/lang/String;)V

    .line 280
    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v7, v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    .line 282
    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v7}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 283
    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v7}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;->a(Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    .line 285
    :cond_7
    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v7}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhbl;

    move-result-object v7

    invoke-virtual {v7}, Lhbl;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
