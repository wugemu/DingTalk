.class final Lemf$4$2$1;
.super Ljava/lang/Object;
.source "ShortCutUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lemf$4$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lemf$4$2;


# direct methods
.method constructor <init>(Lemf$4$2;)V
    .locals 0
    .param p1, "this$2"    # Lemf$4$2;

    .prologue
    .line 319
    iput-object p1, p0, Lemf$4$2$1;->a:Lemf$4$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p0, Lemf$4$2$1;->a:Lemf$4$2;

    iget-object v1, v1, Lemf$4$2;->b:Lemf$4;

    iget-object v1, v1, Lemf$4;->a:Landroid/app/Activity;

    .line 323
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lemf$4$2$1;->a:Lemf$4$2;

    iget-object v2, v2, Lemf$4$2;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lemf$4$2$1;->a:Lemf$4$2;

    iget-object v3, v3, Lemf$4$2;->b:Lemf$4;

    iget-object v3, v3, Lemf$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 325
    return-void
.end method
