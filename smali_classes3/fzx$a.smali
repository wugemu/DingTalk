.class public final Lfzx$a;
.super Ljava/lang/Object;
.source "CSpaceAddMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field b:I

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field public f:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;II)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "order"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "iconImg"    # I
    .param p5, "iconFont"    # I

    .prologue
    const/4 v4, 0x0

    .line 35
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lfzx$a;-><init>(IILjava/lang/String;IIZ)V

    .line 36
    iput p1, p0, Lfzx$a;->a:I

    .line 37
    iput p2, p0, Lfzx$a;->b:I

    .line 38
    iput-object p3, p0, Lfzx$a;->c:Ljava/lang/String;

    .line 39
    iput v4, p0, Lfzx$a;->d:I

    .line 40
    iput p5, p0, Lfzx$a;->e:I

    .line 41
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;IIZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "order"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "iconImg"    # I
    .param p5, "iconFont"    # I
    .param p6, "enable"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lfzx$a;->a:I

    .line 45
    iput p2, p0, Lfzx$a;->b:I

    .line 46
    iput-object p3, p0, Lfzx$a;->c:Ljava/lang/String;

    .line 47
    iput p4, p0, Lfzx$a;->d:I

    .line 48
    iput p5, p0, Lfzx$a;->e:I

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfzx$a;->f:Z

    .line 50
    return-void
.end method
