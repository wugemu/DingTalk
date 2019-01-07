.class final Lfhr$1;
.super Ljava/lang/Object;
.source "GrantResourcesPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfhr;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfhr;


# direct methods
.method constructor <init>(Lfhr;)V
    .locals 0
    .param p1, "this$0"    # Lfhr;

    .prologue
    .line 34
    iput-object p1, p0, Lfhr$1;->a:Lfhr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    .line 4037
    iget-object v0, p0, Lfhr$1;->a:Lfhr;

    .line 5016
    iget-object v0, v0, Lfhr;->a:Lfhp$b;

    .line 4037
    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhr$1;->a:Lfhr;

    .line 6016
    iget-object v0, v0, Lfhr;->a:Lfhp$b;

    .line 4037
    invoke-interface {v0}, Lfhp$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4038
    :cond_0
    :goto_0
    return-void

    .line 4040
    :cond_1
    iget-object v0, p0, Lfhr$1;->a:Lfhr;

    .line 7016
    iget-object v0, v0, Lfhr;->a:Lfhp$b;

    .line 4040
    invoke-interface {v0}, Lfhp$b;->H_()V

    .line 4041
    iget-object v0, p0, Lfhr$1;->a:Lfhr;

    .line 8016
    iget-object v0, v0, Lfhr;->a:Lfhp$b;

    .line 4041
    invoke-interface {v0, p1}, Lfhp$b;->a(Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lfhr$1;->a:Lfhr;

    .line 1016
    iget-object v0, v0, Lfhr;->a:Lfhp$b;

    .line 51
    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhr$1;->a:Lfhr;

    .line 2016
    iget-object v0, v0, Lfhr;->a:Lfhp$b;

    .line 51
    invoke-interface {v0}, Lfhp$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lfhr$1;->a:Lfhr;

    .line 3016
    iget-object v0, v0, Lfhr;->a:Lfhp$b;

    .line 54
    invoke-interface {v0}, Lfhp$b;->H_()V

    .line 55
    iget-object v0, p0, Lfhr$1;->a:Lfhr;

    .line 4016
    iget-object v0, v0, Lfhr;->a:Lfhp$b;

    .line 55
    invoke-interface {v0, p1, p2}, Lfhp$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 47
    return-void
.end method
