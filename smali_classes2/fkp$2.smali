.class final Lfkp$2;
.super Ljava/lang/Object;
.source "OrgApplyFormCustomizePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfkp;->a(JLcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfkp;


# direct methods
.method constructor <init>(Lfkp;)V
    .locals 0
    .param p1, "this$0"    # Lfkp;

    .prologue
    .line 103
    iput-object p1, p0, Lfkp$2;->a:Lfkp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 103
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    .line 3106
    iget-object v0, p0, Lfkp$2;->a:Lfkp;

    .line 4016
    iget-object v0, v0, Lfkp;->a:Lfko$b;

    .line 3106
    if-eqz v0, :cond_0

    .line 3110
    iget-object v0, p0, Lfkp$2;->a:Lfkp;

    .line 5016
    iget-object v0, v0, Lfkp;->a:Lfko$b;

    .line 3110
    invoke-interface {v0}, Lfko$b;->H_()V

    .line 3111
    iget-object v0, p0, Lfkp$2;->a:Lfkp;

    .line 6016
    iget-object v0, v0, Lfkp;->a:Lfko$b;

    .line 3111
    invoke-interface {v0, p1}, Lfko$b;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;)V

    .line 103
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lfkp$2;->a:Lfkp;

    .line 1016
    iget-object v0, v0, Lfkp;->a:Lfko$b;

    .line 121
    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lfkp$2;->a:Lfkp;

    .line 2016
    iget-object v0, v0, Lfkp;->a:Lfko$b;

    .line 125
    invoke-interface {v0}, Lfko$b;->H_()V

    .line 126
    iget-object v0, p0, Lfkp$2;->a:Lfkp;

    .line 3016
    iget-object v0, v0, Lfkp;->a:Lfko$b;

    .line 126
    invoke-interface {v0, p1, p2}, Lfko$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v0, "OrgApplyFormCustomizePresenter"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "loadForm: onException: "

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 117
    return-void
.end method
