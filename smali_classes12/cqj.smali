.class public Lcqj;
.super Landroid/text/style/ImageSpan;
.source "NoteImageSpan.java"


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "src"    # Landroid/net/Uri;
    .param p3, "reSrc"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iput-object v1, p0, Lcqj;->a:Landroid/net/Uri;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcqj;->c:Z

    .line 20
    iput-object v1, p0, Lcqj;->b:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcqj;->a:Landroid/net/Uri;

    .line 25
    iput-object p3, p0, Lcqj;->b:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 71
    invoke-super/range {p0 .. p9}, Landroid/text/style/ImageSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 72
    return-void
.end method
