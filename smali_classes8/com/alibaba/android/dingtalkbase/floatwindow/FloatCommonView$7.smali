.class final Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$7;
.super Ljava/lang/Object;
.source "FloatCommonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$7;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$7;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$7;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    .line 1195
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 378
    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$7;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    .line 2195
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 379
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$7;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    .line 2211
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->d:Z

    .line 381
    if-eqz v0, :cond_1

    .line 382
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v0

    invoke-virtual {v0}, Lcjq;->c()V

    .line 384
    :cond_1
    return-void
.end method
