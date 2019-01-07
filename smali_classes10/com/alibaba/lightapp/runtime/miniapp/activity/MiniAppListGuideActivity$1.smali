.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity$1;
.super Ljava/lang/Object;
.source "MiniAppListGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;->finish()V

    .line 43
    return-void
.end method
