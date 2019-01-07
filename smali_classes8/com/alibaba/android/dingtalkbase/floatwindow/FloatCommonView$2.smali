.class final Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$2;
.super Ljava/lang/Object;
.source "FloatCommonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$2;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v0

    invoke-virtual {v0}, Lcjq;->c()V

    .line 169
    return-void
.end method
