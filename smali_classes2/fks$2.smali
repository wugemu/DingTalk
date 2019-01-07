.class public final Lfks$2;
.super Ljava/lang/Object;
.source "CreateOrgPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfks;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfks;


# direct methods
.method public constructor <init>(Lfks;)V
    .locals 0
    .param p1, "this$0"    # Lfks;

    .prologue
    .line 89
    iput-object p1, p0, Lfks$2;->a:Lfks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 89
    check-cast p1, Ljava/util/List;

    .line 3092
    iget-object v0, p0, Lfks$2;->a:Lfks;

    .line 4021
    iget-object v0, v0, Lfks;->b:Lfkr$b;

    .line 3092
    invoke-interface {v0}, Lfkr$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3096
    iget-object v0, p0, Lfks$2;->a:Lfks;

    .line 5021
    iget-object v0, v0, Lfks;->b:Lfkr$b;

    .line 3096
    invoke-interface {v0}, Lfkr$b;->H_()V

    .line 3097
    iget-object v0, p0, Lfks$2;->a:Lfks;

    .line 6021
    iget-object v0, v0, Lfks;->b:Lfkr$b;

    .line 3097
    invoke-interface {v0, p1}, Lfkr$b;->b(Ljava/util/List;)V

    .line 89
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 107
    iget-object v0, p0, Lfks$2;->a:Lfks;

    .line 1021
    iget-object v0, v0, Lfks;->b:Lfkr$b;

    .line 107
    invoke-interface {v0}, Lfkr$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lfks$2;->a:Lfks;

    .line 2021
    iget-object v0, v0, Lfks;->b:Lfkr$b;

    .line 111
    invoke-interface {v0}, Lfkr$b;->H_()V

    .line 112
    iget-object v0, p0, Lfks$2;->a:Lfks;

    .line 3021
    iget-object v0, v0, Lfks;->b:Lfkr$b;

    .line 112
    iget-object v1, p0, Lfks$2;->a:Lfks;

    invoke-virtual {v1}, Lfks;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lfkr$b;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 103
    return-void
.end method
