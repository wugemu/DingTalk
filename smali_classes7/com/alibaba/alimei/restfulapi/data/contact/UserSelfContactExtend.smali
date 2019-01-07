.class public Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContactExtend;
.super Ljava/lang/Object;
.source "UserSelfContactExtend.java"


# instance fields
.field public account:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContactExtend;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContactExtend;->type:I

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContactExtend;->account:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContactExtend;->type:I

    .line 26
    return-void
.end method
