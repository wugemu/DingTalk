.class public Lcom/alibaba/alimei/mail/search/db/MailSearchHistoryConfigure;
.super Ljava/lang/Object;
.source "MailSearchHistoryConfigure.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "mailsearchhistory.db"

.field public static final DATABASE_VERSION:I = 0x1

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
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/alibaba/alimei/mail/search/db/MailSearchHistoryConfigure;->sConfigurations:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Lcom/alibaba/alimei/orm/Configuration;

    const-string/jumbo v1, "mailsearchhistory.db"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/orm/Configuration;-><init>(Ljava/lang/String;I)V

    .line 31
    .local v0, "searchHistory":Lcom/alibaba/alimei/orm/Configuration;
    const-class v1, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 33
    sget-object v1, Lcom/alibaba/alimei/mail/search/db/MailSearchHistoryConfigure;->sConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
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
    .line 41
    sget-object v0, Lcom/alibaba/alimei/mail/search/db/MailSearchHistoryConfigure;->sConfigurations:Ljava/util/ArrayList;

    return-object v0
.end method
