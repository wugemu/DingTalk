.class public final Lafx;
.super Lxq;
.source "MailBundle.java"


# static fields
.field public static a:Lafx;


# instance fields
.field private final b:Lcom/alibaba/alimei/framework/account/AccountListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lxq;-><init>()V

    .line 39
    new-instance v0, Lafx$1;

    invoke-direct {v0, p0}, Lafx$1;-><init>(Lafx;)V

    iput-object v0, p0, Lafx;->b:Lcom/alibaba/alimei/framework/account/AccountListener;

    .line 75
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/alimei/framework/account/AccountListener;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lafx;->b:Lcom/alibaba/alimei/framework/account/AccountListener;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/orm/Configuration;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 84
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v0

    .line 1249
    .local v0, "config":Lafy;
    iget v2, v0, Lafy;->g:I

    .line 86
    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->setMailSyncInitCount(I)V

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v1, "sConfigurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/orm/Configuration;>;"
    invoke-static {}, Lcom/alibaba/alimei/sdk/db/mail/MailConfigure;->getDatabaseConfigs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2213
    iget-boolean v2, v0, Lafy;->e:Z

    .line 91
    if-eqz v2, :cond_0

    .line 92
    invoke-static {}, Lcom/alibaba/alimei/sdk/db/calendar/CalendarConfigure;->getDatabaseConfigs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 95
    :cond_0
    return-object v1
.end method
