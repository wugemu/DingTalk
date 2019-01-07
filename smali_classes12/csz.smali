.class Lcsz;
.super Landroid/text/style/DynamicDrawableSpan;
.source "EmojiconSpan.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:I

.field private d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "size"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcsz;->a:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcsz;->b:I

    .line 36
    iput p3, p0, Lcsz;->c:I

    .line 37
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    iget-object v1, p0, Lcsz;->d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcsz;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcsz;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcsz;->d:Landroid/graphics/drawable/Drawable;

    .line 44
    iget v0, p0, Lcsz;->c:I

    .line 45
    .local v0, "size":I
    iget-object v1, p0, Lcsz;->d:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0    # "size":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcsz;->d:Landroid/graphics/drawable/Drawable;

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
