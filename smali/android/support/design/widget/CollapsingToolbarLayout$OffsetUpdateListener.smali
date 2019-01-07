.class Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    .prologue
    .line 1267
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1268
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 10
    .param p1, "layout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .prologue
    const/4 v7, 0x0

    .line 1272
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iput p2, v8, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    .line 1274
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v8, v8, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Lgv;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v8, v8, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Lgv;

    invoke-virtual {v8}, Lgv;->b()I

    move-result v3

    .line 1276
    .local v3, "insetTop":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v6

    .local v6, "z":I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 1277
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1278
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1279
    .local v4, "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v5

    .line 1281
    .local v5, "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    iget v8, v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    packed-switch v8, :pswitch_data_0

    .line 1276
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "insetTop":I
    .end local v4    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .end local v5    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    .end local v6    # "z":I
    :cond_0
    move v3, v7

    .line 1274
    goto :goto_0

    .line 1283
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "insetTop":I
    .restart local v4    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .restart local v5    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    .restart local v6    # "z":I
    :pswitch_0
    neg-int v8, p2

    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 1284
    invoke-virtual {v9, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v9

    .line 1283
    invoke-static {v8, v7, v9}, Lek;->a(III)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 1287
    :pswitch_1
    neg-int v8, p2

    int-to-float v8, v8

    iget v9, v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float/2addr v8, v9

    .line 1288
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1287
    invoke-virtual {v5, v8}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 1294
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .end local v5    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    :cond_1
    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v7}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1296
    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v7, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    if-lez v3, :cond_2

    .line 1297
    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 1301
    :cond_2
    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v7}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->k(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v1, v7, v3

    .line 1303
    .local v1, "expandRange":I
    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v7, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 1304
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v1

    div-float/2addr v8, v9

    .line 1303
    invoke-virtual {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1305
    return-void

    .line 1281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
