.class public Lcom/alibaba/alimei/restfulapi/v2/data/Modifier;
.super Ljava/lang/Object;
.source "Modifier.java"


# instance fields
.field protected aliasEmail:Ljava/lang/String;

.field protected displayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAliasEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Modifier;->aliasEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Modifier;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public setAliasEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "aliasEmail"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Modifier;->aliasEmail:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Modifier;->displayName:Ljava/lang/String;

    .line 21
    return-void
.end method
