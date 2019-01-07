.class public final Lftf$2;
.super Ljava/lang/Object;
.source "NameCardOrgsPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lftf;


# direct methods
.method public constructor <init>(Lftf;)V
    .locals 0
    .param p1, "this$0"    # Lftf;

    .prologue
    .line 60
    iput-object p1, p0, Lftf$2;->a:Lftf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 60
    check-cast p1, Ljava/util/List;

    .line 1063
    iget-object v0, p0, Lftf$2;->a:Lftf;

    .line 2022
    iget-object v0, v0, Lftf;->a:Lfsz$a;

    .line 1063
    invoke-interface {v0, p1}, Lfsz$a;->a(Ljava/util/List;)V

    .line 60
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lftf$2;->a:Lftf;

    .line 1022
    iget-object v0, v0, Lftf;->a:Lfsz$a;

    .line 73
    invoke-interface {v0, p2}, Lfsz$a;->a(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 69
    return-void
.end method
