.class public Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
.super Ljava/lang/Object;
.source "FilterObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1063e0af9f7d9962L


# instance fields
.field public appId:Ljava/lang/String;

.field public labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public nodeType:I

.field public queryKey:Ljava/lang/String;

.field public showSubEmp:Z

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->nodeType:I

    return-void
.end method

.method public static fromIdl(Lcdn;)Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .locals 3
    .param p0, "model"    # Lcdn;

    .prologue
    const/4 v2, 0x0

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 53
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 54
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    iget-object v1, p0, Lcdn;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcdn;->b:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 55
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->showSubEmp:Z

    .line 56
    iget-object v1, p0, Lcdn;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->type:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcdn;->d:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 57
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->nodeType:I

    .line 58
    iget-object v1, p0, Lcdn;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->queryKey:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcdn;->f:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->labels:Ljava/util/List;

    goto :goto_0
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)Lcdn;
    .locals 1
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->toIdl()Lcdn;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcdn;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 64
    new-instance v0, Lcdn;

    invoke-direct {v0}, Lcdn;-><init>()V

    .line 65
    .local v0, "model":Lcdn;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcdn;->a:Ljava/lang/String;

    .line 66
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->showSubEmp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcdn;->b:Ljava/lang/Boolean;

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->type:Ljava/lang/String;

    iput-object v1, v0, Lcdn;->c:Ljava/lang/String;

    .line 68
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->nodeType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcdn;->d:Ljava/lang/Integer;

    .line 69
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->queryKey:Ljava/lang/String;

    iput-object v1, v0, Lcdn;->e:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->labels:Ljava/util/List;

    iput-object v1, v0, Lcdn;->f:Ljava/util/List;

    .line 71
    return-object v0
.end method
