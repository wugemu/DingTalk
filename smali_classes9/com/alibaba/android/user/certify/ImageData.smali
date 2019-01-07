.class public Lcom/alibaba/android/user/certify/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4798713f7c3f6deeL


# instance fields
.field private path:Ljava/lang/String;

.field private type:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/android/user/certify/ImageData;->path:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/alibaba/android/user/certify/ImageData;->type:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    .line 19
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/user/certify/ImageData;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/certify/ImageData;->type:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alibaba/android/user/certify/ImageData;->path:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setType(Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/android/user/certify/ImageData;->type:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    .line 27
    return-void
.end method
