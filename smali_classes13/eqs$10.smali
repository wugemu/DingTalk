.class final Leqs$10;
.super Ljava/lang/Object;
.source "ContactSearchPresenter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leqs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lcom/alibaba/android/search/assure/model/AssureModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Leqs;


# direct methods
.method constructor <init>(Leqs;)V
    .locals 0
    .param p1, "this$0"    # Leqs;

    .prologue
    .line 2353
    iput-object p1, p0, Leqs$10;->a:Leqs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2353
    check-cast p1, Ljava/util/Collection;

    .line 3356
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3357
    iget-object v0, p0, Leqs$10;->a:Leqs;

    invoke-static {v0}, Leqs;->m(Leqs;)V

    .line 3358
    :goto_0
    return-void

    .line 3360
    :cond_0
    iget-object v0, p0, Leqs$10;->a:Leqs;

    iget-object v0, v0, Leqs;->d:Ljava/util/List;

    invoke-static {v0, p1}, Leni;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 3361
    iget-object v0, p0, Leqs$10;->a:Leqs;

    invoke-static {v0}, Leqs;->m(Leqs;)V

    goto :goto_0
.end method
