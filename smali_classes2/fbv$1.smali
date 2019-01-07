.class public final Lfbv$1;
.super Ljava/lang/Object;
.source "ImageDisplayPresenter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfbv;


# direct methods
.method public constructor <init>(Lfbv;)V
    .locals 0
    .param p1, "this$0"    # Lfbv;

    .prologue
    .line 23
    iput-object p1, p0, Lfbv$1;->a:Lfbv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lfbv$1;->a:Lfbv;

    .line 2015
    iget-object v0, v0, Lfbv;->a:Lfbu;

    .line 31
    invoke-interface {v0, p1, p2}, Lfbu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;>;"
    iget-object v0, p0, Lfbv$1;->a:Lfbv;

    .line 1015
    iget-object v0, v0, Lfbv;->a:Lfbu;

    .line 26
    invoke-interface {v0, p1}, Lfbu;->a(Ljava/util/List;)V

    .line 27
    return-void
.end method
