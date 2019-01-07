.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 2230
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2233
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v10

    .line 2234
    .local v10, "mUserProfile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v10, :cond_1

    .line 2309
    :cond_0
    :goto_0
    return-void

    .line 2237
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "hasInitCommonContact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v9

    .line 2238
    .local v9, "hasInit":Z
    if-nez v9, :cond_0

    iget-object v0, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2242
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->d()Lfmo;

    move-result-object v0

    const/16 v3, 0x1e

    invoke-interface {v0, v3}, Lfmo;->a(I)Ljava/util/List;

    move-result-object v8

    .line 2243
    .local v8, "commonContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x1d

    if-le v0, v3, :cond_2

    .line 2244
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "hasInitCommonContact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2248
    :cond_2
    iget-object v0, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2252
    iget-object v0, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    .line 2253
    .local v12, "orgNodeItemObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2257
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 2258
    .local v11, "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v1

    .line 2259
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)I

    move-result v2

    .line 2260
    .local v2, "keyType":I
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->j()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x1e

    new-instance v7, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1;

    invoke-direct {v7, p0, v10, v11}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-interface/range {v0 .. v7}, Lezt;->a(Ljava/lang/String;IILjava/lang/Long;IILcma;)V

    goto/16 :goto_0
.end method
