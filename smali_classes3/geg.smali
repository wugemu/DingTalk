.class public final Lgeg;
.super Ljava/lang/Object;
.source "DentryListWrapper.java"


# instance fields
.field final a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgeh;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "sortType"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgeg;->b:Ljava/util/List;

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgeg;->c:Z

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lgeg;->d:Ljava/lang/String;

    .line 19
    iput p1, p0, Lgeg;->a:I

    .line 20
    return-void
.end method
