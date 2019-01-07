.class final Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$1;
.super Ljava/lang/Object;
.source "FloatCommonView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$1;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 144
    check-cast p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;

    .line 1147
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$1;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;)V

    .line 144
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$1;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;)V

    .line 157
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 152
    return-void
.end method
