.class public abstract Lgso;
.super Ljava/lang/Object;
.source "FaceDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgso$a;
    }
.end annotation


# instance fields
.field protected s:Lgso$a;


# direct methods
.method public constructor <init>(Lgso$a;)V
    .locals 0
    .param p1, "listener"    # Lgso$a;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lgso;->s:Lgso$a;

    .line 22
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 54
    return-void
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 73
    return-void
.end method

.method public a(Ljava/lang/Float;)V
    .locals 0
    .param p1, "minFaceSize"    # Ljava/lang/Float;

    .prologue
    .line 81
    return-void
.end method

.method public abstract a([BIIIIZ)V
.end method

.method public b()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public b(Ljava/lang/Float;)V
    .locals 0
    .param p1, "maxFaceSize"    # Ljava/lang/Float;

    .prologue
    .line 89
    return-void
.end method
