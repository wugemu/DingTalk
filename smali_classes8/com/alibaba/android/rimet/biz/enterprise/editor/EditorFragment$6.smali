.class final Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;Ljava/util/List;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->d:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->a:Ljava/util/List;

    iput p3, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->b:I

    iput-boolean p4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 627
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 628
    .local v2, "l":I
    new-array v0, v2, [Landroid/graphics/Bitmap;

    .line 629
    .local v0, "bitmaps":[Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 630
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->a:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 631
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 634
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->d:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->b:I

    invoke-static {v5, v6, v7}, Lcox;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 635
    .local v3, "thumbnailBitmap":Landroid/graphics/Bitmap;
    aput-object v3, v0, v1

    .line 629
    .end local v3    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;

    invoke-direct {v6, p0, v0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;[Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 665
    return-void
.end method
