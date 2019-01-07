.class public final Lun;
.super Ljava/lang/Object;
.source "SpaceMenuObject.java"


# instance fields
.field public final a:I

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "menuId"    # I
    .param p2, "menuIconFontResourceId"    # I
    .param p3, "menuName"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lun;->a:I

    .line 31
    iput p2, p0, Lun;->b:I

    .line 32
    iput-object p3, p0, Lun;->c:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 54
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lun;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lun;

    iget v0, v0, Lun;->a:I

    iget v1, p0, Lun;->a:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lun;->a:I

    return v0
.end method
