.class public final Landroid/support/v4/provider/FontsContractCompat$a;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:I

.field public final c:I

.field public final d:Z

.field final e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ttcIndex"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3, "weight"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x3e8L
        .end annotation
    .end param
    .param p4, "italic"    # Z
    .param p5, "resultCode"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    invoke-static {p1}, Lfv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$a;->a:Landroid/net/Uri;

    .line 302
    iput p2, p0, Landroid/support/v4/provider/FontsContractCompat$a;->b:I

    .line 303
    iput p3, p0, Landroid/support/v4/provider/FontsContractCompat$a;->c:I

    .line 304
    iput-boolean p4, p0, Landroid/support/v4/provider/FontsContractCompat$a;->d:Z

    .line 305
    iput p5, p0, Landroid/support/v4/provider/FontsContractCompat$a;->e:I

    .line 306
    return-void
.end method
