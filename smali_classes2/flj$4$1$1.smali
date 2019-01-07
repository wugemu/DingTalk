.class final Lflj$4$1$1;
.super Ljava/lang/Object;
.source "ManagerOrgCustomizePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflj$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflj$4$1;


# direct methods
.method constructor <init>(Lflj$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lflj$4$1;

    .prologue
    .line 293
    iput-object p1, p0, Lflj$4$1$1;->a:Lflj$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 297
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 298
    .local v0, "currentUserProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    iget-object v3, p0, Lflj$4$1$1;->a:Lflj$4$1;

    iget-object v3, v3, Lflj$4$1;->e:Lflj$4;

    iget-object v3, v3, Lflj$4;->c:Lflj;

    iget-object v4, p0, Lflj$4$1$1;->a:Lflj$4$1;

    iget-object v4, v4, Lflj$4$1;->e:Lflj$4;

    iget-object v4, v4, Lflj$4;->c:Lflj;

    .line 1043
    iget-wide v4, v4, Lflj;->a:J

    .line 298
    invoke-static {v3, v0, v4, v5}, Lflj;->a(Lflj;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 299
    .local v1, "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-nez v3, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v3, p0, Lflj$4$1$1;->a:Lflj$4$1;

    iget-object v3, v3, Lflj$4$1;->e:Lflj$4;

    iget-object v3, v3, Lflj$4;->c:Lflj;

    iget-object v4, p0, Lflj$4$1$1;->a:Lflj$4$1;

    iget-object v4, v4, Lflj$4$1;->c:Ljava/lang/String;

    .line 2043
    iput-object v4, v3, Lflj;->d:Ljava/lang/String;

    .line 304
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v4, p0, Lflj$4$1$1;->a:Lflj$4$1;

    iget-object v4, v4, Lflj$4$1;->e:Lflj$4;

    iget-object v4, v4, Lflj$4;->c:Lflj;

    .line 3043
    iget-object v4, v4, Lflj;->d:Ljava/lang/String;

    .line 304
    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    .line 305
    iget-object v3, p0, Lflj$4$1$1;->a:Lflj$4$1;

    iget-object v3, v3, Lflj$4$1;->e:Lflj$4;

    iget-object v3, v3, Lflj$4;->c:Lflj;

    .line 4043
    iget-object v3, v3, Lflj;->f:Lfli$b;

    .line 305
    iget-object v4, p0, Lflj$4$1$1;->a:Lflj$4$1;

    iget-object v4, v4, Lflj$4$1;->e:Lflj$4;

    iget-object v4, v4, Lflj$4;->c:Lflj;

    .line 5043
    iget-object v4, v4, Lflj;->b:Ljava/lang/String;

    .line 305
    iget-object v5, p0, Lflj$4$1$1;->a:Lflj$4$1;

    iget-object v5, v5, Lflj$4$1;->e:Lflj$4;

    iget-object v5, v5, Lflj$4;->c:Lflj;

    .line 6043
    iget-object v5, v5, Lflj;->d:Ljava/lang/String;

    .line 305
    invoke-interface {v3, v4, v5}, Lfli$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3, v0}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 308
    const-string/jumbo v3, "ManagerOrgCustomizePresenter"

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lflj$4$1$1$1;

    invoke-direct {v4, p0, v0}, Lflj$4$1$1$1;-><init>(Lflj$4$1$1;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 314
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.org_employee_change"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lflj$4$1$1;->a:Lflj$4$1;

    iget-object v3, v3, Lflj$4$1;->e:Lflj$4;

    iget-object v3, v3, Lflj$4;->c:Lflj;

    .line 7043
    iget-object v3, v3, Lflj;->e:Landroid/app/Activity;

    .line 315
    if-eqz v3, :cond_0

    .line 316
    iget-object v3, p0, Lflj$4$1$1;->a:Lflj$4$1;

    iget-object v3, v3, Lflj$4$1;->e:Lflj$4;

    iget-object v3, v3, Lflj$4;->c:Lflj;

    .line 8043
    iget-object v3, v3, Lflj;->e:Landroid/app/Activity;

    .line 316
    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
