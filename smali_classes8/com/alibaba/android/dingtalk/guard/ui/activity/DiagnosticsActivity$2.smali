.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$2;
.super Ljava/lang/Object;
.source "DiagnosticsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->b(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method
