.class public Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;
.super Ljava/lang/Object;
.source "CardSettingObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x22418077c79a5701L


# instance fields
.field public addressVisiableForStranger:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public emailVisiableForStranger:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mobileVisiableForStranger:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgVisiableForStranger:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public titleVisiableForStranger:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcha;)Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;
    .locals 3
    .param p0, "model"    # Lcha;

    .prologue
    const/4 v2, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;-><init>()V

    .line 34
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;
    iget-object v1, p0, Lcha;->a:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 34
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->mobileVisiableForStranger:Z

    .line 35
    iget-object v1, p0, Lcha;->b:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 35
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->orgVisiableForStranger:Z

    .line 36
    iget-object v1, p0, Lcha;->c:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 36
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->titleVisiableForStranger:Z

    .line 37
    iget-object v1, p0, Lcha;->d:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 37
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->emailVisiableForStranger:Z

    .line 38
    iget-object v1, p0, Lcha;->e:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 38
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->addressVisiableForStranger:Z

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcha;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 43
    new-instance v0, Lcha;

    invoke-direct {v0}, Lcha;-><init>()V

    .line 44
    .local v0, "model":Lcha;
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->mobileVisiableForStranger:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcha;->a:Ljava/lang/Boolean;

    .line 45
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->orgVisiableForStranger:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcha;->b:Ljava/lang/Boolean;

    .line 46
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->titleVisiableForStranger:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcha;->c:Ljava/lang/Boolean;

    .line 47
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->emailVisiableForStranger:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcha;->d:Ljava/lang/Boolean;

    .line 48
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->addressVisiableForStranger:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcha;->e:Ljava/lang/Boolean;

    .line 49
    return-object v0
.end method
