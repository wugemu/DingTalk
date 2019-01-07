.class public Lcom/alibaba/alimei/restfulapi/auth/AccountExtend;
.super Ljava/lang/Object;
.source "AccountExtend.java"


# static fields
.field public static final TYPE_RENAME:I = 0x1


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
    .line 18
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AccountExtend;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AccountExtend;->type:I

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/auth/AccountExtend;->account:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/auth/AccountExtend;->type:I

    .line 31
    return-void
.end method
