.class final Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$3;
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
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$3;->c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$3;->a:Z

    iput-boolean p3, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$3;->b:Z

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
    .line 219
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$3;->c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$3;->a:Z

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;Z)V

    .line 220
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$3;->c:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$3;->b:Z

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->b(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;Z)V

    .line 221
    return-void
.end method
