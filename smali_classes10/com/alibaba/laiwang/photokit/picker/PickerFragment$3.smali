.class final Lcom/alibaba/laiwang/photokit/picker/PickerFragment$3;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$3;->d:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    iput-object p2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$3;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$3;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$3;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    .line 367
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$3;->a:Landroid/view/View;

    invoke-static {v1}, Lhbx;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 368
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$3;->d:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1118
    if-nez v8, :cond_1

    .line 369
    .local v9, "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    if-nez v9, :cond_2

    .line 370
    sget v1, Liff$f;->sdcard_unavailable:I

    invoke-static {v1}, Lhcn;->a(I)V

    .line 371
    const-string/jumbo v1, "Pick"

    const-string/jumbo v2, "sdcard unavailable"

    invoke-static {v1, v2}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_1
    return-void

    .line 1121
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {v1, v8}, Lhbx;->b(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    .line 1123
    if-eqz v1, :cond_0

    .line 1126
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    .line 374
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$3;->d:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 375
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$3;->d:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2, v9}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$3;->d:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v3, v9}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;-><init>(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 376
    .local v0, "imageItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->setSelected(ZJ)V

    .line 377
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$3;->d:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;->a(Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    .line 379
    .end local v0    # "imageItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$3;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$3;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 380
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method
