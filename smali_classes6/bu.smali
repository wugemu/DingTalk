.class Lbu;
.super Lbt;
.source "ViewUtilsApi18.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lbt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lcc;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    new-instance v0, Lcb;

    invoke-direct {v0, p1}, Lcb;-><init>(Landroid/view/View;)V

    return-object v0
.end method
