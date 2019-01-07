.class final Leab$4;
.super Ljava/lang/Object;
.source "PushTaskListHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leab;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leab;


# direct methods
.method constructor <init>(Leab;)V
    .locals 0
    .param p1, "this$0"    # Leab;

    .prologue
    .line 259
    iput-object p1, p0, Leab$4;->a:Leab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 262
    iget-object v0, p0, Leab$4;->a:Leab;

    iget-object v1, p0, Leab$4;->a:Leab;

    .line 1058
    iget-object v1, v1, Leab;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2443
    new-instance v2, Landroid/support/v7/widget/ListPopupWindow;

    iget-object v3, v0, Leab;->c:Landroid/app/Activity;

    const/4 v4, 0x0

    sget v5, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    sget v6, Lctk$j;->DtTheme_Widget_ListPopupWindow:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2447
    new-array v3, v10, [Ljava/lang/CharSequence;

    .line 2448
    iget-object v4, v0, Leab;->c:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lctk$i;->dt_guide_quit_confirm2:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 2449
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, v0, Leab;->c:Landroid/app/Activity;

    sget v6, Lctk$g;->im_new_push_task_more_item:I

    const v7, 0x1020014

    new-array v8, v10, [Ljava/lang/String;

    aget-object v3, v3, v9

    .line 2451
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 2453
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2455
    iget-object v3, v0, Leab;->c:Landroid/app/Activity;

    const/high16 v5, 0x43200000    # 160.0f

    invoke-static {v3, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 2456
    invoke-virtual {v0, v4}, Leab;->a(Landroid/widget/ListAdapter;)I

    move-result v4

    .line 2457
    if-le v3, v4, :cond_0

    .line 2458
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ListPopupWindow;->setWidth(I)V

    .line 2463
    :goto_0
    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ListPopupWindow;->setHeight(I)V

    .line 2464
    invoke-virtual {v2, v10}, Landroid/support/v7/widget/ListPopupWindow;->setModal(Z)V

    .line 2465
    new-instance v3, Leab$5;

    invoke-direct {v3, v0, v2}, Leab$5;-><init>(Leab;Landroid/support/v7/widget/ListPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2471
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2472
    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 263
    return-void

    .line 2460
    :cond_0
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/ListPopupWindow;->setContentWidth(I)V

    goto :goto_0
.end method
