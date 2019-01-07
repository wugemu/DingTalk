.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$1;
.super Ljava/lang/Object;
.source "DiagnosticsActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method
