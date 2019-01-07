.class public final Ljot$a;
.super Ljava/lang/Object;
.source "VideoClickDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/graphics/Rect;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "index"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Ljot$a;->b:I

    .line 63
    iput-object p1, p0, Ljot$a;->a:Landroid/graphics/Rect;

    .line 64
    iput p2, p0, Ljot$a;->b:I

    .line 65
    return-void
.end method
