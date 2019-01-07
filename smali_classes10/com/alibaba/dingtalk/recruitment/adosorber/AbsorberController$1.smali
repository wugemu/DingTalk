.class final Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$1;
.super Ljava/lang/Object;
.source "AbsorberController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;-><init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$1;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 58
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$1;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;

    .line 1166
    iget-object v0, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;->getVFloat()Landroid/view/View;

    move-result-object v3

    .line 1175
    if-eqz v3, :cond_0

    .line 1179
    new-array v4, v6, [I

    .line 1180
    iget-object v0, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1182
    new-array v0, v6, [I

    .line 1183
    iget-object v5, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1185
    new-array v5, v6, [I

    .line 1186
    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1188
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1189
    iget-object v6, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v6

    .line 1191
    if-nez v6, :cond_1

    .line 1192
    iget-object v0, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;->setVisibility(I)V

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    iget-object v6, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    invoke-virtual {v6, v8}, Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;->setVisibility(I)V

    .line 1197
    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-nez v6, :cond_2

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v7, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    .line 1198
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-nez v6, :cond_2

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v7, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    .line 1200
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    if-eq v6, v7, :cond_9

    .line 1206
    :cond_2
    iget-object v0, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->d:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    sget-object v6, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_BOTH:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    if-eq v0, v6, :cond_3

    iget-object v0, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->d:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    sget-object v6, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_Y:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    if-ne v0, v6, :cond_5

    .line 1208
    :cond_3
    iget v0, v5, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_e

    .line 1209
    iget v0, v5, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 1210
    iget-object v6, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    aget v7, v4, v9

    iget-object v8, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->c:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 1214
    :goto_1
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    if-lez v6, :cond_4

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v7, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_4

    .line 1215
    iget-object v0, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    .line 1216
    iget-object v6, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    aget v4, v4, v9

    iget-object v7, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->c:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v4, v7

    iget-object v7, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->c:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    invoke-static {v6, v4}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 1219
    :cond_4
    invoke-static {v3, v0}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 1222
    :cond_5
    iget-object v0, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->d:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    sget-object v4, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_BOTH:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    if-eq v0, v4, :cond_6

    iget-object v0, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->d:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    sget-object v4, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_X:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    if-ne v0, v4, :cond_0

    .line 1224
    :cond_6
    iget v0, v5, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_7

    .line 1225
    iget v0, v5, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 1226
    iget-object v4, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    invoke-static {v4, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    move v1, v0

    .line 1230
    :cond_7
    iget v0, v5, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_8

    iget v0, v5, Landroid/graphics/Rect;->right:I

    iget-object v4, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-eq v0, v4, :cond_8

    .line 1231
    iget-object v0, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    .line 1232
    iget-object v0, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1233
    iget-object v4, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    iget-object v5, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget-object v2, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {v4, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 1237
    :cond_8
    invoke-static {v3, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 1239
    :cond_9
    aget v4, v0, v8

    if-nez v4, :cond_a

    aget v4, v0, v9

    if-eqz v4, :cond_0

    .line 1242
    :cond_a
    iget-object v4, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->d:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    sget-object v5, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_BOTH:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    if-eq v4, v5, :cond_b

    iget-object v4, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->d:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    sget-object v5, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_X:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    if-ne v4, v5, :cond_c

    .line 1243
    :cond_b
    invoke-static {v3, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 1244
    iget-object v4, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    aget v5, v0, v8

    int-to-float v5, v5

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 1247
    :cond_c
    iget-object v4, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->d:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    sget-object v5, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_BOTH:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    if-eq v4, v5, :cond_d

    iget-object v4, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->d:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    sget-object v5, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_Y:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    if-ne v4, v5, :cond_0

    .line 1248
    :cond_d
    invoke-static {v3, v1}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 1249
    iget-object v1, v2, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;->a:Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;

    aget v0, v0, v9

    int-to-float v0, v0

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto/16 :goto_1
.end method
