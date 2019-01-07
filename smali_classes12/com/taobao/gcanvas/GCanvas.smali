.class public final Lcom/taobao/gcanvas/GCanvas;
.super Ljava/lang/Object;
.source "GCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/gcanvas/GCanvas$ViewMode;
    }
.end annotation


# static fields
.field public static final a:Lcom/taobao/gcanvas/GCanvas$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;->HYBRID_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    sput-object v0, Lcom/taobao/gcanvas/GCanvas;->a:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method
