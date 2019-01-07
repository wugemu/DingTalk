.class public final Lgct;
.super Ljava/lang/Object;
.source "FavoriteLoadMore.java"


# instance fields
.field public a:Z

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Lxf;)V
    .locals 1
    .param p1, "result"    # Lxf;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    if-eqz p1, :cond_0

    .line 1024
    iget-boolean v0, p1, Lxf;->b:Z

    .line 15
    iput-boolean v0, p0, Lgct;->a:Z

    .line 1032
    iget v0, p1, Lxf;->c:I

    .line 16
    iput v0, p0, Lgct;->c:I

    .line 18
    :cond_0
    return-void
.end method
