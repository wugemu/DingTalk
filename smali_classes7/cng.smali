.class public final Lcng;
.super Ljava/lang/Object;
.source "MenuObject.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "menuResourceId"    # I

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcng;-><init>(IILjava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "menuResourceId"    # I
    .param p3, "menuName"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcng;-><init>(IILjava/lang/String;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "menuId"    # I
    .param p2, "menuResourceId"    # I
    .param p3, "menuName"    # Ljava/lang/String;
    .param p4, "object"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcng;->a:I

    .line 27
    iput p2, p0, Lcng;->b:I

    .line 28
    iput-object p3, p0, Lcng;->c:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcng;->d:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "menuName"    # Ljava/lang/String;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcng;-><init>(IILjava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    .line 41
    :cond_0
    instance-of v0, p1, Lcng;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 42
    check-cast v0, Lcng;

    iget v0, v0, Lcng;->a:I

    iget v1, p0, Lcng;->a:I

    if-ne v0, v1, :cond_1

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
