.class final Lcom/alibaba/android/ding/widget/DingCardViewImpl$2;
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
    .line 422
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl$2;->a:Lcom/alibaba/android/ding/widget/DingCardViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl$2;->a:Lcom/alibaba/android/ding/widget/DingCardViewImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->b(Lcom/alibaba/android/ding/widget/DingCardViewImpl;)V

    .line 426
    return-void
.end method
