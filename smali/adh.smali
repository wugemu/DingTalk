.class public final Ladh;
.super Lxq;
.source "MailUidBundle.java"


# static fields
.field public static a:Ladh;


# instance fields
.field private final b:Lcom/alibaba/alimei/framework/account/AccountListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lxq;-><init>()V

    .line 22
    new-instance v0, Ladh$1;

    invoke-direct {v0, p0}, Ladh$1;-><init>(Ladh;)V

    iput-object v0, p0, Ladh;->b:Lcom/alibaba/alimei/framework/account/AccountListener;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/alimei/framework/account/AccountListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ladh;->b:Lcom/alibaba/alimei/framework/account/AccountListener;

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
    .line 56
    invoke-static {}, Lcom/alibaba/alimei/mail/avatar/db/MailUidConfigure;->getDatabaseConfigs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
