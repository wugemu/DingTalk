.class abstract Ledt;
.super Ljava/lang/Object;
.source "AbstractTheme.java"

# interfaces
.implements Ledq;


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget v0, Lecj$c;->dp3:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    sput v0, Ledt;->a:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lecj$b;->ui_common_level1_contrary_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    invoke-static {v0}, Lecz;->a(I)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 19
    sget v0, Ledt;->a:I

    return v0
.end method
