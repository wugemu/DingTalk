.class public Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;
.super Ljava/lang/Object;
.source "CardOrgThemeResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4f82f32a49a72cedL


# instance fields
.field public mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
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
            "Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;",
            ">;"
        }
    .end annotation
.end field

.field public userIsAdmin:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcgu;)Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;
    .locals 6
    .param p0, "model"    # Lcgu;

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;-><init>()V

    .line 42
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;
    iget-object v2, p0, Lcgu;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 42
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;->orgId:J

    .line 43
    iget-object v2, p0, Lcgu;->b:Ljava/util/List;

    invoke-static {v2}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;->orgThemes:Ljava/util/List;

    .line 45
    iget-object v2, p0, Lcgu;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcgt;

    .line 46
    .local v1, "themeModel":Lcgt;
    if-eqz v1, :cond_1

    .line 47
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;->orgThemes:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;->fromIdl(Lcgt;)Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    .end local v1    # "themeModel":Lcgt;
    :cond_2
    iget-object v2, p0, Lcgu;->c:Lche;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->fromIdl(Lche;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;->mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 52
    iget-object v2, p0, Lcgu;->d:Ljava/lang/Boolean;

    .line 2022
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 52
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;->userIsAdmin:Z

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcgu;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 57
    new-instance v0, Lcgu;

    invoke-direct {v0}, Lcgu;-><init>()V

    .line 58
    .local v0, "model":Lcgu;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcgu;->a:Ljava/lang/Long;

    .line 59
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;->mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-object v2, v0, Lcgu;->c:Lche;

    .line 60
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;->userIsAdmin:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcgu;->d:Ljava/lang/Boolean;

    .line 61
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;->orgThemes:Ljava/util/List;

    invoke-static {v2}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcgu;->b:Ljava/util/List;

    .line 63
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;->orgThemes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;

    .line 64
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;
    if-eqz v1, :cond_0

    .line 65
    iget-object v3, v0, Lcgu;->b:Ljava/util/List;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;->toIdl()Lcgt;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 59
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeResultObject;->mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->toIdl()Lche;

    move-result-object v2

    goto :goto_0

    .line 69
    :cond_2
    return-object v0
.end method
