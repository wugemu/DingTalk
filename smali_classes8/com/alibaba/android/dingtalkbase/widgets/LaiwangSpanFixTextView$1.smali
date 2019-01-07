.class final Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$1;
.super Ljava/lang/Object;
.source "LaiwangSpanFixTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a(Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a(Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;Z)Z

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->b(Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->b(Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
