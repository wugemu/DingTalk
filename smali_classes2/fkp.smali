.class public final Lfkp;
.super Ljava/lang/Object;
.source "OrgApplyFormCustomizePresenter.java"

# interfaces
.implements Lfko$a;


# instance fields
.field a:Lfko$b;

.field private b:Lfkq;


# direct methods
.method public constructor <init>(Lfko$b;)V
    .locals 1
    .param p1, "view"    # Lfko$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lfkp;->a:Lfko$b;

    .line 26
    iget-object v0, p0, Lfkp;->a:Lfko$b;

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lfkp;->a:Lfko$b;

    invoke-interface {v0, p0}, Lfko$b;->setPresenter(Lcjd;)V

    .line 31
    invoke-static {}, Lfkq;->a()Lfkq;

    move-result-object v0

    iput-object v0, p0, Lfkp;->b:Lfkq;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Lfkp;->a:Lfko$b;

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lfkp;->a:Lfko$b;

    .line 1134
    iget-object v1, p0, Lfkp;->b:Lfkq;

    invoke-virtual {v1}, Lfkq;->b()Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v1

    .line 56
    invoke-interface {v0, v1}, Lfko$b;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 5
    .param p1, "orgId"    # J

    .prologue
    .line 61
    iget-object v0, p0, Lfkp;->a:Lfko$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkp;->a:Lfko$b;

    invoke-interface {v0}, Lfko$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lfkp;->a:Lfko$b;

    invoke-interface {v0}, Lfko$b;->b()V

    .line 66
    iget-object v0, p0, Lfkp;->b:Lfkq;

    new-instance v1, Lfkp$1;

    invoke-direct {v1, p0}, Lfkp$1;-><init>(Lfkp;)V

    .line 2044
    const-string/jumbo v2, "OrgApplyFormModel"

    const-string/jumbo v3, "loadForm: Data is loading."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2045
    new-instance v2, Lfkq$1;

    invoke-direct {v2, v0, v1}, Lfkq$1;-><init>(Lfkq;Lcma;)V

    .line 2054
    const-class v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 2055
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgApplyItems(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;)V
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "orgFormObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    .prologue
    .line 97
    iget-object v0, p0, Lfkp;->a:Lfko$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkp;->a:Lfko$b;

    invoke-interface {v0}, Lfko$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lfkp;->a:Lfko$b;

    invoke-interface {v0}, Lfko$b;->b()V

    .line 103
    iget-object v0, p0, Lfkp;->b:Lfkq;

    new-instance v1, Lfkp$2;

    invoke-direct {v1, p0}, Lfkp$2;-><init>(Lfkp;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lfkq;->a(JLcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;Lcma;)V

    goto :goto_0
.end method

.method public final b()Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lfkp;->b:Lfkq;

    invoke-virtual {v0}, Lfkq;->b()Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lfkp;->a:Lfko$b;

    .line 47
    return-void
.end method
