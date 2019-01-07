.class public Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;
.super Ljava/lang/Object;
.source "CardProfileObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3bd2d43d2492d112L


# instance fields
.field public address:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cardDynamicObject:Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cardStyleObject:Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public introduce:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public jobPosition:Ljava/lang/String;
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

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcgv;)Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;
    .locals 6
    .param p0, "model"    # Lcgv;

    .prologue
    const-wide/16 v4, 0x0

    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 59
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;-><init>()V

    .line 60
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;
    iget-object v1, p0, Lcgv;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 60
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->uid:J

    .line 61
    iget-object v1, p0, Lcgv;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcgv;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->jobPosition:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcgv;->d:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 63
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgId:J

    .line 64
    iget-object v1, p0, Lcgv;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcgv;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->address:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcgv;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->email:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcgv;->h:Lcha;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->fromIdl(Lcha;)Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    .line 68
    iget-object v1, p0, Lcgv;->i:Lchd;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->fromIdl(Lchd;)Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardStyleObject:Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    .line 69
    iget-object v1, p0, Lcgv;->j:Lcgq;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->fromIdl(Lcgq;)Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    .line 70
    iget-object v1, p0, Lcgv;->k:Lcgp;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->fromIdl(Lcgp;)Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardDynamicObject:Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;

    .line 71
    iget-object v1, p0, Lcgv;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->introduce:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcgv;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 76
    new-instance v0, Lcgv;

    invoke-direct {v0}, Lcgv;-><init>()V

    .line 77
    .local v0, "model":Lcgv;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcgv;->a:Ljava/lang/Long;

    .line 78
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    iput-object v1, v0, Lcgv;->b:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->jobPosition:Ljava/lang/String;

    iput-object v1, v0, Lcgv;->c:Ljava/lang/String;

    .line 80
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcgv;->d:Ljava/lang/Long;

    .line 81
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    iput-object v1, v0, Lcgv;->e:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->address:Ljava/lang/String;

    iput-object v1, v0, Lcgv;->f:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->email:Ljava/lang/String;

    iput-object v1, v0, Lcgv;->g:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->toIdl()Lcha;

    move-result-object v1

    iput-object v1, v0, Lcgv;->h:Lcha;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardStyleObject:Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardStyleObject:Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->toIdl()Lchd;

    move-result-object v1

    iput-object v1, v0, Lcgv;->i:Lchd;

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->toIdl()Lcgq;

    move-result-object v1

    iput-object v1, v0, Lcgv;->j:Lcgq;

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardDynamicObject:Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;

    if-eqz v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardDynamicObject:Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->toIdl()Lcgp;

    move-result-object v1

    iput-object v1, v0, Lcgv;->k:Lcgp;

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->introduce:Ljava/lang/String;

    iput-object v1, v0, Lcgv;->l:Ljava/lang/String;

    .line 97
    return-object v0
.end method
