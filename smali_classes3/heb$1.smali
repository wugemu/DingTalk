.class final Lheb$1;
.super Ljava/lang/Object;
.source "PhotoDelegate.java"

# interfaces
.implements Lheb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lheb;->a(Landroid/view/ContextMenu;Lcom/uc/webview/export/WebView$HitTestResult;Landroid/view/MenuItem$OnMenuItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ContextMenu;

.field final synthetic b:Landroid/view/MenuItem$OnMenuItemClickListener;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Lheb;


# direct methods
.method constructor <init>(Lheb;Landroid/view/ContextMenu;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lheb;

    .prologue
    .line 85
    iput-object p1, p0, Lheb$1;->d:Lheb;

    iput-object p2, p0, Lheb$1;->a:Landroid/view/ContextMenu;

    iput-object p3, p0, Lheb$1;->b:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object p4, p0, Lheb$1;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)V
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lheb$1;->a:Landroid/view/ContextMenu;

    sget v1, Lhdn$k;->dt_lightapp_webview_identifyQRCode:I

    invoke-interface {v0, v2, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lheb$1;->b:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lheb$1;->c:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 90
    iget-object v0, p0, Lheb$1;->d:Lheb;

    aget-object v1, p1, v2

    .line 1040
    iput-object v1, v0, Lheb;->c:Ljava/lang/Object;

    .line 92
    return-void
.end method
