.class final Lhpq$c;
.super Ljava/lang/Object;
.source "AsyncHydroNetStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;

.field b:Lcom/uc/webview/export/WebResourceResponse;

.field final synthetic c:Lhpq;


# direct methods
.method constructor <init>(Lhpq;)V
    .locals 0
    .param p1, "this$0"    # Lhpq;

    .prologue
    .line 232
    iput-object p1, p0, Lhpq$c;->c:Lhpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
