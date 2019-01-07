.class public final Lgqm;
.super Ljava/lang/Object;
.source "SpaceMenuObject.java"


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "menuId"    # I
    .param p2, "menuIconFontResourceId"    # I
    .param p3, "menuName"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lgqm;->a:I

    .line 32
    iput p2, p0, Lgqm;->b:I

    .line 33
    iput-object p3, p0, Lgqm;->d:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static a(ILjava/lang/String;I)Lgqm;
    .locals 1
    .param p0, "menuId"    # I
    .param p1, "menuName"    # Ljava/lang/String;
    .param p2, "iconFontResId"    # I

    .prologue
    .line 45
    new-instance v0, Lgqm;

    invoke-direct {v0, p0, p2, p1}, Lgqm;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static b(ILjava/lang/String;I)Lgqm;
    .locals 2
    .param p0, "menuId"    # I
    .param p1, "menuName"    # Ljava/lang/String;
    .param p2, "imageResId"    # I

    .prologue
    .line 49
    new-instance v0, Lgqm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lgqm;-><init>(IILjava/lang/String;)V

    .line 50
    .local v0, "object":Lgqm;
    iput p2, v0, Lgqm;->c:I

    .line 51
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 65
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lgqm;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lgqm;

    iget v0, v0, Lgqm;->a:I

    iget v1, p0, Lgqm;->a:I

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
    .line 60
    iget v0, p0, Lgqm;->a:I

    return v0
.end method
