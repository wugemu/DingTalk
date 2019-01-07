.class final Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog$3;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->dismiss()V

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->c(Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;->c(Lcom/alibaba/android/dingtalk/guard/ui/widget/CommonDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 131
    :cond_0
    return-void
.end method
