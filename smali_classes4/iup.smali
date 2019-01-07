.class public final Liup;
.super Ljava/lang/Object;
.source "TGFaceAttr.java"


# instance fields
.field public a:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Liup;->a:Landroid/graphics/RectF;

    .line 78
    return-void
.end method
