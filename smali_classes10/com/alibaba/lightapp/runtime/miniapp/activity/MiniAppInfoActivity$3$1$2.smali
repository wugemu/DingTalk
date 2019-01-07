.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1$2;
.super Ljava/lang/Object;
.source "MiniAppInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->n(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)V

    .line 169
    return-void
.end method
