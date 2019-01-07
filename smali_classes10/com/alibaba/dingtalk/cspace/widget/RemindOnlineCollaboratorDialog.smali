.class public Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;
.super Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;
.source "RemindOnlineCollaboratorDialog.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;-><init>(Landroid/app/Activity;)V

    .line 1041
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->a(Landroid/view/View$OnClickListener;)V

    .line 1047
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$2;-><init>(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$a;)V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;)V
    .locals 11
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    .prologue
    .line 20
    .line 1089
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$3;-><init>(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;)V

    .line 1115
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcma;

    .line 1116
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->b()V

    .line 1117
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->c:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->b:I

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->d:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 1118
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->e()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->d()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->a:Ljava/lang/String;

    const/4 v9, 0x0

    .line 1117
    invoke-virtual/range {v0 .. v10}, Lgon;->a(Ljava/lang/String;ILjava/lang/String;JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->z:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->z:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->z:Z

    .line 61
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->a(Ljava/util/List;)V

    .line 62
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
