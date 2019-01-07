.class public final Laen;
.super Lxq;
.source "SearchBundle.java"


# static fields
.field public static a:Laen;


# instance fields
.field private b:Lcom/alibaba/alimei/framework/account/AccountListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lxq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/alimei/framework/account/AccountListener;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Laen$1;

    invoke-direct {v0, p0}, Laen$1;-><init>(Laen;)V

    iput-object v0, p0, Laen;->b:Lcom/alibaba/alimei/framework/account/AccountListener;

    .line 49
    iget-object v0, p0, Laen;->b:Lcom/alibaba/alimei/framework/account/AccountListener;

    return-object v0
.end method

.method public final b()Ljava/util/List;
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
    .line 54
    invoke-static {}, Lcom/alibaba/alimei/mail/search/db/MailSearchHistoryConfigure;->getDatabaseConfigs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
