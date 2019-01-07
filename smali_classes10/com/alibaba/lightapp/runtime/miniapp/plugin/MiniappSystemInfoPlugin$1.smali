.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin$1;
.super Landroid/content/BroadcastReceiver;
.source "MiniappSystemInfoPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin;->a()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    return-void
.end method
