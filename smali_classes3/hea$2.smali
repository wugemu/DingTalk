.class final Lhea$2;
.super Lbyv;
.source "LiveDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

.field final synthetic b:Lhea;


# direct methods
.method constructor <init>(Lhea;Lcom/alibaba/lightapp/runtime/plugin/biz/Live;)V
    .locals 0
    .param p1, "this$0"    # Lhea;

    .prologue
    .line 92
    iput-object p1, p0, Lhea$2;->b:Lhea;

    iput-object p2, p0, Lhea$2;->a:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    invoke-direct {p0}, Lbyv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lhea$2;->b:Lhea;

    .line 1029
    iget-object v0, v0, Lhea;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 95
    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lhea$2;->b:Lhea;

    .line 2029
    iget-object v0, v0, Lhea;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 96
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->reload()V

    .line 98
    :cond_0
    return-void
.end method
