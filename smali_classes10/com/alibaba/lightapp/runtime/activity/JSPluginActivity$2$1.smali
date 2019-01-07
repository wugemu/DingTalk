.class final Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$2$1;
.super Ljava/lang/Object;
.source "JSPluginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$2;->goBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$2;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$2$1;->a:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$2$1;->a:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->finish()V

    .line 174
    return-void
.end method
