.class final Lhpe$d;
.super Ljava/lang/Object;
.source "HydroNetStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhpe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

.field b:Lcom/uc/webview/export/WebResourceResponse;

.field final synthetic c:Lhpe;


# direct methods
.method constructor <init>(Lhpe;)V
    .locals 0
    .param p1, "this$0"    # Lhpe;

    .prologue
    .line 549
    iput-object p1, p0, Lhpe$d;->c:Lhpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
