.class public final Lbn;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# static fields
.field private static final a:Lbq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 32
    new-instance v0, Lbp;

    invoke-direct {v0}, Lbp;-><init>()V

    sput-object v0, Lbn;->a:Lbq;

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Lbo;

    invoke-direct {v0}, Lbo;-><init>()V

    sput-object v0, Lbn;->a:Lbq;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lbm;
    .locals 1
    .param p0, "group"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lbn;->a:Lbq;

    invoke-interface {v0, p0}, Lbq;->a(Landroid/view/ViewGroup;)Lbm;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p0, "group"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "suppress"    # Z

    .prologue
    .line 49
    sget-object v0, Lbn;->a:Lbq;

    invoke-interface {v0, p0, p1}, Lbq;->a(Landroid/view/ViewGroup;Z)V

    .line 50
    return-void
.end method
