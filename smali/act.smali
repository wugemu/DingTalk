.class public final Lact;
.super Ljava/lang/Object;
.source "SystemFolderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    check-cast p2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1016
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isInboxFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    const/16 v0, -0x9

    .line 1061
    :goto_0
    return v0

    .line 1020
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isInboxFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    const/16 v0, 0x9

    goto :goto_0

    .line 1025
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSendFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1026
    const/16 v0, -0x3e3

    goto :goto_0

    .line 1028
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSendFolder()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1029
    const/16 v0, 0x3e3

    goto :goto_0

    .line 1033
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1034
    const/16 v0, -0x3e4

    goto :goto_0

    .line 1036
    :cond_4
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1037
    const/16 v0, 0x3e4

    goto :goto_0

    .line 1041
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isDraftFolder()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1042
    const/16 v0, -0x3e5

    goto :goto_0

    .line 1044
    :cond_6
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isDraftFolder()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1045
    const/16 v0, 0x3e5

    goto :goto_0

    .line 1049
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isTrashFolder()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1050
    const/16 v0, -0x3e6

    goto :goto_0

    .line 1052
    :cond_8
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isTrashFolder()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1053
    const/16 v0, 0x3e6

    goto :goto_0

    .line 1057
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isJunkFolder()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1058
    const/16 v0, -0x3e7

    goto :goto_0

    .line 1060
    :cond_a
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isJunkFolder()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1061
    const/16 v0, 0x3e7

    goto :goto_0

    .line 1064
    :cond_b
    const/4 v0, 0x0

    .line 11
    goto :goto_0
.end method
