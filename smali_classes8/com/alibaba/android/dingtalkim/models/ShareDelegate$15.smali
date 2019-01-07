.class final Lcom/alibaba/android/dingtalkim/models/ShareDelegate$15;
.super Ljava/lang/Object;
.source "ShareDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$15;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$15;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 324
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$15;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 326
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$15;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 328
    .local v1, "width":I
    mul-int/lit8 v2, v1, 0x9

    div-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 330
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$15;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    return-void
.end method
