.class public Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;
.super Ljava/lang/Object;
.source "ConfPullListObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cause:Ljava/lang/String;

.field public code:Ljava/lang/Integer;

.field public duration:Ljava/lang/Integer;

.field public status:Ljava/lang/Integer;

.field public text:Ljava/lang/String;

.field public userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;)Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;
    .locals 4
    .param p1, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 30
    if-nez p1, :cond_1

    .line 51
    :cond_0
    return-object p0

    .line 34
    :cond_1
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->code:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->code:Ljava/lang/Integer;

    .line 35
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->cause:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->cause:Ljava/lang/String;

    .line 36
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->duration:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->duration:Ljava/lang/Integer;

    .line 37
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->status:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->status:Ljava/lang/Integer;

    .line 38
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->text:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->text:Ljava/lang/String;

    .line 40
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->userList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->userList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->userList:Ljava/util/List;

    if-nez v2, :cond_2

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->userList:Ljava/util/List;

    .line 45
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->userList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 46
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;-><init>()V

    .line 47
    .local v1, "obj":Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->userList:Ljava/util/List;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->userList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;)Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 55
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;-><init>()V

    .line 56
    .local v1, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->code:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->code:Ljava/lang/Integer;

    .line 57
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->cause:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->cause:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->duration:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->duration:Ljava/lang/Integer;

    .line 59
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->status:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->status:Ljava/lang/Integer;

    .line 60
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->text:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->text:Ljava/lang/String;

    .line 62
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->userList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->userList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->userList:Ljava/util/List;

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->userList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 65
    iget-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->userList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/objects/ConfPullListObject;->userList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
