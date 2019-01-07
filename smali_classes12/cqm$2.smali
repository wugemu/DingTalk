.class final Lcqm$2;
.super Ljava/lang/Object;
.source "SJLinkify.java"

# interfaces
.implements Lcqm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;II)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, "digitCount":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 204
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    add-int/lit8 v0, v0, 0x1

    .line 206
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 207
    const/4 v2, 0x1

    .line 211
    :goto_1
    return v2

    .line 203
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
