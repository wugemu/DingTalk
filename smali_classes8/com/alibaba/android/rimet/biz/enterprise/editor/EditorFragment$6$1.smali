.class final Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;[Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->a:[Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v14, 0x21

    const/4 v8, 0x0

    .line 640
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    iget-object v4, v4, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->d:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    iget-object v4, v4, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->d:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 641
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    iget-object v4, v4, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 642
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_6

    .line 643
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    iget-object v4, v4, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 644
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 647
    invoke-static {}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "addAttachment from album->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isSendOrigin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    iget-boolean v5, v5, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->c:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 649
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    iget-object v4, v4, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->d:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->b(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;

    move-result-object v7

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->a:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1236
    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    if-nez v4, :cond_2

    .line 651
    :cond_0
    :goto_1
    invoke-static {v3}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 652
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    iget-object v4, v4, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->d:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    iget-object v6, v6, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->d:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    iget-boolean v7, v7, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->c:Z

    invoke-direct {v5, v6, v3, v7}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;Ljava/lang/String;Z)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1239
    :cond_2
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getMaximumThumbnailWidth()I

    move-result v6

    .line 1241
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 1242
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 1243
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "cid:_aliyun"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->b:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v7, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->b:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1244
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1246
    int-to-float v4, v6

    int-to-float v9, v9

    div-float/2addr v4, v9

    int-to-float v9, v10

    mul-float/2addr v4, v9

    float-to-int v4, v4

    .line 1247
    invoke-virtual {v12, v8, v8, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1248
    new-instance v9, Lcqj;

    invoke-direct {v9, v12, v5, v11}, Lcqj;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1249
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "cid:_aliyun"

    aput-object v5, v4, v8

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "_"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v7, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->b:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v7, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->b:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2054
    iput-object v4, v9, Lcqj;->b:Ljava/lang/String;

    .line 1260
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getSelectionStart()I

    move-result v4

    .line 1261
    iput v4, v7, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->a:I

    .line 1262
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getSelectionEnd()I

    move-result v5

    .line 1264
    if-le v4, v5, :cond_9

    move v6, v5

    move v5, v4

    .line 1270
    :goto_3
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    .line 1271
    if-eqz v10, :cond_0

    .line 1275
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1276
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 1277
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getSelectionStart()I

    move-result v11

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/NoteEditText;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    sub-int v4, v11, v4

    move v7, v4

    .line 1280
    :goto_4
    const-class v4, Lcqj;

    invoke-interface {v10, v6, v5, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcqj;

    .line 1281
    array-length v4, v4

    if-eqz v4, :cond_4

    .line 1283
    const-string/jumbo v4, "\n\n"

    invoke-interface {v10, v5, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1284
    add-int/lit8 v6, v6, 0x2

    .line 1285
    add-int/lit8 v5, v5, 0x2

    .line 1293
    :cond_3
    :goto_5
    const-string/jumbo v4, " "

    invoke-interface {v10, v6, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1294
    add-int/lit8 v4, v5, 0x1

    invoke-interface {v10, v9, v6, v4, v14}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1295
    new-instance v4, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v7}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    .line 1296
    add-int/lit8 v7, v5, 0x1

    invoke-interface {v10, v4, v6, v7, v14}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1297
    add-int/lit8 v4, v5, 0x1

    const-string/jumbo v5, "\n\n"

    invoke-interface {v10, v4, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1

    .line 1286
    :cond_4
    if-eqz v7, :cond_3

    .line 1288
    const-string/jumbo v4, "\n"

    invoke-interface {v10, v5, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1289
    add-int/lit8 v6, v6, 0x1

    .line 1290
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 654
    :cond_5
    new-instance v2, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    iget-object v4, v4, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->d:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-direct {v2, v4}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V

    .line 655
    .local v2, "object":Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;
    iput-object v3, v2, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->b:Ljava/lang/String;

    .line 656
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    iget-object v4, v4, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->d:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 659
    .end local v2    # "object":Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;
    .end local v3    # "url":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    iget-object v4, v4, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->d:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->e(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 660
    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    iget-object v4, v4, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->d:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->e(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6$1;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;

    iget-object v5, v5, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$6;->d:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-static {v5}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$c;->a(I)V

    .line 663
    .end local v0    # "i":I
    .end local v1    # "l":I
    :cond_7
    return-void

    .restart local v0    # "i":I
    .restart local v1    # "l":I
    .restart local v3    # "url":Ljava/lang/String;
    :cond_8
    move v7, v8

    goto/16 :goto_4

    :cond_9
    move v6, v4

    goto/16 :goto_3
.end method
