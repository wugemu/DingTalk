.class public final Llih;
.super Llgv;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llih$b;,
        Llih$a;
    }
.end annotation


# static fields
.field public static final a:Llih;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Llih;

    invoke-direct {v0}, Llih;-><init>()V

    sput-object v0, Llih;->a:Llih;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Llgv;-><init>()V

    .line 41
    return-void
.end method

.method static a(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 125
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Llgv$a;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Llih$a;

    invoke-direct {v0}, Llih$a;-><init>()V

    return-object v0
.end method
