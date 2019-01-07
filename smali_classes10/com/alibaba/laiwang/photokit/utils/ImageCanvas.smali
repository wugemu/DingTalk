.class public Lcom/alibaba/laiwang/photokit/utils/ImageCanvas;
.super Ljava/lang/Object;
.source "ImageCanvas.java"


# static fields
.field public static a:I


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const v0, 0xfa000

    sput v0, Lcom/alibaba/laiwang/photokit/utils/ImageCanvas;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/utils/ImageCanvas;->b:Landroid/content/Context;

    .line 63
    return-void
.end method
