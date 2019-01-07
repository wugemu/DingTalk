.class final Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$4;
.super Ljava/lang/Object;
.source "JSPluginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$4;->c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$4;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$4;->c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$4;->c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$4;->b:Z

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->c(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;Z)V

    .line 233
    return-void
.end method
