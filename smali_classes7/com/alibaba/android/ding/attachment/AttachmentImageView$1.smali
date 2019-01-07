.class final Lcom/alibaba/android/ding/attachment/AttachmentImageView$1;
.super Ljava/lang/Object;
.source "AttachmentImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/attachment/AttachmentImageView;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/attachment/AttachmentImageView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/attachment/AttachmentImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/attachment/AttachmentImageView;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 98
    iget-object v9, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentImageView;

    iget-object v9, v9, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentImageView;

    iget v9, v9, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->l:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v9, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentImageView;

    iget-object v9, v9, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget v9, v9, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    invoke-static {v9}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    move-result-object v7

    .line 102
    .local v7, "type":Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    sget-object v9, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v9, v7}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 103
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v6, "tmpPhotos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/browser/PhotoObject;>;"
    iget-object v9, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentImageView;

    iget-object v10, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentImageView;

    iget-object v10, v10, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-static {v9, v10}, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->a(Lcom/alibaba/android/ding/attachment/AttachmentImageView;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v3

    .line 105
    .local v3, "obj":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz v3, :cond_2

    .line 106
    iput v0, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 107
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v4, v9, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 110
    .local v4, "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const/4 v2, 0x0

    .line 111
    .local v2, "last":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 112
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 113
    .local v5, "photoVO":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    aput-object v5, v4, v1

    .line 114
    move-object v2, v5

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    .end local v5    # "photoVO":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_3
    array-length v9, v4

    if-lez v9, :cond_4

    aget-object v9, v4, v8

    if-eqz v9, :cond_4

    aget-object v9, v4, v8

    invoke-virtual {v9}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->hasOrigin()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 117
    .local v0, "canDownloadOrigin":Z
    :goto_2
    iget-object v8, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentImageView;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    const/4 v9, 0x0

    invoke-static {v8, v4, v2, v0, v9}, Lbjv;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    .line 1230
    const-string/jumbo v8, "chat_image_view_big"

    invoke-static {v8}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "canDownloadOrigin":Z
    :cond_4
    move v0, v8

    .line 116
    goto :goto_2
.end method
