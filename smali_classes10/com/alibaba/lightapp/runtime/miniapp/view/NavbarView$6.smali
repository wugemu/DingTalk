.class final Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$6;
.super Ljava/lang/Object;
.source "NavbarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$6;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    invoke-static {}, Lhlt;->a()Lhlt;

    move-result-object v0

    const-string/jumbo v1, "optionMenu"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhlt;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 176
    return-void
.end method
