.class public Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItemExtend;
.super Ljava/lang/Object;
.source "DentryCreateItemExtend.java"


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItemExtend;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItemExtend;->message:Ljava/lang/String;

    .line 17
    return-void
.end method
