.class public Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;
.super Lcom/alibaba/alimei/restfulapi/data/Item;
.source "BlackContact.java"


# instance fields
.field private email:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/data/Item;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;->email:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/BlackContact;->email:Ljava/lang/String;

    .line 24
    return-void
.end method
