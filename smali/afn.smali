.class public final Lafn;
.super Ljava/lang/Object;
.source "MenuItem.java"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/Object;

.field public f:Z


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "icon"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lafn;-><init>(IILjava/lang/String;Z)V

    .line 110
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Z)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "icon"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "sticky"    # Z

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lafn;->a:I

    .line 114
    iput p2, p0, Lafn;->b:I

    .line 115
    iput-object p3, p0, Lafn;->c:Ljava/lang/String;

    .line 116
    iput-boolean p4, p0, Lafn;->f:Z

    .line 117
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lafn;-><init>(IILjava/lang/String;)V

    .line 106
    return-void
.end method

.method public static a(IILjava/lang/String;)Lafn;
    .locals 1
    .param p0, "action"    # I
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Lafn;

    invoke-direct {v0, p0, p1, p2}, Lafn;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static a(IILjava/lang/String;ZLjava/lang/Object;)Lafn;
    .locals 3
    .param p0, "action"    # I
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "sticky"    # Z
    .param p4, "tag"    # Ljava/lang/Object;

    .prologue
    .line 80
    new-instance v0, Lafn;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p2, v2}, Lafn;-><init>(IILjava/lang/String;Z)V

    .line 1164
    .local v0, "item":Lafn;
    iput-object p4, v0, Lafn;->e:Ljava/lang/Object;

    .line 82
    return-object v0
.end method

.method public static a(ILjava/lang/String;)Lafn;
    .locals 1
    .param p0, "action"    # I
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Lafn;

    invoke-direct {v0, p0, p1}, Lafn;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
