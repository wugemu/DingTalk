.class final Lcom/alibaba/android/ding/widget/QuickDingDialog$3;
.super Ljava/lang/Object;
.source "QuickDingDialog.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/QuickDingDialog;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/QuickDingDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/QuickDingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/QuickDingDialog;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$3;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

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
    .line 250
    .line 1253
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/widget/QuickDingDialog$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/QuickDingDialog$3$1;-><init>(Lcom/alibaba/android/ding/widget/QuickDingDialog$3;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1259
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Ljava/lang/String;)V

    .line 1260
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$3;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->dismiss()V

    .line 250
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 265
    return-void
.end method
