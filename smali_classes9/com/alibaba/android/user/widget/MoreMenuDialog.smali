.class public Lcom/alibaba/android/user/widget/MoreMenuDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;
.source "MoreMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;,
        Lcom/alibaba/android/user/widget/MoreMenuDialog$c;,
        Lcom/alibaba/android/user/widget/MoreMenuDialog$a;,
        Lcom/alibaba/android/user/widget/MoreMenuDialog$b;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/user/widget/MoreMenuDialog$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;-><init>(Landroid/app/Activity;)V

    .line 32
    new-instance v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/alibaba/android/user/widget/MoreMenuDialog$a;-><init>(Lcom/alibaba/android/user/widget/MoreMenuDialog;Landroid/app/Activity;B)V

    iput-object v0, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog;->a:Lcom/alibaba/android/user/widget/MoreMenuDialog$a;

    .line 33
    return-void
.end method


# virtual methods
.method protected final a()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog;->a:Lcom/alibaba/android/user/widget/MoreMenuDialog$a;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog;->a:Lcom/alibaba/android/user/widget/MoreMenuDialog$a;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog;->a:Lcom/alibaba/android/user/widget/MoreMenuDialog$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/widget/MoreMenuDialog$a;->d(Ljava/util/List;)V

    .line 39
    :cond_0
    return-void
.end method

.method public final b()Lcom/alibaba/android/user/widget/MoreMenuDialog$b;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/high16 v11, -0x80000000

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/MoreMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog;->a:Lcom/alibaba/android/user/widget/MoreMenuDialog$a;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog;->a:Lcom/alibaba/android/user/widget/MoreMenuDialog$a;

    invoke-virtual {v8}, Lcom/alibaba/android/user/widget/MoreMenuDialog$a;->f()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog;->a:Lcom/alibaba/android/user/widget/MoreMenuDialog$a;

    invoke-virtual {v8}, Lcom/alibaba/android/user/widget/MoreMenuDialog$a;->f()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 47
    :cond_0
    new-instance v8, Lcom/alibaba/android/user/widget/MoreMenuDialog$b;

    invoke-direct {v8, p0, v9, v9}, Lcom/alibaba/android/user/widget/MoreMenuDialog$b;-><init>(Lcom/alibaba/android/user/widget/MoreMenuDialog;II)V

    .line 80
    :goto_0
    return-object v8

    .line 50
    :cond_1
    iget-object v8, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog;->a:Lcom/alibaba/android/user/widget/MoreMenuDialog$a;

    invoke-virtual {v8}, Lcom/alibaba/android/user/widget/MoreMenuDialog$a;->f()Ljava/util/List;

    move-result-object v3

    .line 52
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/MoreMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 54
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const/4 v7, 0x0

    .line 55
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/MoreMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lezg$f;->more_menu_dialog_arrow_height:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 57
    .local v1, "height":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    .line 58
    .local v2, "item":Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;
    if-eqz v2, :cond_2

    .line 62
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/MoreMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 64
    .local v6, "textView":Landroid/widget/TextView;
    const/4 v9, 0x1

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 65
    invoke-virtual {v2}, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->getItemStringId()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 68
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 67
    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->measure(II)V

    .line 70
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 71
    .local v5, "tempWith":I
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .line 73
    .local v4, "tempHeight":I
    if-le v5, v7, :cond_3

    .line 74
    move v7, v5

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/MoreMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x41300000    # 11.0f

    invoke-static {v9, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v4

    add-int/2addr v1, v9

    .line 78
    goto :goto_1

    .line 80
    .end local v2    # "item":Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;
    .end local v4    # "tempHeight":I
    .end local v5    # "tempWith":I
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_4
    new-instance v8, Lcom/alibaba/android/user/widget/MoreMenuDialog$b;

    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/MoreMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x42860000    # 67.0f

    invoke-static {v9, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v9

    add-int/2addr v9, v7

    invoke-direct {v8, p0, v9, v1}, Lcom/alibaba/android/user/widget/MoreMenuDialog$b;-><init>(Lcom/alibaba/android/user/widget/MoreMenuDialog;II)V

    goto/16 :goto_0
.end method
