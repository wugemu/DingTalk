.class final Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$1;
.super Ljava/lang/Object;
.source "OnlineEditWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$1;->b:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$1;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    return-void
.end method
