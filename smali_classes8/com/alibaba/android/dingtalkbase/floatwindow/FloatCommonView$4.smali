.class final Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$4;
.super Ljava/lang/Object;
.source "FloatCommonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$4;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$4;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$4;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    .line 1151
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    .line 244
    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$4;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    .line 2151
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    .line 245
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 247
    :cond_0
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v0

    invoke-virtual {v0}, Lcjq;->c()V

    .line 248
    return-void
.end method
