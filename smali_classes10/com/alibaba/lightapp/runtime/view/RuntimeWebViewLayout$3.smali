.class final Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$3;
.super Ljava/lang/Object;
.source "RuntimeWebViewLayout.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$3;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$3;->a:Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$3;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$3;->a:Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->b(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Landroid/view/View;)V

    .line 1173
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$3;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;I)V

    .line 1174
    return-void
.end method
