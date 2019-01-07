.class public Lglq;
.super Ljava/lang/Object;
.source "AliFileAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lglq$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "action_file_invite_online_edit"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "action_file_send_to_contact"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "action_file_rename"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "action_file_re_path"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "action_file_delete"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lglq;->a:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static a(Lglq$a;)Ljava/util/List;
    .locals 7
    .param p0, "param"    # Lglq$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lglq$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    if-eqz p0, :cond_0

    iget-object v3, p0, Lglq$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v3, :cond_1

    .line 42
    :cond_0
    invoke-static {}, Lglp;->a()Ljava/util/List;

    move-result-object v2

    .line 53
    :goto_0
    return-object v2

    .line 45
    :cond_1
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    .line 46
    .local v1, "aclUtil":Lgqd;
    iget-object v3, p0, Lglq$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p0, Lglq$a;->d:J

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lgqd;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;JZ)Ljava/util/List;

    move-result-object v0

    .line 1358
    .local v0, "aclActionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/doc/WEDocInterface;->a()Lcom/alibaba/android/dingtalk/doc/WEDocInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/doc/WEDocInterface;->c()Z

    move-result v3

    .line 47
    if-eqz v3, :cond_2

    iget-object v3, p0, Lglq$a;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgqd;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    const-string/jumbo v3, "action_file_invite_online_edit"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lglq;->a:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 52
    .local v2, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
