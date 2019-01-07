.class public Lcom/ali/user/open/history/HistoryAccount;
.super Ljava/lang/Object;
.source "HistoryAccount.java"


# instance fields
.field public email:Ljava/lang/String;

.field public mobile:Ljava/lang/String;

.field public nick:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public tokenKey:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ali/user/open/history/HistoryAccount;->userId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/ali/user/open/history/HistoryAccount;->tokenKey:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/ali/user/open/history/HistoryAccount;->nick:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/ali/user/open/history/HistoryAccount;->mobile:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/ali/user/open/history/HistoryAccount;->email:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ali/user/open/history/HistoryAccount;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
