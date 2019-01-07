.class public final Landroid/support/v4/content/res/FontResourcesParserCompat$c;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZI)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "weight"    # I
    .param p3, "italic"    # Z
    .param p4, "resourceId"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$c;->a:Ljava/lang/String;

    .line 110
    iput p2, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$c;->b:I

    .line 111
    iput-boolean p3, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$c;->c:Z

    .line 112
    iput p4, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$c;->d:I

    .line 113
    return-void
.end method
