.class final Lcom/alibaba/android/ding/widget/DingCardViewImpl$3;
.super Ljava/lang/Object;
.source "DingCardViewImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingCardViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/DingCardViewImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingCardViewImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingCardViewImpl;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl$3;->a:Lcom/alibaba/android/ding/widget/DingCardViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl$3;->a:Lcom/alibaba/android/ding/widget/DingCardViewImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->c(Lcom/alibaba/android/ding/widget/DingCardViewImpl;)Lcom/alibaba/android/ding/base/objects/DingCardView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl$3;->a:Lcom/alibaba/android/ding/widget/DingCardViewImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->c(Lcom/alibaba/android/ding/widget/DingCardViewImpl;)Lcom/alibaba/android/ding/base/objects/DingCardView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ding/base/objects/DingCardView$a;->a()V

    .line 443
    :cond_0
    return-void
.end method
