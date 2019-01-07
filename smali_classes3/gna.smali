.class public final Lgna;
.super Lgly;
.source "SpaceMenuLocalEditHandler.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lgly;-><init>()V

    .line 30
    const-string/jumbo v0, "SpaceMenuLocalEditHandler"

    iput-object v0, p0, Lgna;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p3, "conversationId"    # Ljava/lang/String;
    .param p4, "msgId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 42
    if-nez p2, :cond_0

    .line 84
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    sget v2, Lfzs$h;->dt_space_edit_failreason_enc:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_0

    .line 51
    :cond_1
    new-instance v1, Lgqz;

    invoke-direct {v1}, Lgqz;-><init>()V

    .line 52
    .local v1, "param":Lgqz;
    invoke-static {p2}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v2

    iput-object v2, v1, Lgqz;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 53
    iput-object p3, v1, Lgqz;->b:Ljava/lang/String;

    .line 55
    iget-object v2, v1, Lgqz;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lgqz;->b:Ljava/lang/String;

    .line 59
    :cond_2
    iput-object p4, v1, Lgqz;->c:Ljava/lang/String;

    .line 60
    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfzo;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lgqz;->d:J

    .line 62
    new-instance v0, Lgna$1;

    invoke-direct {v0, p0, p1}, Lgna$1;-><init>(Lgna;Landroid/app/Activity;)V

    .line 82
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v2, Lcma;

    invoke-static {v0, v2, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v0, Lcma;

    .line 83
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lgfg;->a()Lgfg;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lgfg;->a(Landroid/app/Activity;Lgqz;Lcma;)V

    goto :goto_0
.end method

.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lgna;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 38
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iget-object v0, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p2, Lgmb;->f:Ljava/lang/String;

    iget-object v2, p2, Lgmb;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lgna;->a(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
