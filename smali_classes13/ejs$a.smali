.class public final Lejs$a;
.super Ljava/lang/Object;
.source "HomeDropMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "iconFont"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 34
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lejs$a;-><init>(ILjava/lang/String;ILjava/lang/String;IZ)V

    .line 35
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;ILjava/lang/String;IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "iconFont"    # Ljava/lang/String;
    .param p5, "redDotNumber"    # I
    .param p6, "showRedDotNumber"    # Z

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lejs$a;->a:I

    .line 26
    iput-object p2, p0, Lejs$a;->b:Ljava/lang/String;

    .line 27
    iput p3, p0, Lejs$a;->c:I

    .line 28
    iput-object p4, p0, Lejs$a;->d:Ljava/lang/String;

    .line 29
    iput v0, p0, Lejs$a;->e:I

    .line 30
    iput-boolean v0, p0, Lejs$a;->f:Z

    .line 31
    return-void
.end method
