.class public final Lhag;
.super Ljava/lang/Object;
.source "CompressedObject.java"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/graphics/Bitmap;

.field e:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceUrl"    # Ljava/lang/String;
    .param p2, "compressUrl"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lhag;->e:F

    .line 47
    iput-object p1, p0, Lhag;->b:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lhag;->c:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1
    .param p1, "sourceUrl"    # Ljava/lang/String;
    .param p2, "compressUrl"    # Ljava/lang/String;
    .param p3, "quality"    # F

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lhag;->e:F

    .line 52
    iput-object p1, p0, Lhag;->b:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lhag;->c:Ljava/lang/String;

    .line 54
    iput p3, p0, Lhag;->e:F

    .line 55
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    if-ne p0, p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 129
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 131
    check-cast v0, Lhag;

    .line 133
    .local v0, "object":Lhag;
    iget-object v3, p0, Lhag;->b:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lhag;->b:Ljava/lang/String;

    iget-object v4, v0, Lhag;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lhag;->b:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lhag;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhag;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
