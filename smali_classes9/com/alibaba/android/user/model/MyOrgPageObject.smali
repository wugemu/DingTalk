.class public Lcom/alibaba/android/user/model/MyOrgPageObject;
.super Ljava/lang/Object;
.source "MyOrgPageObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public authLevel:B
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public corpId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isAdmin:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public logo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public logoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lfox;)Lcom/alibaba/android/user/model/MyOrgPageObject;
    .locals 4
    .param p0, "model"    # Lfox;

    .prologue
    const/4 v1, 0x0

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/model/MyOrgPageObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/MyOrgPageObject;-><init>()V

    .line 46
    .local v0, "object":Lcom/alibaba/android/user/model/MyOrgPageObject;
    iget-object v2, p0, Lfox;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/user/model/MyOrgPageObject;->corpId:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lfox;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/user/model/MyOrgPageObject;->orgName:Ljava/lang/String;

    .line 48
    iget-object v2, p0, Lfox;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/user/model/MyOrgPageObject;->logo:Ljava/lang/String;

    .line 49
    iget-object v2, p0, Lfox;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/user/model/MyOrgPageObject;->url:Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lfox;->f:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v2, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 50
    iput-boolean v2, v0, Lcom/alibaba/android/user/model/MyOrgPageObject;->isAdmin:Z

    .line 51
    iget-object v2, p0, Lfox;->e:Ljava/lang/Byte;

    if-nez v2, :cond_1

    :goto_1
    iput-byte v1, v0, Lcom/alibaba/android/user/model/MyOrgPageObject;->authLevel:B

    .line 52
    iget-object v1, p0, Lfox;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/MyOrgPageObject;->logoUrl:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lfox;->h:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 53
    iput-wide v2, v0, Lcom/alibaba/android/user/model/MyOrgPageObject;->orgId:J

    .line 54
    iget-object v1, p0, Lfox;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/MyOrgPageObject;->token:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lfox;->e:Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_1
.end method
