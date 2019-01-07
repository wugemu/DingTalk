.class public Lcom/alibaba/alimei/restfulapi/request/data/BaseUserRequest;
.super Ljava/lang/Object;
.source "BaseUserRequest.java"


# instance fields
.field public EmailAddr:Ljava/lang/String;

.field public MimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/BaseUserRequest;->MimeType:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "emailaddr"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/BaseUserRequest;->EmailAddr:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/BaseUserRequest;->MimeType:Ljava/lang/String;

    .line 16
    return-void
.end method
