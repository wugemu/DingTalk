.class final Lfno$1;
.super Ljava/lang/Object;
.source "ExternalEditContractPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfno;->a()V
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
        "Lcom/alibaba/android/user/model/ExtContactFieldsObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfno;


# direct methods
.method constructor <init>(Lfno;)V
    .locals 0
    .param p1, "this$0"    # Lfno;

    .prologue
    .line 63
    iput-object p1, p0, Lfno$1;->a:Lfno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 63
    check-cast p1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    .line 4066
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 5028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 4066
    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4069
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 6028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 4069
    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->H_()V

    .line 4070
    if-eqz p1, :cond_1

    .line 4071
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 7028
    iput-object p1, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    .line 4073
    iget-object v0, p0, Lfno$1;->a:Lfno;

    new-instance v1, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    invoke-direct {v1}, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;-><init>()V

    .line 8028
    iput-object v1, v0, Lfno;->c:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .line 4074
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 9028
    iget-object v0, v0, Lfno;->c:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .line 4074
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    .line 4075
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 10028
    iget-object v0, v0, Lfno;->c:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .line 4075
    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    iget-object v1, p1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->nameField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4076
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 11028
    iget-object v0, v0, Lfno;->c:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .line 4076
    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    iget-object v1, p1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mobileField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4077
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 12028
    iget-object v0, v0, Lfno;->c:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .line 4077
    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    iget-object v1, p1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4078
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 13028
    iget-object v0, v0, Lfno;->c:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .line 4078
    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    iget-object v1, p1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4079
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 14028
    iget-object v0, v0, Lfno;->c:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .line 4079
    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    iget-object v1, p1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4080
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 15028
    iget-object v0, v0, Lfno;->c:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .line 4080
    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    iget-object v1, p1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4081
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 16028
    iget-object v0, v0, Lfno;->c:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .line 4081
    iget-object v0, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->defaultFields:Ljava/util/List;

    iget-object v1, p1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4082
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 17028
    iget-object v0, v0, Lfno;->c:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .line 4082
    iget-object v1, p1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->extFields:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    .line 4083
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 18028
    iget-object v0, v0, Lfno;->c:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .line 4083
    iget-boolean v1, p1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->showInviteChannel:Z

    iput-boolean v1, v0, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->showInviteChannel:Z

    .line 4085
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 19028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 4085
    iget-object v1, p0, Lfno$1;->a:Lfno;

    .line 20028
    iget-object v1, v1, Lfno;->c:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .line 4085
    invoke-interface {v0, v1}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->a(Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;)V

    :cond_0
    :goto_0
    return-void

    .line 4087
    :cond_1
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 21028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 4087
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->a(Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 1028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 98
    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 2028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 99
    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->H_()V

    .line 100
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 3028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 100
    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lfno$1;->a:Lfno;

    .line 4028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 101
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->a(Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;)V

    .line 103
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 94
    return-void
.end method
