.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1$1;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

.field final synthetic b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1;

    .prologue
    .line 2270
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1$1;->b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2274
    .local v1, "commonContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2275
    .local v3, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v4, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 2276
    .local v2, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v2, :cond_0

    .line 2280
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v5, :cond_1

    .line 2281
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;-><init>()V

    .line 2282
    .local v0, "commonContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    iput-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgTitle:Ljava/lang/String;

    .line 2283
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgName:Ljava/lang/String;

    iput-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgName:Ljava/lang/String;

    .line 2284
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->modifyTime:J

    .line 2285
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    iput-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    .line 2286
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2289
    .end local v0    # "commonContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    :cond_1
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v5, :cond_0

    .line 2290
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2293
    .end local v2    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_2
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v4

    invoke-virtual {v4}, Lfmz;->c()Lfna;

    move-result-object v4

    invoke-interface {v4, v3}, Lfna;->a(Ljava/util/List;)I

    .line 2294
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v4

    invoke-virtual {v4}, Lfmz;->d()Lfmo;

    move-result-object v4

    invoke-interface {v4, v1}, Lfmo;->a(Ljava/util/List;)I

    .line 2295
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.workapp.common_contact_change"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2296
    return-void
.end method
