.class public Lcom/alibaba/alimei/restfulapi/v2/data/Creator;
.super Ljava/lang/Object;
.source "Creator.java"


# instance fields
.field protected aliasEmail:Ljava/lang/String;

.field protected displayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAliasEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Creator;->aliasEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Creator;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public setAliasEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "aliasEmail"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Creator;->aliasEmail:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Creator;->displayName:Ljava/lang/String;

    .line 26
    return-void
.end method
