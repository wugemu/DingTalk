.class public final Lst;
.super Lxq;
.source "ContactBundle.java"


# static fields
.field public static a:Lst;


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lxq;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lst;->b:Z

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/alimei/framework/account/AccountListener;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

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
    .line 40
    iget-boolean v0, p0, Lst;->b:Z

    .line 1044
    invoke-static {v0}, Lcom/alibaba/alimei/contact/db/ContactConfigure;->getDatabaseConfigs(Z)Ljava/util/List;

    move-result-object v0

    .line 40
    return-object v0
.end method
