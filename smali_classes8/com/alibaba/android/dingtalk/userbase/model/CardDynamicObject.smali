.class public Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;
.super Ljava/lang/Object;
.source "CardDynamicObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x57dfeeced97cd3b2L


# instance fields
.field public cardToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public completeDegree:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgThemes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;",
            ">;"
        }
    .end annotation
.end field

.field public orgTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public qrCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcgp;)Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;
    .locals 3
    .param p0, "model"    # Lcgp;

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;-><init>()V

    .line 50
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;
    iget-object v1, p0, Lcgp;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->qrCode:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcgp;->b:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 51
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->completeDegree:I

    .line 52
    iget-object v1, p0, Lcgp;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->cardToken:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcgp;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->orgTitle:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcgp;->e:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->getObjects(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->orgThemes:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcgp;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 59
    new-instance v0, Lcgp;

    invoke-direct {v0}, Lcgp;-><init>()V

    .line 60
    .local v0, "model":Lcgp;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->qrCode:Ljava/lang/String;

    iput-object v1, v0, Lcgp;->a:Ljava/lang/String;

    .line 61
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->completeDegree:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcgp;->b:Ljava/lang/Integer;

    .line 62
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->cardToken:Ljava/lang/String;

    iput-object v1, v0, Lcgp;->c:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->orgTitle:Ljava/lang/String;

    iput-object v1, v0, Lcgp;->d:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->orgThemes:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->toJsonString(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcgp;->e:Ljava/util/List;

    .line 65
    return-object v0
.end method
