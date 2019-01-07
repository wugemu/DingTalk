.class public Lcom/alibaba/alimei/mail/avatar/db/MailUidConfigure;
.super Ljava/lang/Object;
.source "MailUidConfigure.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "mailuid.db"

.field public static final DATABASE_VERSION:I = 0x2

.field private static final sConfigurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/orm/Configuration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/alibaba/alimei/mail/avatar/db/MailUidConfigure;->sConfigurations:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Lcom/alibaba/alimei/orm/Configuration;

    const-string/jumbo v1, "mailuid.db"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/orm/Configuration;-><init>(Ljava/lang/String;I)V

    .line 30
    .local v0, "mailUidConfig":Lcom/alibaba/alimei/orm/Configuration;
    const-class v1, Lcom/alibaba/alimei/mail/avatar/db/MailUid;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 32
    sget-object v1, Lcom/alibaba/alimei/mail/avatar/db/MailUidConfigure;->sConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getDatabaseConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/orm/Configuration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/alibaba/alimei/mail/avatar/db/MailUidConfigure;->sConfigurations:Ljava/util/ArrayList;

    return-object v0
.end method
