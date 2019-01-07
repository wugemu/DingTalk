.class public Lcom/alibaba/android/user/model/ExtContactFieldsObject;
.super Ljava/lang/Object;
.source "ExtContactFieldsObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

.field public extFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgExtFieldObject;",
            ">;"
        }
    .end annotation
.end field

.field public mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

.field public mobileField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

.field public nameField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

.field public remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

.field public showInviteChannel:Z

.field public titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

.field public workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdlModel(Lfot;)Lcom/alibaba/android/user/model/ExtContactFieldsObject;
    .locals 5
    .param p0, "model"    # Lfot;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/ExtContactFieldsObject;-><init>()V

    .line 32
    .local v0, "object":Lcom/alibaba/android/user/model/ExtContactFieldsObject;
    iget-object v2, p0, Lfot;->a:Lfph;

    invoke-static {v2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;->fromIdlModel(Lfph;)Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->nameField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 33
    iget-object v2, p0, Lfot;->b:Lfph;

    invoke-static {v2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;->fromIdlModel(Lfph;)Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mobileField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 34
    iget-object v2, p0, Lfot;->c:Lfph;

    invoke-static {v2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;->fromIdlModel(Lfph;)Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 35
    iget-object v2, p0, Lfot;->d:Lfph;

    invoke-static {v2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;->fromIdlModel(Lfph;)Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 36
    iget-object v2, p0, Lfot;->e:Lfph;

    invoke-static {v2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;->fromIdlModel(Lfph;)Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 37
    iget-object v2, p0, Lfot;->f:Lfph;

    invoke-static {v2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;->fromIdlModel(Lfph;)Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 38
    iget-object v2, p0, Lfot;->g:Lfph;

    invoke-static {v2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;->fromIdlModel(Lfph;)Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 40
    iget-object v2, p0, Lfot;->h:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->extFields:Ljava/util/List;

    .line 42
    iget-object v2, p0, Lfot;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfph;

    .line 43
    .local v1, "orgExtFieldModel":Lfph;
    if-eqz v1, :cond_1

    .line 44
    iget-object v3, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->extFields:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/user/model/OrgExtFieldObject;->fromIdlModel(Lfph;)Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    .end local v1    # "orgExtFieldModel":Lfph;
    :cond_2
    iget-object v2, p0, Lfot;->i:Ljava/lang/Boolean;

    .line 1022
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 49
    iput-boolean v2, v0, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->showInviteChannel:Z

    goto :goto_0
.end method
