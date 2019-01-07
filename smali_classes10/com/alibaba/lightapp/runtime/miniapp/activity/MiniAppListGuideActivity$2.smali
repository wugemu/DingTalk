.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity$2;
.super Ljava/lang/Object;
.source "MiniAppListGuideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 45
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;)V

    .line 49
    return-void
.end method
