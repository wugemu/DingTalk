.class public final Lsh;
.super Ljava/lang/Object;
.source "TitleBarJsConfig.java"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lsh;->a:F

    .line 11
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lsh;->b:F

    .line 12
    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lsh;->c:F

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lsh;->d:F

    .line 23
    return-void
.end method
