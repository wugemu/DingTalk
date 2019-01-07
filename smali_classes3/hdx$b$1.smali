.class final Lhdx$b$1;
.super Ljava/lang/Object;
.source "DrawerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdx$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lhdx$b;


# direct methods
.method constructor <init>(Lhdx$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lhdx$b;

    .prologue
    .line 260
    iput-object p1, p0, Lhdx$b$1;->d:Lhdx$b;

    iput-object p2, p0, Lhdx$b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lhdx$b$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lhdx$b$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 263
    iget-object v0, p0, Lhdx$b$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lhdx$b$1;->d:Lhdx$b;

    iget-object v0, v0, Lhdx$b;->a:Lhdx;

    .line 1034
    iget-object v0, v0, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 265
    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lhdx$b$1;->d:Lhdx$b;

    iget-object v0, v0, Lhdx$b;->a:Lhdx;

    .line 2034
    iget-object v0, v0, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 266
    iget-object v1, p0, Lhdx$b$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lhdx$b$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lhdx$b$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    :cond_0
    return-void
.end method
