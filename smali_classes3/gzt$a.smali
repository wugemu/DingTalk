.class public final Lgzt$a;
.super Landroid/graphics/BitmapFactory$Options;
.source "BitmapsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgzt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 209
    sget-object v0, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->a:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lgzt$a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 210
    return-void
.end method
