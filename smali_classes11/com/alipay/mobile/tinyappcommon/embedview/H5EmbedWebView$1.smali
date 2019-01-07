.class Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView$1;
.super Ljava/lang/Object;
.source "H5EmbedWebView.java"

# interfaces
.implements Liop$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->getView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView$1;->this$0:Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldExit()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method
