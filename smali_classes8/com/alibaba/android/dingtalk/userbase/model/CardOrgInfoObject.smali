.class public Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;
.super Ljava/lang/Object;
.source "CardOrgInfoObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5e7054d052424197L


# instance fields
.field public orgAuthLevel:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgAuthed:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgMediaId:Ljava/lang/String;
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

.field public titleAuthed:Z
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

.method public static fromIdl(Lcgs;)Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;
    .locals 5
    .param p0, "model"    # Lcgs;

    .prologue
    const/4 v4, 0x0

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;-><init>()V

    .line 44
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;
    iget-object v1, p0, Lcgs;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 44
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgId:J

    .line 45
    iget-object v1, p0, Lcgs;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgName:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcgs;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgMediaId:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcgs;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->title:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcgs;->e:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 48
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgAuthed:Z

    .line 49
    iget-object v1, p0, Lcgs;->g:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 49
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->titleAuthed:Z

    .line 50
    iget-object v1, p0, Lcgs;->f:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 50
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgAuthLevel:I

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcgs;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 55
    new-instance v0, Lcgs;

    invoke-direct {v0}, Lcgs;-><init>()V

    .line 56
    .local v0, "model":Lcgs;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcgs;->a:Ljava/lang/Long;

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->title:Ljava/lang/String;

    iput-object v1, v0, Lcgs;->d:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcgs;->c:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgName:Ljava/lang/String;

    iput-object v1, v0, Lcgs;->b:Ljava/lang/String;

    .line 60
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgAuthed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcgs;->e:Ljava/lang/Boolean;

    .line 61
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->titleAuthed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcgs;->g:Ljava/lang/Boolean;

    .line 62
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgAuthLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcgs;->f:Ljava/lang/Integer;

    .line 63
    return-object v0
.end method
