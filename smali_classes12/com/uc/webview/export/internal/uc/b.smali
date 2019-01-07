.class public final Lcom/uc/webview/export/internal/uc/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/InvokeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/uc/b$a;,
        Lcom/uc/webview/export/internal/uc/b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/uc/webview/export/internal/uc/b;->a:Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;

    .line 22
    return-void
.end method


# virtual methods
.method public final invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 26
    packed-switch p1, :pswitch_data_0

    .line 41
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    aget-object v0, p2, v0

    check-cast v0, Ljava/util/Map;

    .line 30
    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/b;->a:Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;

    new-instance v2, Lcom/uc/webview/export/internal/uc/b$b;

    invoke-direct {v2, v0}, Lcom/uc/webview/export/internal/uc/b$b;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;->onSendRequest(Lcom/uc/webview/export/internal/interfaces/IRequestData;)Lcom/uc/webview/export/internal/interfaces/IRequestData;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/uc/b$b;

    .line 31
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/b$b;->a(Lcom/uc/webview/export/internal/uc/b$b;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 35
    :pswitch_1
    aget-object v0, p2, v0

    check-cast v0, Ljava/util/Map;

    .line 36
    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/b;->a:Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;

    new-instance v2, Lcom/uc/webview/export/internal/uc/b$a;

    invoke-direct {v2, v0}, Lcom/uc/webview/export/internal/uc/b$a;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;->onReceiveResponse(Lcom/uc/webview/export/internal/interfaces/IResponseData;)Lcom/uc/webview/export/internal/interfaces/IResponseData;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/uc/b$a;

    .line 37
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/b$a;->a(Lcom/uc/webview/export/internal/uc/b$a;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
