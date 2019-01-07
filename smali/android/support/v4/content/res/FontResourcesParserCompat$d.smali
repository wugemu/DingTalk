.class public final Landroid/support/v4/content/res/FontResourcesParserCompat$d;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Landroid/support/v4/content/res/FontResourcesParserCompat$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lfc;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lfc;II)V
    .locals 0
    .param p1, "request"    # Lfc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "strategy"    # I
    .param p3, "timeoutMs"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$d;->a:Lfc;

    .line 81
    iput p2, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$d;->c:I

    .line 82
    iput p3, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$d;->b:I

    .line 83
    return-void
.end method
