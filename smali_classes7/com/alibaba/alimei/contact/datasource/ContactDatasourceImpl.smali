.class public Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "ContactDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/contact/datasource/ContactDatasource;
.implements Lcom/alibaba/alimei/framework/datasource/IDatasource;


# static fields
.field private static final CONTACT_KEYWORD_MATCH_RANGE:Ljava/lang/String; = "( name LIKE ? OR email LIKE ? OR aliases LIKE ? OR nameInJianPin LIKE ? OR nameInPinyin LIKE ? ) "

.field private static final SQL_CONTACT_EXIST:Ljava/lang/String; = "accountKey=? AND contactType=? AND serverId=? AND deleted = 0"

.field private static final SQL_WHERE_RECORD:Ljava/lang/String; = "accountKey=? AND contactType=? AND serverId=?"

.field private static final TAG:Ljava/lang/String; = "ContactDatasourceImpl"

.field private static mMimeTypesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypesIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 791
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->sMimeTypesIdMap:Ljava/util/HashMap;

    .line 793
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->mMimeTypesMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    .line 62
    return-void
.end method

.method public static buildContactEntry(JILxu;Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;)Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    .locals 4
    .param p0, "accountId"    # J
    .param p2, "contactType"    # I
    .param p3, "invoker"    # Lxu;
    .param p4, "contactItem"    # Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;

    .prologue
    .line 922
    new-instance v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;-><init>()V

    .line 923
    .local v0, "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    iput-wide p0, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->accountKey:J

    .line 924
    iput p2, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->contactType:I

    .line 925
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->getItemId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->serverId:Ljava/lang/String;

    .line 926
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    .line 927
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->getEmail()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->email:Ljava/lang/String;

    .line 928
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->getAvatarAddr()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->avatarAddr:Ljava/lang/String;

    .line 929
    iget-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    invoke-interface {p3, v3}, Lxu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, "pinyin":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 931
    :cond_0
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->getNameInPinyin()Ljava/lang/String;

    move-result-object v2

    .line 934
    :cond_1
    iget-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    invoke-interface {p3, v3}, Lxu;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 935
    .local v1, "jianpin":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 936
    :cond_2
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->getNameInJianpin()Ljava/lang/String;

    move-result-object v1

    .line 937
    if-eqz v1, :cond_3

    .line 938
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 942
    :cond_3
    iput-object v2, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->nameInPinyin:Ljava/lang/String;

    .line 943
    iput-object v1, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->nameInJianpin:Ljava/lang/String;

    .line 944
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 945
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->sortKey:Ljava/lang/String;

    .line 948
    :cond_4
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->getFolderId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->folderId:Ljava/lang/String;

    .line 949
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->getMobile()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->mobile:Ljava/lang/String;

    .line 950
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->getRemark()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->remark:Ljava/lang/String;

    .line 951
    return-object v0
.end method

.method public static buildContactEntry(JLcom/alibaba/alimei/contact/model/ContactModel;)Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    .locals 6
    .param p0, "accountId"    # J
    .param p2, "contactModel"    # Lcom/alibaba/alimei/contact/model/ContactModel;

    .prologue
    .line 896
    new-instance v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;-><init>()V

    .line 897
    .local v0, "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    invoke-virtual {p2}, Lcom/alibaba/alimei/contact/model/ContactModel;->getId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    .line 898
    iput-wide p0, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->accountKey:J

    .line 899
    iget v3, p2, Lcom/alibaba/alimei/contact/model/ContactModel;->contactType:I

    if-nez v3, :cond_1

    .line 900
    const/16 v3, 0xe

    iput v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->contactType:I

    .line 903
    :goto_0
    iget-object v3, p2, Lcom/alibaba/alimei/contact/model/ContactModel;->serverId:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->serverId:Ljava/lang/String;

    .line 904
    iget-object v3, p2, Lcom/alibaba/alimei/contact/model/ContactModel;->name:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    .line 905
    iget-object v3, p2, Lcom/alibaba/alimei/contact/model/ContactModel;->email:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->email:Ljava/lang/String;

    .line 906
    iget-object v3, p2, Lcom/alibaba/alimei/contact/model/ContactModel;->avatarAddr:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->avatarAddr:Ljava/lang/String;

    .line 907
    invoke-static {}, Lxn;->e()Lxu;

    move-result-object v1

    .line 908
    .local v1, "invoker":Lxu;
    iget-object v3, p2, Lcom/alibaba/alimei/contact/model/ContactModel;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Lxu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 910
    .local v2, "pinyin":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 911
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->sortKey:Ljava/lang/String;

    .line 913
    :cond_0
    iput-object v2, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->nameInPinyin:Ljava/lang/String;

    .line 914
    iget-object v3, p2, Lcom/alibaba/alimei/contact/model/ContactModel;->mobile:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->mobile:Ljava/lang/String;

    .line 915
    iget-object v3, p2, Lcom/alibaba/alimei/contact/model/ContactModel;->remark:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->remark:Ljava/lang/String;

    .line 916
    iget v3, p2, Lcom/alibaba/alimei/contact/model/ContactModel;->dirty:I

    iput v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->dirty:I

    .line 917
    return-object v0

    .line 902
    .end local v1    # "invoker":Lxu;
    .end local v2    # "pinyin":Ljava/lang/String;
    :cond_1
    iget v3, p2, Lcom/alibaba/alimei/contact/model/ContactModel;->contactType:I

    iput v3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->contactType:I

    goto :goto_0
.end method

.method public static buildContactModel(Lcom/alibaba/alimei/contact/db/entry/ContactEntry;)Lcom/alibaba/alimei/contact/model/ContactModel;
    .locals 4
    .param p0, "entry"    # Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .prologue
    .line 963
    new-instance v0, Lcom/alibaba/alimei/contact/model/ContactModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/model/ContactModel;-><init>()V

    .line 964
    .local v0, "model":Lcom/alibaba/alimei/contact/model/ContactModel;
    iget-wide v2, p0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/contact/model/ContactModel;->setId(J)V

    .line 965
    iget v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->contactType:I

    iput v1, v0, Lcom/alibaba/alimei/contact/model/ContactModel;->contactType:I

    .line 966
    iget-object v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->serverId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/ContactModel;->serverId:Ljava/lang/String;

    .line 967
    iget-object v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/ContactModel;->name:Ljava/lang/String;

    .line 968
    iget-object v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/ContactModel;->email:Ljava/lang/String;

    .line 969
    iget-object v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->avatarAddr:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/ContactModel;->avatarAddr:Ljava/lang/String;

    .line 970
    iget-object v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->nameInPinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/ContactModel;->nameInPinyin:Ljava/lang/String;

    .line 971
    iget-object v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->nameInJianpin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/ContactModel;->nameInJianpin:Ljava/lang/String;

    .line 972
    iget-object v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->folderId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/ContactModel;->folderId:Ljava/lang/String;

    .line 973
    iget-object v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/ContactModel;->mobile:Ljava/lang/String;

    .line 974
    iget-object v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->remark:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/ContactModel;->remark:Ljava/lang/String;

    .line 975
    iget-object v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->sortKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/ContactModel;->sortKey:Ljava/lang/String;

    .line 976
    iget v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->dirty:I

    iput v1, v0, Lcom/alibaba/alimei/contact/model/ContactModel;->dirty:I

    .line 977
    return-object v0
.end method

.method public static buildExtendList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 990
    .local p0, "contactExtends":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;>;"
    const/4 v1, 0x0

    .line 991
    .local v1, "extendEntrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;>;"
    if-eqz p0, :cond_0

    .line 992
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "extendEntrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 993
    .restart local v1    # "extendEntrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;

    .line 994
    .local v0, "contactExtend":Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;
    new-instance v2, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;

    invoke-direct {v2}, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;-><init>()V

    .line 995
    .local v2, "ie":Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;->getFlag()I

    move-result v4

    iput v4, v2, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->flag:I

    .line 996
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->name:Ljava/lang/String;

    .line 997
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->value:Ljava/lang/String;

    .line 998
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1001
    .end local v0    # "contactExtend":Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;
    .end local v2    # "ie":Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;
    :cond_0
    return-object v1
.end method

.method public static buildExtendListByModel(Lcom/alibaba/alimei/contact/model/ContactModel;)Ljava/util/List;
    .locals 5
    .param p0, "model"    # Lcom/alibaba/alimei/contact/model/ContactModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1005
    const/4 v1, 0x0

    .line 1006
    .local v1, "extendEntrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;>;"
    if-eqz p0, :cond_0

    iget-object v3, p0, Lcom/alibaba/alimei/contact/model/ContactModel;->contactExtends:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1007
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "extendEntrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/contact/model/ContactModel;->contactExtends:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1008
    .restart local v1    # "extendEntrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/contact/model/ContactModel;->contactExtends:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/model/ContactExtendModel;

    .line 1009
    .local v0, "contactExtend":Lcom/alibaba/alimei/contact/model/ContactExtendModel;
    new-instance v2, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;

    invoke-direct {v2}, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;-><init>()V

    .line 1010
    .local v2, "ie":Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;
    iget v4, v0, Lcom/alibaba/alimei/contact/model/ContactExtendModel;->flag:I

    iput v4, v2, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->flag:I

    .line 1011
    iget-object v4, v0, Lcom/alibaba/alimei/contact/model/ContactExtendModel;->name:Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->name:Ljava/lang/String;

    .line 1012
    iget-object v4, v0, Lcom/alibaba/alimei/contact/model/ContactExtendModel;->value:Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->value:Ljava/lang/String;

    .line 1013
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1016
    .end local v0    # "contactExtend":Lcom/alibaba/alimei/contact/model/ContactExtendModel;
    .end local v2    # "ie":Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;
    :cond_0
    return-object v1
.end method

.method public static buildExtendModel(Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;)Lcom/alibaba/alimei/contact/model/ContactExtendModel;
    .locals 4
    .param p0, "entry"    # Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;

    .prologue
    .line 981
    new-instance v0, Lcom/alibaba/alimei/contact/model/ContactExtendModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/model/ContactExtendModel;-><init>()V

    .line 982
    .local v0, "model":Lcom/alibaba/alimei/contact/model/ContactExtendModel;
    iget-wide v2, p0, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->_id:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/contact/model/ContactExtendModel;->setId(J)V

    .line 983
    iget v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->flag:I

    iput v1, v0, Lcom/alibaba/alimei/contact/model/ContactExtendModel;->flag:I

    .line 984
    iget-object v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/ContactExtendModel;->name:Ljava/lang/String;

    .line 985
    iget-object v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/ContactExtendModel;->value:Ljava/lang/String;

    .line 986
    return-object v0
.end method

.method public static buildSearchContactModel(Lcom/alibaba/alimei/contact/db/entry/ContactEntry;)Lcom/alibaba/alimei/contact/model/SearchContactModel;
    .locals 2
    .param p0, "entry"    # Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .prologue
    .line 955
    new-instance v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/model/SearchContactModel;-><init>()V

    .line 956
    .local v0, "model":Lcom/alibaba/alimei/contact/model/SearchContactModel;
    iget-object v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->email:Ljava/lang/String;

    .line 957
    iget-object v1, p0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->name:Ljava/lang/String;

    .line 958
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->type:I

    .line 959
    return-object v0
.end method

.method public static deleteContact(JILjava/lang/String;)Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    .locals 10
    .param p0, "accountId"    # J
    .param p2, "contactType"    # I
    .param p3, "itemId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 839
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v4, "contacts2.db"

    const-string/jumbo v5, "contacts"

    invoke-direct {v1, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    .local v1, "contactSelect":Lcom/alibaba/alimei/orm/query/Select;
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    aput-object v4, v3, v8

    const-string/jumbo v4, "contactType"

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 841
    const-string/jumbo v3, "accountKey=? AND contactType=? AND serverId=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object p3, v4, v6

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 844
    .local v0, "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    if-eqz v0, :cond_0

    .line 846
    new-instance v2, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v3, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;

    const-string/jumbo v4, "contacts2.db"

    const-string/jumbo v5, "contact_extends"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    .local v2, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v3, "accountKey=?"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    const-string/jumbo v3, "contactKey=?"

    new-array v4, v9, [Ljava/lang/Object;

    iget-wide v6, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Delete;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    new-instance v2, Lcom/alibaba/alimei/orm/query/Delete;

    .end local v2    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-class v3, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v4, "contacts2.db"

    const-string/jumbo v5, "contacts"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    .restart local v2    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v3, "_id=?"

    new-array v4, v9, [Ljava/lang/Object;

    iget-wide v6, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 855
    .end local v2    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    :cond_0
    return-object v0
.end method

.method private deleteLocalContact(JJ)V
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "contactId"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 860
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;

    const-string/jumbo v2, "contacts2.db"

    const-string/jumbo v3, "contact_extends"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v1, "accountKey=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    const-string/jumbo v1, "contactKey=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    .end local v0    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-class v1, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v2, "contacts2.db"

    const-string/jumbo v3, "contacts"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    .restart local v0    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v1, "_id=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 868
    return-void
.end method

.method private getContactExtendsByContactId(JJ)Ljava/util/List;
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "contactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactExtendModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 376
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;

    const-string/jumbo v5, "contacts2.db"

    const-string/jumbo v6, "contact_extends"

    invoke-direct {v2, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .local v2, "extendSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v4, "accountKey=?"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string/jumbo v4, "contactKey=?"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 380
    .local v1, "extendEntrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;>;"
    if-eqz v1, :cond_0

    .line 381
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    .local v3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/model/ContactExtendModel;>;"
    if-eqz v1, :cond_1

    .line 383
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;

    .line 384
    .local v0, "entry":Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;
    invoke-static {v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->buildExtendModel(Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;)Lcom/alibaba/alimei/contact/model/ContactExtendModel;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    .end local v0    # "entry":Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;
    .end local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/model/ContactExtendModel;>;"
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3
.end method

.method public static declared-synchronized lookupMimeTypeById(J)Ljava/lang/String;
    .locals 8
    .param p0, "mimeTypeId"    # J

    .prologue
    .line 815
    const-class v4, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->mMimeTypesMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 816
    sget-object v3, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->mMimeTypesMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    :goto_0
    monitor-exit v4

    return-object v3

    .line 819
    :cond_0
    :try_start_1
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;

    const-string/jumbo v5, "contacts2.db"

    const-string/jumbo v6, "mimetypes"

    invoke-direct {v2, v3, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 821
    .local v1, "mimetypeses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/Mimetypes;>;"
    if-eqz v1, :cond_1

    .line 822
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;

    .line 823
    .local v0, "mimetypes":Lcom/alibaba/alimei/contact/db/entry/Mimetypes;
    sget-object v5, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->mMimeTypesMap:Ljava/util/HashMap;

    iget-wide v6, v0, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;->_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, v0, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;->mimetype:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 815
    .end local v0    # "mimetypes":Lcom/alibaba/alimei/contact/db/entry/Mimetypes;
    .end local v1    # "mimetypeses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/Mimetypes;>;"
    .end local v2    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 826
    .restart local v1    # "mimetypeses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/Mimetypes;>;"
    .restart local v2    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_1
    :try_start_2
    sget-object v3, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->mMimeTypesMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized lookupMimeTypeId(Ljava/lang/String;)J
    .locals 8
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 796
    const-class v4, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;

    monitor-enter v4

    :try_start_0
    sget-object v2, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->sMimeTypesIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 797
    sget-object v2, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->sMimeTypesIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 811
    :goto_0
    monitor-exit v4

    return-wide v2

    .line 800
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;

    const-string/jumbo v3, "contacts2.db"

    const-string/jumbo v5, "mimetypes"

    invoke-direct {v0, v2, v3, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 802
    const-string/jumbo v2, "mimetype=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;

    .line 804
    .local v1, "type":Lcom/alibaba/alimei/contact/db/entry/Mimetypes;
    if-eqz v1, :cond_1

    iget-wide v2, v1, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;->_id:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 805
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;

    .end local v1    # "type":Lcom/alibaba/alimei/contact/db/entry/Mimetypes;
    invoke-direct {v1}, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;-><init>()V

    .line 806
    .restart local v1    # "type":Lcom/alibaba/alimei/contact/db/entry/Mimetypes;
    iput-object p0, v1, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;->mimetype:Ljava/lang/String;

    .line 807
    invoke-virtual {v1}, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;->save()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;->_id:J

    .line 810
    :cond_2
    sget-object v2, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->sMimeTypesIdMap:Ljava/util/HashMap;

    iget-wide v6, v1, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;->_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    iget-wide v2, v1, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;->_id:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 796
    .end local v0    # "select":Lcom/alibaba/alimei/orm/query/Select;
    .end local v1    # "type":Lcom/alibaba/alimei/contact/db/entry/Mimetypes;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method private replaceContactEntry(Lcom/alibaba/alimei/orm/query/Update;Lcom/alibaba/alimei/contact/db/entry/ContactEntry;Ljava/util/List;)J
    .locals 2
    .param p1, "update"    # Lcom/alibaba/alimei/orm/query/Update;
    .param p2, "contactEntry"    # Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/orm/query/Update;",
            "Lcom/alibaba/alimei/contact/db/entry/ContactEntry;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;",
            ">;)J"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 125
    .local p3, "extendEntrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->replaceContactEntry(Lcom/alibaba/alimei/orm/query/Update;Lcom/alibaba/alimei/contact/db/entry/ContactEntry;Ljava/util/List;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private replaceContactEntry(Lcom/alibaba/alimei/orm/query/Update;Lcom/alibaba/alimei/contact/db/entry/ContactEntry;Ljava/util/List;Z)J
    .locals 10
    .param p1, "update"    # Lcom/alibaba/alimei/orm/query/Update;
    .param p2, "contactEntry"    # Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    .param p4, "convertMimeType"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/orm/query/Update;",
            "Lcom/alibaba/alimei/contact/db/entry/ContactEntry;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;",
            ">;Z)J"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "extendEntrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 137
    iget-wide v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 138
    invoke-virtual {p2}, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->save()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    .line 181
    :goto_0
    if-eqz p3, :cond_1

    .line 182
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;

    .line 183
    .local v0, "entry":Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;
    iget-wide v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->accountKey:J

    iput-wide v4, v0, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->accountKey:J

    .line 184
    iget-wide v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    iput-wide v4, v0, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->contactKey:J

    .line 186
    if-eqz p4, :cond_0

    .line 187
    iget v4, v0, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->flag:I

    iget-object v5, v0, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alibaba/alimei/contact/db/ContactApiDataContract$ContactExt;->getKeyByFlag(ILjava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->name:Ljava/lang/String;

    .line 188
    iget v4, v0, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->flag:I

    invoke-static {v4}, Lcom/alibaba/alimei/contact/db/ContactApiDataContract$ContactExt;->getMimeTypeByFlag(I)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v0, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->flag:I

    .line 190
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->save()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 193
    .end local v0    # "entry":Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;
    :catch_0
    move-exception v2

    .line 195
    .local v2, "tr":Ljava/lang/Throwable;
    const-string/jumbo v3, "ContactDatasourceImpl"

    const-string/jumbo v4, "add contact entendEntry fail"

    invoke-static {v3, v4, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v2    # "tr":Ljava/lang/Throwable;
    :cond_1
    iget-wide v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    return-wide v4

    .line 140
    :cond_2
    if-nez p1, :cond_3

    .line 141
    new-instance p1, Lcom/alibaba/alimei/orm/query/Update;

    .end local p1    # "update":Lcom/alibaba/alimei/orm/query/Update;
    const-class v3, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v4, "contacts2.db"

    const-string/jumbo v5, "contacts"

    invoke-direct {p1, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .restart local p1    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 144
    const-string/jumbo v3, "name"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    const-string/jumbo v3, "email"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->email:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    const-string/jumbo v3, "avatarAddr"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->avatarAddr:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string/jumbo v3, "nameInPinyin"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->nameInPinyin:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    const-string/jumbo v3, "nameInJianPin"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->nameInJianpin:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string/jumbo v3, "sortKey"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->sortKey:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string/jumbo v3, "folderId"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->folderId:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    const-string/jumbo v3, "mobile"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->mobile:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    const-string/jumbo v3, "remark"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->remark:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    const-string/jumbo v3, "dirty"

    iget v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->dirty:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const-string/jumbo v3, "def_sender_mail"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->defSendMail:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string/jumbo v3, "def_sender_name"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->defSendName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    const-string/jumbo v3, "popaccounts"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->popAccounts:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    const-string/jumbo v3, "smtpaccounts"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->smtpAccounts:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    const-string/jumbo v3, "aliases"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->aliases:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    const-string/jumbo v3, "serverId"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->serverId:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    const-string/jumbo v3, "extend"

    iget-object v4, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->extend:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const-string/jumbo v3, "_id=?"

    new-array v4, v9, [Ljava/lang/Object;

    iget-wide v6, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {p1}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 167
    :try_start_1
    new-instance v1, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v3, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;

    const-string/jumbo v4, "contacts2.db"

    const-string/jumbo v5, "contact_extends"

    invoke-direct {v1, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v1, "extendsDelete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v3, "accountKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->accountKey:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v3, "contactKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Delete;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 172
    .end local v1    # "extendsDelete":Lcom/alibaba/alimei/orm/query/Delete;
    :catch_1
    move-exception v2

    .line 174
    .restart local v2    # "tr":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 175
    const-string/jumbo v3, "ContactDatasourceImpl"

    const-string/jumbo v4, "delete contact entend table fail"

    invoke-static {v3, v4, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public addBlackUser(JLjava/lang/String;)Z
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    .line 770
    const/4 v1, 0x0

    .line 771
    .local v1, "isSuccess":Z
    if-eqz p3, :cond_0

    .line 772
    new-instance v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;-><init>()V

    .line 773
    .local v0, "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    iput-object p3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->email:Ljava/lang/String;

    .line 774
    iput-object p3, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    .line 775
    iput-wide p1, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->accountKey:J

    .line 776
    const/16 v2, 0x10

    iput v2, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->contactType:I

    .line 777
    invoke-virtual {v0}, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->save()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 779
    .end local v0    # "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    :cond_0
    :goto_0
    return v1

    .line 777
    .restart local v0    # "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteAllBlackUser(J)V
    .locals 7
    .param p1, "accountId"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 346
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v2, "contacts2.db"

    const-string/jumbo v3, "contacts"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v1, "accountKey=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string/jumbo v1, "contactType=?"

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 350
    return-void
.end method

.method public deleteBlackUser(JLjava/lang/String;)V
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 784
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v2, "contacts2.db"

    const-string/jumbo v3, "contacts"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v1, "accountKey=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    const-string/jumbo v1, "email=?"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-string/jumbo v1, "contactType=?"

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 789
    return-void
.end method

.method public deleteContact(J)Z
    .locals 7
    .param p1, "contactId"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 748
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v3, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v4, "contacts2.db"

    const-string/jumbo v5, "contacts"

    invoke-direct {v0, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 750
    const-string/jumbo v3, "dirty"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 751
    const-string/jumbo v3, "deleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 752
    const-string/jumbo v3, "_id=?"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1021
    const-string/jumbo v0, "contacts2.db"

    return-object v0
.end method

.method public handleSyncBlackContactResult(JLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;)V
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "contactResult"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;

    .prologue
    .line 329
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 342
    :cond_0
    return-void

    .line 334
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->deleteAllBlackUser(J)V

    .line 336
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncBlackContactResult;->getBlackContacts()Ljava/util/List;

    move-result-object v1

    .line 337
    .local v1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;>;"
    if-eqz v1, :cond_0

    .line 338
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;

    .line 339
    .local v0, "contact":Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->addBlackUser(JLjava/lang/String;)Z

    goto :goto_0
.end method

.method public handleSyncContactResult(JLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncContactResult;)V
    .locals 19
    .param p1, "accountId"    # J
    .param p3, "contactResult"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncContactResult;

    .prologue
    .line 74
    new-instance v10, Lcom/alibaba/alimei/contact/model/ContactModelGroup;

    invoke-direct {v10}, Lcom/alibaba/alimei/contact/model/ContactModelGroup;-><init>()V

    .line 76
    .local v10, "group":Lcom/alibaba/alimei/contact/model/ContactModelGroup;
    new-instance v12, Lcom/alibaba/alimei/orm/query/Select;

    const-class v13, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v14, "contacts2.db"

    const-string/jumbo v15, "contacts"

    invoke-direct {v12, v13, v14, v15}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v12, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v13, "_id"

    invoke-virtual {v12, v13}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 79
    new-instance v6, Lcom/alibaba/alimei/orm/query/Update;

    const-class v13, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v14, "contacts2.db"

    const-string/jumbo v15, "contacts"

    invoke-direct {v6, v13, v14, v15}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v6, "contactUpdate":Lcom/alibaba/alimei/orm/query/Update;
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncContactResult;->getDeleteContacts()Ljava/util/List;

    move-result-object v8

    .line 83
    .local v8, "deleteContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_1

    .line 84
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;

    .line 85
    .local v3, "contactItem":Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;
    const/16 v14, 0xe

    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->getItemId()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v14, v15}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->deleteContact(JILjava/lang/String;)Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    move-result-object v2

    .line 86
    .local v2, "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    if-eqz v2, :cond_0

    .line 87
    invoke-static {v2}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->buildContactModel(Lcom/alibaba/alimei/contact/db/entry/ContactEntry;)Lcom/alibaba/alimei/contact/model/ContactModel;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->addDeletedContact(Lcom/alibaba/alimei/contact/model/ContactModel;)V

    goto :goto_0

    .line 92
    .end local v2    # "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    .end local v3    # "contactItem":Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;
    :cond_1
    invoke-static {}, Lxn;->e()Lxu;

    move-result-object v11

    .line 96
    .local v11, "invoker":Lxu;
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncContactResult;->getContacts()Ljava/util/List;

    move-result-object v7

    .line 97
    .local v7, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 98
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;

    .line 100
    .restart local v3    # "contactItem":Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->getAction()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_3

    .line 101
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->getAction()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_3

    .line 122
    .end local v3    # "contactItem":Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;
    :cond_2
    return-void

    .line 106
    .restart local v3    # "contactItem":Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;
    :cond_3
    invoke-virtual {v12}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 107
    const-string/jumbo v14, "accountKey=? AND contactType=? AND serverId=? AND deleted = 0"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0xe

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->getItemId()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v14, v15}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {v12}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 109
    .restart local v2    # "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    const-wide/16 v4, -0x1

    .line 110
    .local v4, "contactId":J
    if-eqz v2, :cond_4

    .line 111
    iget-wide v4, v2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    .line 113
    :cond_4
    const/16 v14, 0xe

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v14, v11, v3}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->buildContactEntry(JILxu;Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;)Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    move-result-object v2

    .line 114
    iput-wide v4, v2, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    .line 116
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->getExtend()Ljava/util/List;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->buildExtendList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 119
    .local v9, "extendEntrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v9}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->replaceContactEntry(Lcom/alibaba/alimei/orm/query/Update;Lcom/alibaba/alimei/contact/db/entry/ContactEntry;Ljava/util/List;)J

    goto :goto_1
.end method

.method public handleSyncRecentedContactResult(JLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;)V
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "contactResult"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;

    .prologue
    .line 283
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->getCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 324
    :cond_0
    return-void

    .line 288
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->getDeleteRecentedContacts()Ljava/util/List;

    move-result-object v3

    .line 289
    .local v3, "deleteContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 290
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;

    .line 291
    .local v2, "contactItem":Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;
    const/16 v8, 0xf

    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;->getItemId()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, p2, v8, v9}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->deleteContact(JILjava/lang/String;)Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    goto :goto_0

    .line 295
    .end local v2    # "contactItem":Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;
    :cond_2
    new-instance v6, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v8, "contacts2.db"

    const-string/jumbo v9, "contacts"

    invoke-direct {v6, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .local v6, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v7, "_id"

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncRecentedContactResult;->getRecentedContacts()Ljava/util/List;

    move-result-object v5

    .line 299
    .local v5, "recentedContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;>;"
    if-eqz v5, :cond_0

    .line 300
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;

    .line 301
    .local v4, "recentContact":Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;
    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;->getAction()I

    move-result v0

    .line 303
    .local v0, "action":I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_4

    const/4 v8, 0x2

    if-ne v0, v8, :cond_3

    .line 308
    :cond_4
    const-string/jumbo v8, "accountKey=? AND contactType=? AND serverId=? AND deleted = 0"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0xf

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;->getItemId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 311
    .local v1, "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    if-nez v1, :cond_5

    .line 312
    new-instance v1, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .end local v1    # "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    invoke-direct {v1}, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;-><init>()V

    .line 313
    .restart local v1    # "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    const-wide/16 v8, -0x1

    iput-wide v8, v1, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    .line 315
    :cond_5
    iput-wide p1, v1, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->accountKey:J

    .line 316
    const/16 v8, 0xf

    iput v8, v1, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->contactType:I

    .line 317
    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;->getItemId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->serverId:Ljava/lang/String;

    .line 318
    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    .line 319
    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/data/contact/RecentedContact;->getEmail()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->email:Ljava/lang/String;

    .line 321
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v8, v1, v9}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->replaceContactEntry(Lcom/alibaba/alimei/orm/query/Update;Lcom/alibaba/alimei/contact/db/entry/ContactEntry;Ljava/util/List;)J

    goto :goto_1
.end method

.method public handleSyncUserSelfContact(JLcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;)V
    .locals 23
    .param p1, "accountId"    # J
    .param p3, "contact"    # Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;

    .prologue
    .line 205
    new-instance v14, Lcom/alibaba/alimei/orm/query/Select;

    const-class v18, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v19, "contacts2.db"

    const-string/jumbo v20, "contacts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .local v14, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v18, "_id"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 207
    const-string/jumbo v18, "accountKey=? AND contactType=? AND serverId=? AND deleted = 0"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x11

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->getItemId()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 210
    .local v6, "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    if-nez v6, :cond_0

    .line 211
    new-instance v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .end local v6    # "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    invoke-direct {v6}, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;-><init>()V

    .line 212
    .restart local v6    # "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    iput-wide v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    .line 214
    :cond_0
    move-wide/from16 v0, p1

    iput-wide v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->accountKey:J

    .line 215
    const/16 v18, 0x11

    move/from16 v0, v18

    iput v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->contactType:I

    .line 216
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->getItemId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->serverId:Ljava/lang/String;

    .line 217
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->getExtend()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->getExtend()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1

    .line 218
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->getExtend()Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->extend:Ljava/lang/String;

    .line 221
    :cond_1
    const-string/jumbo v4, ""

    .line 222
    .local v4, "aliasName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->getAliases()Ljava/util/List;

    move-result-object v5

    .line 223
    .local v5, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_3

    .line 224
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v11, "sbAliasEmail":Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    .line 227
    .local v15, "size":I
    const/4 v8, 0x1

    .local v8, "k":I
    :goto_0
    if-ge v8, v15, :cond_2

    .line 228
    const-string/jumbo v18, ";"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    .end local v8    # "k":I
    .end local v11    # "sbAliasEmail":Ljava/lang/StringBuilder;
    .end local v15    # "size":I
    :cond_3
    const-string/jumbo v9, ""

    .line 234
    .local v9, "popAccountStr":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->getPopAccounts()Ljava/util/List;

    move-result-object v10

    .line 235
    .local v10, "popAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;>;"
    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_5

    .line 236
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v12, "sbPopAccounts":Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;->getPopAccount()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    .line 239
    .restart local v15    # "size":I
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_1
    if-ge v7, v15, :cond_4

    .line 240
    const-string/jumbo v18, ";"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;->getPopAccount()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 243
    :cond_4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 247
    .end local v7    # "j":I
    .end local v12    # "sbPopAccounts":Ljava/lang/StringBuilder;
    .end local v15    # "size":I
    :cond_5
    const-string/jumbo v16, ""

    .line 248
    .local v16, "smtpAccountStr":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->getSmtpAccount()Ljava/util/List;

    move-result-object v17

    .line 249
    .local v17, "smtpAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;>;"
    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_7

    .line 250
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v13, "sbSmtpAccounts":Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;->getSmtpAccounts()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v15

    .line 253
    .restart local v15    # "size":I
    const/4 v7, 0x1

    .restart local v7    # "j":I
    :goto_2
    if-ge v7, v15, :cond_6

    .line 254
    const-string/jumbo v18, ";"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;->getSmtpAccounts()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 257
    :cond_6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 260
    .end local v7    # "j":I
    .end local v13    # "sbSmtpAccounts":Ljava/lang/StringBuilder;
    .end local v15    # "size":I
    :cond_7
    move-object/from16 v0, v16

    iput-object v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->smtpAccounts:Ljava/lang/String;

    .line 261
    iput-object v9, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->popAccounts:Ljava/lang/String;

    .line 262
    iput-object v4, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->aliases:Ljava/lang/String;

    .line 263
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    .line 264
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->getEmail()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->email:Ljava/lang/String;

    .line 265
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->getAvatarAddr()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->avatarAddr:Ljava/lang/String;

    .line 266
    iget-object v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    iget-object v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_9

    .line 267
    :cond_8
    iget-object v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->email:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    .line 269
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->getDefaultSendEmail()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 270
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->getDefaultSendEmail()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->defSendMail:Ljava/lang/String;

    .line 273
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->getDefaultName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 274
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->getDefaultName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->defSendName:Ljava/lang/String;

    .line 276
    :cond_b
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->replaceContactEntry(Lcom/alibaba/alimei/orm/query/Update;Lcom/alibaba/alimei/contact/db/entry/ContactEntry;Ljava/util/List;)J

    .line 277
    return-void
.end method

.method public isBlackUser(JLjava/util/List;)Z
    .locals 7
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 758
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 765
    :cond_1
    :goto_0
    return v2

    .line 760
    :cond_2
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v5, "contacts2.db"

    const-string/jumbo v6, "contacts"

    invoke-direct {v1, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    .local v1, "contactSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v4, "accountKey=?"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const-string/jumbo v4, "email"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p3, v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    const-string/jumbo v4, "contactType=?"

    new-array v5, v2, [Ljava/lang/Object;

    const/16 v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 765
    .local v0, "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    if-nez v0, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method public queryAllBlackContacts(J)Ljava/util/List;
    .locals 11
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/BlackContactModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 443
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v6, "contacts2.db"

    const-string/jumbo v7, "contacts"

    invoke-direct {v1, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .local v1, "contactSelect":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "_id"

    aput-object v6, v5, v8

    const-string/jumbo v6, "serverId"

    aput-object v6, v5, v9

    const/4 v6, 0x2

    const-string/jumbo v7, "email"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "name"

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 445
    const-string/jumbo v5, "accountKey=?"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string/jumbo v5, "contactType=?"

    new-array v6, v9, [Ljava/lang/Object;

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string/jumbo v5, "deleted=?"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v3, "contactsModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/contact/model/BlackContactModel;>;"
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v2

    .line 452
    .local v2, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactEntry;>;"
    if-eqz v2, :cond_0

    .line 453
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 454
    .local v0, "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    new-instance v4, Lcom/alibaba/alimei/contact/model/BlackContactModel;

    invoke-direct {v4}, Lcom/alibaba/alimei/contact/model/BlackContactModel;-><init>()V

    .line 455
    .local v4, "model":Lcom/alibaba/alimei/contact/model/BlackContactModel;
    iget-object v6, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->email:Ljava/lang/String;

    iput-object v6, v4, Lcom/alibaba/alimei/contact/model/BlackContactModel;->email:Ljava/lang/String;

    .line 456
    iget-object v6, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->serverId:Ljava/lang/String;

    iput-object v6, v4, Lcom/alibaba/alimei/contact/model/BlackContactModel;->serverId:Ljava/lang/String;

    .line 457
    iget-object v6, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    iput-object v6, v4, Lcom/alibaba/alimei/contact/model/BlackContactModel;->name:Ljava/lang/String;

    .line 458
    iget-wide v6, v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/contact/model/BlackContactModel;->setId(J)V

    .line 459
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 462
    .end local v0    # "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    .end local v4    # "model":Lcom/alibaba/alimei/contact/model/BlackContactModel;
    :cond_0
    return-object v3
.end method

.method public queryAllContacts(J)Ljava/util/List;
    .locals 11
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 394
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v6, "contacts2.db"

    const-string/jumbo v7, "contacts"

    invoke-direct {v1, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .local v1, "contactSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "accountKey=?"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string/jumbo v5, "contactType=?"

    new-array v6, v9, [Ljava/lang/Object;

    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string/jumbo v5, "deleted=?"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string/jumbo v5, "nameInPinyin ASC "

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 400
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v2

    .line 401
    .local v2, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactEntry;>;"
    if-eqz v2, :cond_0

    .line 402
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 403
    .local v4, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 404
    .local v0, "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    invoke-static {v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->buildContactModel(Lcom/alibaba/alimei/contact/db/entry/ContactEntry;)Lcom/alibaba/alimei/contact/model/ContactModel;

    move-result-object v3

    .line 405
    .local v3, "model":Lcom/alibaba/alimei/contact/model/ContactModel;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    .end local v0    # "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    .end local v3    # "model":Lcom/alibaba/alimei/contact/model/ContactModel;
    .end local v4    # "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    return-object v4
.end method

.method public queryAllEmailContacts(J)Ljava/util/List;
    .locals 15
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    const-class v10, Lcom/alibaba/alimei/contact/db/views/ViewContactExtent;

    const-string/jumbo v11, "contacts2.db"

    invoke-static {v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->newViewSelect(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    move-result-object v1

    .line 468
    .local v1, "contactDetailSelect":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "_id"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "contact_id"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "mimeTypeValue"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "name"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "sortKey"

    aput-object v12, v10, v11

    invoke-virtual {v1, v10}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 469
    const-string/jumbo v10, "accountKey=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string/jumbo v10, "contactType=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0xe

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string/jumbo v10, "mimetype=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "vnd.android.cursor.item/email_v2"

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string/jumbo v10, "deleted=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string/jumbo v10, "sortKey ASC"

    invoke-virtual {v1, v10}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 475
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v2

    .line 477
    .local v2, "contactExtents":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/views/ViewContactExtent;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v9, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 480
    .local v4, "contactKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lcom/alibaba/alimei/contact/model/ContactModel;>;>;"
    if-eqz v2, :cond_2

    .line 481
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/db/views/ViewContactExtent;

    .line 482
    .local v0, "contact":Lcom/alibaba/alimei/contact/db/views/ViewContactExtent;
    new-instance v7, Lcom/alibaba/alimei/contact/model/ContactModel;

    invoke-direct {v7}, Lcom/alibaba/alimei/contact/model/ContactModel;-><init>()V

    .line 483
    .local v7, "detailModel":Lcom/alibaba/alimei/contact/model/ContactModel;
    iget-object v11, v0, Lcom/alibaba/alimei/contact/db/views/ViewContactExtent;->name:Ljava/lang/String;

    iput-object v11, v7, Lcom/alibaba/alimei/contact/model/ContactModel;->name:Ljava/lang/String;

    .line 484
    iget-object v11, v0, Lcom/alibaba/alimei/contact/db/views/ViewContactExtent;->mimeTypeValue:Ljava/lang/String;

    iput-object v11, v7, Lcom/alibaba/alimei/contact/model/ContactModel;->email:Ljava/lang/String;

    .line 485
    iget-object v11, v0, Lcom/alibaba/alimei/contact/db/views/ViewContactExtent;->sortKey:Ljava/lang/String;

    iput-object v11, v7, Lcom/alibaba/alimei/contact/model/ContactModel;->sortKey:Ljava/lang/String;

    .line 486
    iget-wide v12, v0, Lcom/alibaba/alimei/contact/db/views/ViewContactExtent;->contact_id:J

    invoke-virtual {v7, v12, v13}, Lcom/alibaba/alimei/contact/model/ContactModel;->setId(J)V

    .line 487
    invoke-virtual {v7}, Lcom/alibaba/alimei/contact/model/ContactModel;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 488
    invoke-virtual {v7}, Lcom/alibaba/alimei/contact/model/ContactModel;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 489
    .local v3, "contactItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_0
    invoke-virtual {v7}, Lcom/alibaba/alimei/contact/model/ContactModel;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 493
    .end local v3    # "contactItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .restart local v3    # "contactItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-virtual {v7}, Lcom/alibaba/alimei/contact/model/ContactModel;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 500
    .end local v0    # "contact":Lcom/alibaba/alimei/contact/db/views/ViewContactExtent;
    .end local v3    # "contactItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    .end local v7    # "detailModel":Lcom/alibaba/alimei/contact/model/ContactModel;
    :cond_2
    new-instance v5, Lcom/alibaba/alimei/orm/query/Select;

    const-class v10, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v11, "contacts2.db"

    const-string/jumbo v12, "contacts"

    invoke-direct {v5, v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .local v5, "contactSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v10, "accountKey=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v5, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string/jumbo v10, "contactType=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0xe

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v5, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string/jumbo v10, "nameInPinyin ASC "

    invoke-virtual {v5, v10}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 505
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v6

    .line 507
    .local v6, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactEntry;>;"
    if-eqz v6, :cond_4

    .line 508
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 509
    .local v0, "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    invoke-static {v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->buildContactModel(Lcom/alibaba/alimei/contact/db/entry/ContactEntry;)Lcom/alibaba/alimei/contact/model/ContactModel;

    move-result-object v8

    .line 510
    .local v8, "model":Lcom/alibaba/alimei/contact/model/ContactModel;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-virtual {v8}, Lcom/alibaba/alimei/contact/model/ContactModel;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 512
    invoke-virtual {v8}, Lcom/alibaba/alimei/contact/model/ContactModel;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 517
    .end local v0    # "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    .end local v8    # "model":Lcom/alibaba/alimei/contact/model/ContactModel;
    :cond_4
    return-object v9
.end method

.method public queryCallLog()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/CallLogModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1026
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/contact/db/entry/CallLog;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "callLog"

    invoke-direct {v3, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    .local v3, "callLogSelect":Lcom/alibaba/alimei/orm/query/Select;
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 1028
    .local v1, "callLogList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/CallLog;>;"
    if-nez v1, :cond_1

    .line 1029
    const/4 v2, 0x0

    .line 1038
    :cond_0
    return-object v2

    .line 1032
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    .local v2, "callLogModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/model/CallLogModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/db/entry/CallLog;

    .line 1034
    .local v0, "callLog":Lcom/alibaba/alimei/contact/db/entry/CallLog;
    new-instance v4, Lcom/alibaba/alimei/contact/model/CallLogModel;

    invoke-direct {v4, v0}, Lcom/alibaba/alimei/contact/model/CallLogModel;-><init>(Lcom/alibaba/alimei/contact/db/entry/CallLog;)V

    .line 1035
    .local v4, "model":Lcom/alibaba/alimei/contact/model/CallLogModel;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public queryContact(JJ)Lcom/alibaba/alimei/contact/model/ContactModel;
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "id"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 354
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v4, "contacts2.db"

    const-string/jumbo v5, "contacts"

    invoke-direct {v1, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .local v1, "contactSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "accountKey=?"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string/jumbo v3, "contactType=?"

    new-array v4, v7, [Ljava/lang/Object;

    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string/jumbo v3, "_id=?"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string/jumbo v3, "deleted=?"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 361
    .local v0, "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    if-eqz v0, :cond_0

    .line 362
    invoke-static {v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->buildContactModel(Lcom/alibaba/alimei/contact/db/entry/ContactEntry;)Lcom/alibaba/alimei/contact/model/ContactModel;

    move-result-object v2

    .line 363
    .local v2, "model":Lcom/alibaba/alimei/contact/model/ContactModel;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->getContactExtendsByContactId(JJ)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/alimei/contact/model/ContactModel;->contactExtends:Ljava/util/List;

    .line 366
    .end local v2    # "model":Lcom/alibaba/alimei/contact/model/ContactModel;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public queryContact(JLjava/lang/String;)Lcom/alibaba/alimei/contact/model/ContactModel;
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    .line 522
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v8, "contacts2.db"

    const-string/jumbo v9, "contacts"

    invoke-direct {v4, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .local v4, "contactSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v7, "accountKey=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string/jumbo v7, "contactType=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0xe

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string/jumbo v7, "deleted=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string/jumbo v7, "email=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p3, v8, v9

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 529
    .local v0, "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    if-eqz v0, :cond_1

    .line 530
    invoke-static {v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->buildContactModel(Lcom/alibaba/alimei/contact/db/entry/ContactEntry;)Lcom/alibaba/alimei/contact/model/ContactModel;

    move-result-object v5

    .line 531
    .local v5, "model":Lcom/alibaba/alimei/contact/model/ContactModel;
    if-eqz v5, :cond_0

    .line 532
    invoke-virtual {v5}, Lcom/alibaba/alimei/contact/model/ContactModel;->getId()J

    move-result-wide v8

    invoke-direct {p0, p1, p2, v8, v9}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->getContactExtendsByContactId(JJ)Ljava/util/List;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/alimei/contact/model/ContactModel;->contactExtends:Ljava/util/List;

    .line 550
    .end local v5    # "model":Lcom/alibaba/alimei/contact/model/ContactModel;
    :cond_0
    :goto_0
    return-object v5

    .line 536
    :cond_1
    const-class v7, Lcom/alibaba/alimei/contact/db/views/ViewContactExtent;

    const-string/jumbo v8, "contacts2.db"

    invoke-static {v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->newViewSelect(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    move-result-object v1

    .line 537
    .local v1, "contactDetailSelect":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "contact_id"

    aput-object v9, v7, v8

    invoke-virtual {v1, v7}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 538
    const-string/jumbo v7, "accountKey=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string/jumbo v7, "contactType=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0xe

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string/jumbo v7, "mimetype=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "vnd.android.cursor.item/email_v2"

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string/jumbo v7, "deleted=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string/jumbo v7, "mimeTypeValue=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p3, v8, v9

    invoke-virtual {v1, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/contact/db/views/ViewContactExtent;

    .line 544
    .local v6, "viewContactExtent":Lcom/alibaba/alimei/contact/db/views/ViewContactExtent;
    if-eqz v6, :cond_2

    .line 545
    iget-wide v2, v6, Lcom/alibaba/alimei/contact/db/views/ViewContactExtent;->contact_id:J

    .line 546
    .local v2, "contactId":J
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->queryContact(JJ)Lcom/alibaba/alimei/contact/model/ContactModel;

    move-result-object v5

    goto :goto_0

    .line 550
    .end local v2    # "contactId":J
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public queryDirtyContacts(JLjava/util/HashMap;)Ljava/util/List;
    .locals 29
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    .local p3, "contactIdKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    new-instance v13, Lcom/alibaba/alimei/orm/query/Select;

    const-class v23, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v24, "contacts2.db"

    const-string/jumbo v25, "contacts"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v13, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    .local v13, "contactSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v23, "accountKey=?"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string/jumbo v23, "dirty=?"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v15, "contactsModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;>;"
    if-nez p3, :cond_0

    .line 574
    new-instance p3, Ljava/util/HashMap;

    .end local p3    # "contactIdKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-direct/range {p3 .. p3}, Ljava/util/HashMap;-><init>()V

    .line 576
    .restart local p3    # "contactIdKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_0
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v14

    .line 577
    .local v14, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactEntry;>;"
    if-eqz v14, :cond_a

    .line 578
    const/16 v18, 0x0

    .line 579
    .local v18, "index":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 580
    .local v5, "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    iget-object v0, v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->serverId:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 581
    .local v22, "sourceId":Ljava/lang/String;
    iget v0, v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->deletedFlag:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    const/16 v20, 0x1

    .line 582
    .local v20, "isDeleted":Z
    :goto_1
    iget-wide v10, v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    .line 583
    .local v10, "contactId":J
    const/4 v4, 0x0

    .line 584
    .local v4, "action":I
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 585
    const/16 v22, 0x0

    .line 587
    if-eqz v20, :cond_4

    .line 589
    iget v0, v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->contactType:I

    move/from16 v24, v0

    const/16 v25, 0xe

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 590
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->deleteLocalContact(JJ)V

    goto :goto_0

    .line 581
    .end local v4    # "action":I
    .end local v10    # "contactId":J
    .end local v20    # "isDeleted":Z
    :cond_1
    const/16 v20, 0x0

    goto :goto_1

    .line 592
    .restart local v4    # "action":I
    .restart local v10    # "contactId":J
    .restart local v20    # "isDeleted":Z
    :cond_2
    iget v0, v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->contactType:I

    move/from16 v24, v0

    const/16 v25, 0x10

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 593
    const-wide/16 p1, 0x3

    .line 616
    :cond_3
    :goto_2
    new-instance v9, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;

    invoke-direct {v9}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;-><init>()V

    .line 617
    .local v9, "contactItem":Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;
    invoke-virtual {v9, v4}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->setAction(I)V

    .line 618
    iget-object v0, v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->setName(Ljava/lang/String;)V

    .line 619
    iget-object v0, v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->email:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->setEmail(Ljava/lang/String;)V

    .line 620
    iget-object v0, v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->mobile:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->setMobile(Ljava/lang/String;)V

    .line 621
    iget-object v0, v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->remark:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->setRemark(Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->setItemId(Ljava/lang/String;)V

    .line 623
    iget v0, v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->contactType:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->setFolderType(I)V

    .line 625
    new-instance v7, Lcom/alibaba/alimei/orm/query/Select;

    const-class v24, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;

    const-string/jumbo v25, "contacts2.db"

    const-string/jumbo v26, "contact_extends"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v7, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .local v7, "contactExtendSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v24, "accountKey=?"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string/jumbo v24, "contactKey=?"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v8

    .line 630
    .local v8, "contactExtends":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;>;"
    if-eqz v8, :cond_9

    .line 631
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v16, "extend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;

    .line 633
    .local v6, "contactExtendEntry":Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;
    new-instance v12, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;

    invoke-direct {v12}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;-><init>()V

    .line 635
    .local v12, "contactItemExtend":Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;
    iget v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->flag:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->lookupMimeTypeById(J)Ljava/lang/String;

    move-result-object v21

    .line 636
    .local v21, "mimeType":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/alibaba/alimei/contact/db/ContactApiDataContract$ContactExt;->getFlag(Ljava/lang/String;)I

    move-result v17

    .line 637
    .local v17, "flag":I
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;->setFlag(I)V

    .line 638
    iget-object v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v17

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/alibaba/alimei/contact/db/ContactApiDataContract$ContactExt;->getApiType(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;->setName(Ljava/lang/String;)V

    .line 639
    iget-object v0, v6, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;->value:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;->setValue(Ljava/lang/String;)V

    .line 640
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 597
    .end local v6    # "contactExtendEntry":Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;
    .end local v7    # "contactExtendSelect":Lcom/alibaba/alimei/orm/query/Select;
    .end local v8    # "contactExtends":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;>;"
    .end local v9    # "contactItem":Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;
    .end local v12    # "contactItemExtend":Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;
    .end local v16    # "extend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;>;"
    .end local v17    # "flag":I
    .end local v21    # "mimeType":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 601
    :cond_5
    if-eqz v20, :cond_6

    .line 603
    const/4 v4, 0x3

    goto/16 :goto_2

    .line 606
    :cond_6
    iget v0, v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->contactType:I

    move/from16 v24, v0

    const/16 v25, 0xe

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 608
    const/4 v4, 0x2

    goto/16 :goto_2

    .line 609
    :cond_7
    iget v0, v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->contactType:I

    move/from16 v24, v0

    const/16 v25, 0x10

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 611
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 642
    .restart local v7    # "contactExtendSelect":Lcom/alibaba/alimei/orm/query/Select;
    .restart local v8    # "contactExtends":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;>;"
    .restart local v9    # "contactItem":Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;
    .restart local v16    # "extend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;>;"
    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->setExtend(Ljava/util/List;)V

    .line 644
    .end local v16    # "extend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;>;"
    :cond_9
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "index":I
    .local v19, "index":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v18, v19

    .line 646
    .end local v19    # "index":I
    .restart local v18    # "index":I
    goto/16 :goto_0

    .line 648
    .end local v4    # "action":I
    .end local v5    # "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    .end local v7    # "contactExtendSelect":Lcom/alibaba/alimei/orm/query/Select;
    .end local v8    # "contactExtends":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;>;"
    .end local v9    # "contactItem":Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;
    .end local v10    # "contactId":J
    .end local v18    # "index":I
    .end local v20    # "isDeleted":Z
    .end local v22    # "sourceId":Ljava/lang/String;
    :cond_a
    return-object v15
.end method

.method public queryUserSelfContact(J)Lcom/alibaba/alimei/contact/model/UserSelfContactModel;
    .locals 23
    .param p1, "accountId"    # J

    .prologue
    .line 674
    new-instance v8, Lcom/alibaba/alimei/orm/query/Select;

    const-class v18, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v19, "contacts2.db"

    const-string/jumbo v20, "contacts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v8, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .local v8, "contactSelect":Lcom/alibaba/alimei/orm/query/Select;
    const/16 v18, 0xd

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "_id"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "serverId"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, "email"

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const-string/jumbo v20, "name"

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string/jumbo v20, "serverId"

    aput-object v20, v18, v19

    const/16 v19, 0x5

    const-string/jumbo v20, "avatarAddr"

    aput-object v20, v18, v19

    const/16 v19, 0x6

    const-string/jumbo v20, "accountKey"

    aput-object v20, v18, v19

    const/16 v19, 0x7

    const-string/jumbo v20, "aliases"

    aput-object v20, v18, v19

    const/16 v19, 0x8

    const-string/jumbo v20, "popaccounts"

    aput-object v20, v18, v19

    const/16 v19, 0x9

    const-string/jumbo v20, "smtpaccounts"

    aput-object v20, v18, v19

    const/16 v19, 0xa

    const-string/jumbo v20, "def_sender_mail"

    aput-object v20, v18, v19

    const/16 v19, 0xb

    const-string/jumbo v20, "def_sender_name"

    aput-object v20, v18, v19

    const/16 v19, 0xc

    const-string/jumbo v20, "extend"

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 678
    const-string/jumbo v18, "accountKey=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const-string/jumbo v18, "contactType=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x11

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const/4 v11, 0x0

    .line 683
    .local v11, "model":Lcom/alibaba/alimei/contact/model/UserSelfContactModel;
    invoke-virtual {v8}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 684
    .local v7, "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    if-eqz v7, :cond_9

    .line 685
    new-instance v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;

    .end local v11    # "model":Lcom/alibaba/alimei/contact/model/UserSelfContactModel;
    invoke-direct {v11}, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;-><init>()V

    .line 686
    .restart local v11    # "model":Lcom/alibaba/alimei/contact/model/UserSelfContactModel;
    iget-object v0, v7, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->email:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->email:Ljava/lang/String;

    .line 687
    iget-object v0, v7, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->name:Ljava/lang/String;

    .line 688
    iget-object v0, v7, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->serverId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->serverId:Ljava/lang/String;

    .line 689
    iget-object v0, v7, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->avatarAddr:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->avatarAddr:Ljava/lang/String;

    .line 690
    iget-object v0, v7, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->defSendMail:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->defSendMail:Ljava/lang/String;

    .line 691
    iget-object v0, v7, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->defSendName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->defName:Ljava/lang/String;

    .line 692
    iget-object v6, v7, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->aliases:Ljava/lang/String;

    .line 693
    .local v6, "as":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 694
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    .line 695
    const-string/jumbo v18, ";"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 696
    .local v5, "aas":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 697
    array-length v0, v5

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    aget-object v4, v5, v18

    .line 698
    .local v4, "a":Ljava/lang/String;
    iget-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 701
    .end local v4    # "a":Ljava/lang/String;
    :cond_0
    iget-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    .end local v5    # "aas":[Ljava/lang/String;
    :cond_1
    iget-object v13, v7, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->popAccounts:Ljava/lang/String;

    .line 705
    .local v13, "popAccount":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 706
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->popAccounts:Ljava/util/List;

    .line 707
    const-string/jumbo v18, ";"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 708
    .local v14, "popAccountArray":[Ljava/lang/String;
    if-eqz v14, :cond_3

    array-length v0, v14

    move/from16 v18, v0

    if-lez v18, :cond_3

    .line 709
    array-length v0, v14

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    aget-object v12, v14, v18

    .line 710
    .local v12, "pop":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 711
    iget-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->popAccounts:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 716
    .end local v12    # "pop":Ljava/lang/String;
    :cond_3
    iget-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->popAccounts:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v19, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    .end local v14    # "popAccountArray":[Ljava/lang/String;
    :cond_4
    iget-object v0, v7, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->smtpAccounts:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 721
    .local v16, "smtpAccount":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 722
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->smtpAccounts:Ljava/util/List;

    .line 723
    const-string/jumbo v18, ";"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 724
    .local v17, "smtpAccountArray":[Ljava/lang/String;
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_6

    .line 725
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    aget-object v15, v17, v18

    .line 726
    .local v15, "smtp":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 727
    iget-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->smtpAccounts:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 731
    .end local v15    # "smtp":Ljava/lang/String;
    :cond_6
    iget-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->smtpAccounts:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v19, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    .end local v17    # "smtpAccountArray":[Ljava/lang/String;
    :cond_7
    iget-object v9, v7, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->extend:Ljava/lang/String;

    .line 736
    .local v9, "extend":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 737
    new-instance v18, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl$1;-><init>(Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;)V

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 738
    .local v10, "listType":Ljava/lang/reflect/Type;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->extend:Ljava/util/List;

    .line 741
    .end local v10    # "listType":Ljava/lang/reflect/Type;
    :cond_8
    iget-wide v0, v7, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->setId(J)V

    .line 743
    .end local v6    # "as":Ljava/lang/String;
    .end local v9    # "extend":Ljava/lang/String;
    .end local v13    # "popAccount":Ljava/lang/String;
    .end local v16    # "smtpAccount":Ljava/lang/String;
    :cond_9
    return-object v11
.end method

.method public saveCallLog(Lcom/alibaba/alimei/contact/db/entry/CallLog;)J
    .locals 2
    .param p1, "log"    # Lcom/alibaba/alimei/contact/db/entry/CallLog;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1043
    const-wide/16 v0, -0x1

    .line 1044
    .local v0, "id":J
    if-eqz p1, :cond_0

    .line 1045
    invoke-virtual {p1}, Lcom/alibaba/alimei/contact/db/entry/CallLog;->save()J

    move-result-wide v0

    .line 1048
    :cond_0
    return-wide v0
.end method

.method public saveContact(JLcom/alibaba/alimei/contact/model/ContactModel;)Lcom/alibaba/alimei/contact/model/ContactModel;
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "contactModel"    # Lcom/alibaba/alimei/contact/model/ContactModel;

    .prologue
    .line 555
    new-instance v4, Lcom/alibaba/alimei/orm/query/Update;

    const-class v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v6, "contacts2.db"

    const-string/jumbo v7, "contacts"

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .local v4, "contactUpdate":Lcom/alibaba/alimei/orm/query/Update;
    invoke-static {p1, p2, p3}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->buildContactEntry(JLcom/alibaba/alimei/contact/model/ContactModel;)Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    move-result-object v0

    .line 557
    .local v0, "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    invoke-static {p3}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->buildExtendListByModel(Lcom/alibaba/alimei/contact/model/ContactModel;)Ljava/util/List;

    move-result-object v1

    .line 558
    .local v1, "contactExtendEntries":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;>;"
    invoke-virtual {p3}, Lcom/alibaba/alimei/contact/model/ContactModel;->getId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    .line 559
    const-wide/16 v6, -0x1

    invoke-virtual {p3, v6, v7}, Lcom/alibaba/alimei/contact/model/ContactModel;->setId(J)V

    .line 561
    :cond_0
    const/4 v5, 0x0

    invoke-direct {p0, v4, v0, v1, v5}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->replaceContactEntry(Lcom/alibaba/alimei/orm/query/Update;Lcom/alibaba/alimei/contact/db/entry/ContactEntry;Ljava/util/List;Z)J

    move-result-wide v2

    .line 562
    .local v2, "contactId":J
    invoke-virtual {p3, v2, v3}, Lcom/alibaba/alimei/contact/model/ContactModel;->setId(J)V

    .line 563
    return-object p3
.end method

.method public saveSelfUser(JLjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 872
    new-instance v5, Lcom/alibaba/alimei/orm/query/Select;

    const-class v9, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v10, "contacts2.db"

    const-string/jumbo v11, "contacts"

    invoke-direct {v5, v9, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .local v5, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v9, "accountKey=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    const-string/jumbo v9, "contactType=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v2

    .line 876
    .local v2, "contactEntries":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactEntry;>;"
    if-eqz v2, :cond_0

    .line 877
    new-instance v8, Lcom/alibaba/alimei/orm/query/Update;

    const-class v9, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v10, "contacts2.db"

    const-string/jumbo v11, "contacts"

    invoke-direct {v8, v9, v10, v11}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    .local v8, "update":Lcom/alibaba/alimei/orm/query/Update;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 879
    .local v3, "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    iget-wide v6, v3, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->_id:J

    .line 880
    .local v6, "id":J
    invoke-virtual {v8}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 881
    const-string/jumbo v10, "name"

    move-object/from16 v0, p4

    invoke-virtual {v8, v10, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 882
    const-string/jumbo v10, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    invoke-virtual {v8}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    goto :goto_0

    .line 886
    .end local v3    # "contactEntry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    .end local v6    # "id":J
    .end local v8    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :cond_0
    new-instance v4, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    invoke-direct {v4}, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;-><init>()V

    .line 887
    .local v4, "entry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->name:Ljava/lang/String;

    .line 888
    move-wide/from16 v0, p1

    iput-wide v0, v4, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->accountKey:J

    .line 889
    const/16 v9, 0x11

    iput v9, v4, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->contactType:I

    .line 890
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->email:Ljava/lang/String;

    .line 891
    invoke-virtual {v4}, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->save()J

    .line 893
    .end local v4    # "entry":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    :cond_1
    return-void
.end method

.method public searchContacts(JLjava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/SearchContactModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 421
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 422
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v6, "contacts2.db"

    const-string/jumbo v7, "contacts"

    invoke-direct {v1, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .local v1, "contactSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "accountKey=?"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string/jumbo v5, "contactType=?"

    new-array v6, v9, [Ljava/lang/Object;

    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string/jumbo v5, "( name LIKE ? OR email LIKE ? OR aliases LIKE ? OR nameInJianPin LIKE ? OR nameInPinyin LIKE ? ) "

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p3, v6, v8

    aput-object p3, v6, v9

    aput-object p3, v6, v10

    const/4 v7, 0x3

    aput-object p3, v6, v7

    const/4 v7, 0x4

    aput-object p3, v6, v7

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string/jumbo v5, "nameInPinyin ASC "

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 428
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v2

    .line 429
    .local v2, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactEntry;>;"
    if-eqz v2, :cond_0

    .line 430
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 431
    .local v4, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/contact/model/SearchContactModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 432
    .local v0, "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    invoke-static {v0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->buildSearchContactModel(Lcom/alibaba/alimei/contact/db/entry/ContactEntry;)Lcom/alibaba/alimei/contact/model/SearchContactModel;

    move-result-object v3

    .line 433
    .local v3, "model":Lcom/alibaba/alimei/contact/model/SearchContactModel;
    iput v10, v3, Lcom/alibaba/alimei/contact/model/SearchContactModel;->searchType:I

    .line 434
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    .end local v0    # "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    .end local v3    # "model":Lcom/alibaba/alimei/contact/model/SearchContactModel;
    .end local v4    # "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/contact/model/SearchContactModel;>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    return-object v4
.end method

.method public updateDirtyContact(JLcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;)V
    .locals 5
    .param p1, "contactId"    # J
    .param p3, "contactUpdateResult"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;

    .prologue
    const/4 v4, 0x0

    .line 653
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v2, "contacts2.db"

    const-string/jumbo v3, "contacts"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 655
    const-string/jumbo v1, "dirty"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 656
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    const-string/jumbo v1, "serverId"

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 660
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;->getNameInJianpin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 661
    const-string/jumbo v1, "nameInJianPin"

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;->getNameInJianpin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 664
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;->getNameInPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 665
    const-string/jumbo v1, "nameInPinyin"

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;->getNameInPinyin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 667
    :cond_2
    const-string/jumbo v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 670
    return-void
.end method

.method public updateSelfInfo(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defSendMail"    # Ljava/lang/String;

    .prologue
    .line 1053
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "contacts"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1055
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1057
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1058
    const-string/jumbo v1, "def_sender_mail"

    invoke-virtual {v0, v1, p4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1060
    :cond_1
    const-string/jumbo v1, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    const-string/jumbo v1, "contactType"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
