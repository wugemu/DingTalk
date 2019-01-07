.class final Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$2;
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
.field final synthetic a:Leux;

.field final synthetic b:Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;Leux;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$2;->b:Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$2;->a:Leux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$2;->b:Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->a(Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;)Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$2;->b:Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->a(Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;)Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$2;->a:Leux;

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;->a(Leux;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$2;->b:Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;

    .line 1102
    iget-object v0, v0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->dismiss()V

    .line 84
    return-void
.end method
