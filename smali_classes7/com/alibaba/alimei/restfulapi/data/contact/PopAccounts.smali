.class public Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;
.super Ljava/lang/Object;
.source "PopAccounts.java"


# instance fields
.field private popAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "popAccount"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;->popAccount:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getPopAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;->popAccount:Ljava/lang/String;

    return-object v0
.end method

.method public setPopAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "popAccount"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;->popAccount:Ljava/lang/String;

    .line 23
    return-void
.end method
