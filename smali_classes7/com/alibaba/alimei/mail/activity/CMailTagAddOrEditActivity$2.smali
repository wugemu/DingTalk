.class final Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;
.super Ljava/lang/Object;
.source "CMailTagAddOrEditActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 179
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-static {v9, p0}, Lcoq;->b(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 180
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    move-result-object v9

    iget v9, v9, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->a:I

    if-gtz v9, :cond_0

    .line 181
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    move-result-object v9

    if-nez v9, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-virtual {v9}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v6, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 185
    .local v6, "screenWidth":I
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)Landroid/widget/GridView;

    move-result-object v9

    invoke-static {v9}, Lss;->a(Landroid/widget/GridView;)I

    move-result v2

    .line 186
    .local v2, "columns":I
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)Landroid/widget/GridView;

    move-result-object v9

    invoke-static {v9}, Lss;->b(Landroid/widget/GridView;)I

    move-result v8

    .line 187
    .local v8, "spaceing":I
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    .line 188
    invoke-static {v9}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)Landroid/widget/GridView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v9

    sub-int v9, v6, v9

    iget-object v10, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    .line 189
    invoke-static {v10}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)Landroid/widget/GridView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v10, v2, -0x1

    mul-int/2addr v10, v8

    sub-int/2addr v9, v10

    div-int v1, v9, v2

    .line 191
    .local v1, "columnW":I
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->a(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;I)V

    .line 193
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 194
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->a:[Ljava/lang/String;

    array-length v4, v9

    .line 195
    .local v4, "len":I
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 196
    .local v5, "random":Ljava/util/Random;
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)Landroid/widget/GridView;

    move-result-object v9

    invoke-static {v9}, Lss;->a(Landroid/widget/GridView;)I

    move-result v0

    .line 197
    .local v0, "column":I
    if-ltz v0, :cond_2

    if-lt v0, v4, :cond_3

    .line 198
    :cond_2
    move v0, v4

    .line 200
    :cond_3
    invoke-virtual {v5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 201
    .local v3, "index":I
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->a:[Ljava/lang/String;

    aget-object v7, v9, v3

    .line 202
    .local v7, "selectColor":Ljava/lang/String;
    iget-object v9, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;)Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
