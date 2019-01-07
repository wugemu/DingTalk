.class final Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;
.super Lgl;
.source "DDUpgradeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-direct {p0}, Lgl;-><init>()V

    .line 296
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->b:Ljava/util/List;

    .line 297
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->c:I

    .line 298
    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 353
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    .line 354
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 356
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->b(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->b(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->c:I

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 12
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->b(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->b(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 322
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;

    .line 328
    .local v8, "holder":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;
    :goto_0
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 330
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 348
    :cond_0
    :goto_1
    return-object v9

    .line 324
    .end local v8    # "holder":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;
    .end local v9    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->getDialogActivity()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcig$h;->upgrade_dlg_pager:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 325
    .restart local v9    # "view":Landroid/view/View;
    new-instance v8, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->c(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    invoke-direct {v8, v9, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;-><init>(Landroid/view/View;Lcom/alibaba/doraemon/image/ImageMagician;)V

    .line 326
    .restart local v8    # "holder":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;
    invoke-virtual {v9, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p2, v0

    .line 338
    :cond_3
    if-gez p2, :cond_4

    .line 339
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p2, v0

    .line 342
    :cond_4
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    .line 1380
    const-string/jumbo v0, "image"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1381
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1382
    const-string/jumbo v0, "resource"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1383
    if-lez v0, :cond_5

    .line 1384
    iget-object v1, v8, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1394
    :goto_2
    const-string/jumbo v0, "title"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1395
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1396
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1401
    :goto_3
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->c:Landroid/widget/TextView;

    const-string/jumbo v1, "content"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1386
    :cond_5
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->a:Landroid/widget/ImageView;

    sget v1, Lcig$e;->chatting_default_image:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1389
    :cond_6
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, v8, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1390
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->a:Landroid/widget/ImageView;

    sget v1, Lcig$e;->chatting_default_image:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1391
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, v8, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->a:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v11

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto :goto_2

    .line 1398
    :cond_7
    iget-object v1, v8, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1399
    iget-object v1, v8, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 311
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
