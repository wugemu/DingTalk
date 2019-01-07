.class public Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;
.super Ljava/lang/Object;
.source "SmtpAccounts.java"


# instance fields
.field private smtpAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "smtpAccount"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;->smtpAccount:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getSmtpAccounts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;->smtpAccount:Ljava/lang/String;

    return-object v0
.end method

.method public setSmtpAccounts(Ljava/lang/String;)V
    .locals 0
    .param p1, "smtpAccounts"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;->smtpAccount:Ljava/lang/String;

    .line 23
    return-void
.end method
