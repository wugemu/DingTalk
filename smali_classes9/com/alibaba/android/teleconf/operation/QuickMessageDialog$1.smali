.class final Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$1;
.super Ljava/lang/Object;
.source "QuickMessageDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$1;->a:Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$1;->a:Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->a(Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;)Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$1;->a:Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->a(Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;)Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;->a()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$1;->a:Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;

    .line 1102
    iget-object v0, v0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->dismiss()V

    .line 71
    return-void
.end method
