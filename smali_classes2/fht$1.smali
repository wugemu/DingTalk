.class final Lfht$1;
.super Ljava/lang/Object;
.source "ManagerRoleGroupPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfht;->a(ZJJI)V
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
        "Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfht;


# direct methods
.method constructor <init>(Lfht;)V
    .locals 0
    .param p1, "this$0"    # Lfht;

    .prologue
    .line 41
    iput-object p1, p0, Lfht$1;->a:Lfht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;

    .line 4044
    iget-object v0, p0, Lfht$1;->a:Lfht;

    .line 5018
    iget-object v0, v0, Lfht;->a:Lfhs$b;

    .line 4044
    if-eqz v0, :cond_0

    iget-object v0, p0, Lfht$1;->a:Lfht;

    .line 6018
    iget-object v0, v0, Lfht;->a:Lfhs$b;

    .line 4044
    invoke-interface {v0}, Lfhs$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4045
    :cond_0
    :goto_0
    return-void

    .line 4047
    :cond_1
    iget-object v0, p0, Lfht$1;->a:Lfht;

    .line 7018
    iget-object v0, v0, Lfht;->a:Lfhs$b;

    .line 4047
    invoke-interface {v0}, Lfhs$b;->H_()V

    .line 4048
    iget-object v0, p0, Lfht$1;->a:Lfht;

    .line 8018
    iget-object v0, v0, Lfht;->a:Lfhs$b;

    .line 4048
    invoke-interface {v0, p1}, Lfhs$b;->a(Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lfht$1;->a:Lfht;

    .line 1018
    iget-object v0, v0, Lfht;->a:Lfhs$b;

    .line 58
    if-eqz v0, :cond_0

    iget-object v0, p0, Lfht$1;->a:Lfht;

    .line 2018
    iget-object v0, v0, Lfht;->a:Lfhs$b;

    .line 58
    invoke-interface {v0}, Lfhs$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lfht$1;->a:Lfht;

    .line 3018
    iget-object v0, v0, Lfht;->a:Lfhs$b;

    .line 61
    invoke-interface {v0}, Lfhs$b;->H_()V

    .line 62
    iget-object v0, p0, Lfht$1;->a:Lfht;

    .line 4018
    iget-object v0, v0, Lfht;->a:Lfhs$b;

    .line 62
    invoke-interface {v0, p1, p2}, Lfhs$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 54
    return-void
.end method
