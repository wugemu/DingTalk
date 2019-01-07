.class final Lcom/alibaba/android/ding/widget/DingAttachmentView$3;
.super Ljava/lang/Object;
.source "DingAttachmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingAttachmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/DingAttachmentView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 242
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 295
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 245
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 248
    sget-object v6, Lcom/alibaba/android/ding/widget/DingAttachmentView$7;->a:[I

    iget-object v7, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v7}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v7

    .line 1314
    iget-object v7, v7, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .line 248
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v6

    .line 1326
    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 253
    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v6

    .line 2326
    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 253
    iget v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    sget-object v7, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 254
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v5, "tmpPhotos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/browser/PhotoObject;>;"
    new-instance v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 256
    .local v2, "object":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v6

    .line 3152
    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a:Ljava/lang/String;

    .line 256
    iput-object v6, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 257
    const-string/jumbo v6, ""

    iput-object v6, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->name:Ljava/lang/String;

    .line 258
    iput-wide v10, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->data:J

    .line 259
    iput-boolean v8, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->selfSend:Z

    .line 260
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v6

    .line 3326
    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 260
    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    .line 261
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v3, v6, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 263
    .local v3, "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const/4 v1, 0x0

    .line 264
    .local v1, "last":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 265
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 266
    .local v4, "photoVO":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    aput-object v4, v3, v0

    .line 267
    move-object v1, v4

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    .end local v4    # "photoVO":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_0

    .line 270
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    const/4 v7, 0x0

    invoke-static {v6, v3, v1, v8, v7}, Lbjv;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 275
    .end local v0    # "i":I
    .end local v1    # "last":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v2    # "object":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v3    # "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v5    # "tmpPhotos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/browser/PhotoObject;>;"
    :pswitch_2
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    new-instance v7, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v8, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .line 276
    invoke-static {v9}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v9

    .line 4152
    iget-object v9, v9, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a:Ljava/lang/String;

    .line 276
    iget-object v10, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v10}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v10

    .line 4156
    iget-object v10, v10, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 276
    iget-object v11, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v11}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v11

    .line 4164
    iget-boolean v11, v11, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->c:Z

    .line 276
    invoke-direct {v7, v8, v9, v10, v11}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;Z)V

    .line 275
    invoke-static {v6, v7}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Lcom/alibaba/android/ding/widget/DingAttachmentView;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    goto/16 :goto_0

    .line 279
    :pswitch_3
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v6

    .line 4326
    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 279
    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .line 280
    invoke-static {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v6

    .line 5326
    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 280
    iget v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    sget-object v7, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FORWARD_COMBINE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .line 281
    invoke-static {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v6

    .line 6326
    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 281
    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->cid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .line 282
    invoke-static {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v6

    .line 7326
    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 282
    iget-wide v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->messageSelectCacheTimeStamp:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_0

    .line 283
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v8}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v8

    .line 8326
    iget-object v8, v8, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 283
    iget-wide v8, v8, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->messageSelectCacheTimeStamp:J

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(J)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Lcom/alibaba/android/ding/widget/DingAttachmentView;Ljava/util/List;)Ljava/util/List;

    .line 284
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->g(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->g(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_0

    .line 285
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v7

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    iget-object v8, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .line 286
    invoke-static {v8}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v8

    .line 9326
    iget-object v8, v8, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 286
    iget-object v8, v8, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->cid:Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .line 287
    invoke-static {v9}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->g(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$3;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .line 288
    invoke-static {v10}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->f(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v10

    .line 10326
    iget-object v10, v10, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 288
    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->getExtensionTitle()Ljava/lang/String;

    move-result-object v10

    .line 285
    invoke-virtual {v7, v6, v8, v9, v10}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
