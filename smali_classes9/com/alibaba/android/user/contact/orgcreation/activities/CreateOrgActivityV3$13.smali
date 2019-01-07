.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$13;
.super Ljava/lang/Object;
.source "CreateOrgActivityV3.java"

# interfaces
.implements Lfkw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$13;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$13;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->i(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfla;

    move-result-object v2

    .line 1212
    const/4 v0, 0x0

    .line 1213
    iget-object v1, v2, Lfla;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfla$b;

    .line 1214
    iget-object v0, v0, Lfla$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 1215
    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isFromQrcode:Z

    if-eqz v0, :cond_3

    .line 1216
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 1218
    goto :goto_0

    .line 1220
    :cond_0
    iget-object v0, v2, Lfla;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfla$b;

    .line 1221
    iget-object v0, v0, Lfla$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 1222
    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isFromQrcode:Z

    if-eqz v0, :cond_1

    .line 1223
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1070
    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1075
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$13;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/util/List;)V

    .line 1076
    return-void
.end method
