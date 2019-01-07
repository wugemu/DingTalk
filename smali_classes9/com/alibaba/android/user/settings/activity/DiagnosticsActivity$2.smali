.class final Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$2;
.super Ljava/lang/Object;
.source "DiagnosticsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$2;->a:Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$2;->a:Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->b(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    .line 87
    return-void
.end method
