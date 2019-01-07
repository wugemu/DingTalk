.class final Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity$2;
.super Ljava/lang/Object;
.source "WebViewDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;->finish()V

    .line 54
    return-void
.end method
