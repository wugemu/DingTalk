.class final Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$3;
.super Ljava/lang/Object;
.source "QuickMessageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->a(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$3;->b:Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$3;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$3;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$3;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 96
    :cond_0
    return-void
.end method
