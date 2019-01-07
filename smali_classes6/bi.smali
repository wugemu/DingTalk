.class public final Lbi;
.super Ljava/lang/Object;
.source "TransitionValuesMaps.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# instance fields
.field public final a:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Landroid/view/View;",
            "Lbh;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lbi;->a:Lfk;

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lbi;->b:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lbi;->c:Lfp;

    .line 34
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lbi;->d:Lfk;

    return-void
.end method
