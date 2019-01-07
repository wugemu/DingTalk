.class final Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$5;
.super Ljava/lang/Object;
.source "FloatCommonView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;)V
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
        "Landroid/text/SpannableString;",
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
    .line 260
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$5;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 260
    check-cast p1, Landroid/text/SpannableString;

    .line 1263
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$5;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$5;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;)Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V

    .line 260
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$5;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$5;->a:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;)Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V

    .line 273
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 268
    return-void
.end method
