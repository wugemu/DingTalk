.class public Lcom/dbappsecurity/utl/LogUts;
.super Ljava/lang/Object;
.source "LogUts.java"


# instance fields
.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "htp:"

    iput-object v0, p0, Lcom/dbappsecurity/utl/LogUts;->tag:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/dbappsecurity/utl/LogUts;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/dbappsecurity/utl/LogUts;

    invoke-direct {v0}, Lcom/dbappsecurity/utl/LogUts;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/dbappsecurity/utl/LogUts;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Lcom/dbappsecurity/utl/LogUts;

    invoke-direct {v0}, Lcom/dbappsecurity/utl/LogUts;-><init>()V

    .line 15
    .local v0, "logUts":Lcom/dbappsecurity/utl/LogUts;
    invoke-virtual {v0, p0}, Lcom/dbappsecurity/utl/LogUts;->setTag(Ljava/lang/String;)V

    .line 17
    return-object v0
.end method


# virtual methods
.method public logutE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 48
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/dbappsecurity/utl/LogUts;->tag:Ljava/lang/String;

    .line 24
    return-void
.end method
