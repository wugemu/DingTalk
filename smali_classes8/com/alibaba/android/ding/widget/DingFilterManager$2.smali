.class public final Lcom/alibaba/android/ding/widget/DingFilterManager$2;
.super Ljava/lang/Object;
.source "DingFilterManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingFilterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/DingTabItemView;

.field final synthetic b:Lcom/alibaba/android/ding/widget/DingFilterManager$a;

.field final synthetic c:Lcom/alibaba/android/ding/widget/DingFilterManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/widget/DingFilterManager;Lcom/alibaba/android/ding/widget/DingTabItemView;Lcom/alibaba/android/ding/widget/DingFilterManager$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingFilterManager;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->c:Lcom/alibaba/android/ding/widget/DingFilterManager;

    iput-object p2, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->a:Lcom/alibaba/android/ding/widget/DingTabItemView;

    iput-object p3, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->b:Lcom/alibaba/android/ding/widget/DingFilterManager$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x42a00000    # 80.0f

    const/4 v7, 0x0

    .line 82
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->a:Lcom/alibaba/android/ding/widget/DingTabItemView;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/DingTabItemView;->getPosition()I

    move-result v1

    .line 83
    .local v1, "newPosition":I
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->c:Lcom/alibaba/android/ding/widget/DingFilterManager;

    .line 1033
    iget v3, v3, Lcom/alibaba/android/ding/widget/DingFilterManager;->c:I

    .line 83
    if-eq v1, v3, :cond_2

    .line 84
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->c:Lcom/alibaba/android/ding/widget/DingFilterManager;

    .line 2033
    iget-object v3, v3, Lcom/alibaba/android/ding/widget/DingFilterManager;->b:Landroid/widget/LinearLayout;

    .line 84
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->c:Lcom/alibaba/android/ding/widget/DingFilterManager;

    .line 3033
    iget v4, v4, Lcom/alibaba/android/ding/widget/DingFilterManager;->c:I

    .line 84
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/android/ding/widget/DingTabItemView;

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->c:Lcom/alibaba/android/ding/widget/DingFilterManager;

    .line 4033
    iget-object v3, v3, Lcom/alibaba/android/ding/widget/DingFilterManager;->b:Landroid/widget/LinearLayout;

    .line 85
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->c:Lcom/alibaba/android/ding/widget/DingFilterManager;

    .line 5033
    iget v4, v4, Lcom/alibaba/android/ding/widget/DingFilterManager;->c:I

    .line 85
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/widget/DingTabItemView;

    .line 86
    .local v2, "oldDingTabItemView":Lcom/alibaba/android/ding/widget/DingTabItemView;
    invoke-virtual {v2, v7}, Lcom/alibaba/android/ding/widget/DingTabItemView;->a(Z)V

    .line 88
    .end local v2    # "oldDingTabItemView":Lcom/alibaba/android/ding/widget/DingTabItemView;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->c:Lcom/alibaba/android/ding/widget/DingFilterManager;

    .line 6033
    iget-object v3, v3, Lcom/alibaba/android/ding/widget/DingFilterManager;->b:Landroid/widget/LinearLayout;

    .line 88
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/android/ding/widget/DingTabItemView;

    if-eqz v3, :cond_1

    .line 89
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->c:Lcom/alibaba/android/ding/widget/DingFilterManager;

    .line 7033
    iget-object v3, v3, Lcom/alibaba/android/ding/widget/DingFilterManager;->b:Landroid/widget/LinearLayout;

    .line 89
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingTabItemView;

    .line 90
    .local v0, "newDingTabItemView":Lcom/alibaba/android/ding/widget/DingTabItemView;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingTabItemView;->a(Z)V

    .line 92
    .end local v0    # "newDingTabItemView":Lcom/alibaba/android/ding/widget/DingTabItemView;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->c:Lcom/alibaba/android/ding/widget/DingFilterManager;

    .line 8033
    iput v1, v3, Lcom/alibaba/android/ding/widget/DingFilterManager;->c:I

    .line 93
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->c:Lcom/alibaba/android/ding/widget/DingFilterManager;

    .line 9033
    iget-object v3, v3, Lcom/alibaba/android/ding/widget/DingFilterManager;->f:Lcom/alibaba/android/ding/widget/DingFilterManager$b;

    .line 93
    if-eqz v3, :cond_2

    .line 94
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->c:Lcom/alibaba/android/ding/widget/DingFilterManager;

    .line 10033
    iget-object v3, v3, Lcom/alibaba/android/ding/widget/DingFilterManager;->f:Lcom/alibaba/android/ding/widget/DingFilterManager$b;

    .line 94
    invoke-interface {v3}, Lcom/alibaba/android/ding/widget/DingFilterManager$b;->a()V

    .line 97
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->c:Lcom/alibaba/android/ding/widget/DingFilterManager;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->b:Lcom/alibaba/android/ding/widget/DingFilterManager$a;

    .line 10319
    iget-object v3, v3, Lcom/alibaba/android/ding/widget/DingFilterManager$a;->a:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 11281
    if-eqz v3, :cond_3

    .line 11284
    sget-object v4, Lcom/alibaba/android/ding/widget/DingFilterManager$4;->a:[I

    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 98
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$2;->c:Lcom/alibaba/android/ding/widget/DingFilterManager;

    .line 13267
    iget-object v3, v4, Lcom/alibaba/android/ding/widget/DingFilterManager;->b:Landroid/widget/LinearLayout;

    iget v5, v4, Lcom/alibaba/android/ding/widget/DingFilterManager;->c:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ding/widget/DingTabItemView;

    .line 13268
    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/DingTabItemView;->getLeft()I

    move-result v5

    iget-object v6, v4, Lcom/alibaba/android/ding/widget/DingFilterManager;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v9, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    sub-int/2addr v5, v6

    .line 13269
    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/DingTabItemView;->getRight()I

    move-result v3

    iget-object v6, v4, Lcom/alibaba/android/ding/widget/DingFilterManager;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-static {v9, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v3, v6

    .line 13270
    if-gez v5, :cond_5

    .line 13271
    iget-object v3, v4, Lcom/alibaba/android/ding/widget/DingFilterManager;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v5, v7}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 13272
    :cond_4
    :goto_1
    return-void

    .line 12206
    :pswitch_0
    const-string/jumbo v3, "ding_tab_calendar"

    invoke-static {v3}, Lbjz;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 12210
    :pswitch_1
    const-string/jumbo v3, "ding_tab_ding"

    invoke-static {v3}, Lbjz;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 12214
    :pswitch_2
    const-string/jumbo v3, "ding_tab_deadline"

    invoke-static {v3}, Lbjz;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 12218
    :pswitch_3
    const-string/jumbo v3, "ding_tab_meeting"

    invoke-static {v3}, Lbjz;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 12222
    :pswitch_4
    const-string/jumbo v3, "ding_tab_focus"

    invoke-static {v3}, Lbjz;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 12226
    :pswitch_5
    const-string/jumbo v3, "ding_tab_deleted"

    invoke-static {v3}, Lbjz;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 13274
    :cond_5
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcms;->a(Landroid/content/Context;)I

    move-result v5

    .line 13275
    if-le v3, v5, :cond_4

    .line 13276
    iget-object v4, v4, Lcom/alibaba/android/ding/widget/DingFilterManager;->a:Landroid/widget/HorizontalScrollView;

    sub-int/2addr v3, v5

    invoke-virtual {v4, v3, v7}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1

    .line 11284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
