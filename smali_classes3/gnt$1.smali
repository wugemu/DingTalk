.class final Lgnt$1;
.super Ljava/lang/Object;
.source "SpaceOnlineEditHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnt;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;ILcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;Ljava/lang/String;J)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic e:J

.field final synthetic f:Landroid/app/Activity;

.field final synthetic g:Lgnt;


# direct methods
.method constructor <init>(Lgnt;ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;JLandroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lgnt;

    .prologue
    .line 94
    iput-object p1, p0, Lgnt$1;->g:Lgnt;

    iput p2, p0, Lgnt$1;->a:I

    iput-object p3, p0, Lgnt$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lgnt$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lgnt$1;->d:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-wide p6, p0, Lgnt$1;->e:J

    iput-object p8, p0, Lgnt$1;->f:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 112
    const-string/jumbo v3, "13020006"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 117
    :cond_0
    iget v3, p0, Lgnt$1;->a:I

    invoke-static {v3}, Lgqu;->g(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgnt$1;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lgnt$1;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    new-instance v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;-><init>()V

    .line 120
    .local v0, "args":Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;
    iget-object v3, p0, Lgnt$1;->c:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->msgId:Ljava/lang/String;

    .line 121
    const/4 v3, 0x0

    iput v3, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectType:I

    .line 122
    iget-object v3, p0, Lgnt$1;->d:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectId:Ljava/lang/String;

    .line 123
    iget-object v3, p0, Lgnt$1;->d:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectContainerId:Ljava/lang/String;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-wide v4, p0, Lgnt$1;->e:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    .line 125
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    .line 127
    .local v2, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->memberList:Ljava/util/List;

    .line 129
    iget-object v3, p0, Lgnt$1;->b:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->conversationId:Ljava/lang/String;

    .line 130
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    iget-object v4, p0, Lgnt$1;->f:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;)V

    goto :goto_0

    .line 134
    .end local v0    # "args":Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;
    .end local v1    # "target":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v2    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    iget-object v4, p0, Lgnt$1;->f:Landroid/app/Activity;

    iget-object v5, p0, Lgnt$1;->d:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 135
    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lfzo;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 134
    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;J)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 108
    return-void
.end method
