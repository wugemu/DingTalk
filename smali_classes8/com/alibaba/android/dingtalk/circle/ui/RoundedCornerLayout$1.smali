.class final Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout$1;
.super Ljava/lang/Object;
.source "RoundedCornerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout$1;->b:Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 49
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout$1;->a:Landroid/content/Context;

    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 50
    .local v0, "maxHeight":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout$1;->b:Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->getHeight()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 51
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout$1;->b:Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 53
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 54
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout$1;->b:Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalk/circle/ui/RoundedCornerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method
