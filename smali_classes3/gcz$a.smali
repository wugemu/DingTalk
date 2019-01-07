.class public final Lgcz$a;
.super Ljava/lang/Object;
.source "FileFilterDropMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgcz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lgcz$a;-><init>(ILjava/lang/String;I)V

    .line 37
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;I)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "icon"    # I

    .prologue
    const/4 v3, 0x0

    .line 32
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lgcz$a;-><init>(ILjava/lang/String;IIZ)V

    .line 33
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;IIZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "redDotNumber"    # I
    .param p5, "showRedDotNumber"    # Z

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lgcz$a;->a:I

    .line 25
    iput-object p2, p0, Lgcz$a;->b:Ljava/lang/String;

    .line 26
    iput p3, p0, Lgcz$a;->c:I

    .line 27
    iput v0, p0, Lgcz$a;->d:I

    .line 28
    iput-boolean v0, p0, Lgcz$a;->e:Z

    .line 29
    return-void
.end method
