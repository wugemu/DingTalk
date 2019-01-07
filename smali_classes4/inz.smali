.class public final Linz;
.super Ljava/lang/Object;
.source "H5Bundle.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Liom;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linz;->a:Ljava/util/List;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-direct {p0}, Linz;-><init>()V

    .line 1043
    iput-object p1, p0, Linz;->b:Landroid/os/Bundle;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Linz;->b:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Linz;->b:Landroid/os/Bundle;

    .line 39
    :cond_0
    iget-object v0, p0, Linz;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public final a(Liom;)V
    .locals 1
    .param p1, "listener"    # Liom;

    .prologue
    .line 30
    iget-object v0, p0, Linz;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Linz;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    return-void
.end method
