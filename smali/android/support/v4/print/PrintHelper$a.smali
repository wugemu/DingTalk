.class Landroid/support/v4/print/PrintHelper$a;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelper$f;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field b:Landroid/graphics/BitmapFactory$Options;

.field protected c:Z

.field protected d:Z

.field e:I

.field f:I

.field private final g:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper$a;->b:Landroid/graphics/BitmapFactory$Options;

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper$a;->g:Ljava/lang/Object;

    .line 218
    iput v2, p0, Landroid/support/v4/print/PrintHelper$a;->e:I

    .line 220
    iput v2, p0, Landroid/support/v4/print/PrintHelper$a;->f:I

    .line 225
    iput-boolean v1, p0, Landroid/support/v4/print/PrintHelper$a;->c:Z

    .line 226
    iput-boolean v1, p0, Landroid/support/v4/print/PrintHelper$a;->d:Z

    .line 228
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$a;->a:Landroid/content/Context;

    .line 229
    return-void
.end method
