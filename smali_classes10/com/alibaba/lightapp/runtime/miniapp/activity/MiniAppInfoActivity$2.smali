.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$2;
.super Ljava/lang/Object;
.source "MiniAppInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;Ljava/lang/String;)V

    .line 112
    return-void
.end method
