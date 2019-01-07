.class public final Lcom/taobao/gcanvas/GCanvasResult;
.super Ljava/lang/Object;
.source "GCanvasResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/gcanvas/GCanvasResult$ResultCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

.field protected b:Ljava/lang/String;

.field protected c:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/taobao/gcanvas/GCanvasResult;, "Lcom/taobao/gcanvas/GCanvasResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->NO_RESULT:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->a:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->c:Landroid/app/Activity;

    .line 53
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasResult;->b:Ljava/lang/String;

    .line 54
    return-void
.end method
