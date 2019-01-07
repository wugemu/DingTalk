.class public Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;
.super Ljava/lang/Object;
.source "CardOrgThemeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7a6f3d7de9783910L


# instance fields
.field public active:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public defaultTheme:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public themeConfig:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
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

.method public static fromIdl(Lcgt;)Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;
    .locals 5
    .param p0, "model"    # Lcgt;

    .prologue
    const/4 v4, 0x0

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;-><init>()V

    .line 37
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;
    iget-object v1, p0, Lcgt;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 37
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;->id:J

    .line 38
    iget-object v1, p0, Lcgt;->b:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;->themeConfig:Ljava/util/Map;

    .line 39
    iget-object v1, p0, Lcgt;->c:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 39
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;->defaultTheme:Z

    .line 40
    iget-object v1, p0, Lcgt;->d:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 40
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;->active:Z

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcgt;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 45
    new-instance v0, Lcgt;

    invoke-direct {v0}, Lcgt;-><init>()V

    .line 46
    .local v0, "model":Lcgt;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcgt;->a:Ljava/lang/Long;

    .line 47
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;->themeConfig:Ljava/util/Map;

    iput-object v1, v0, Lcgt;->b:Ljava/util/Map;

    .line 48
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;->defaultTheme:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcgt;->c:Ljava/lang/Boolean;

    .line 49
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/CardOrgThemeObject;->active:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcgt;->d:Ljava/lang/Boolean;

    .line 50
    return-object v0
.end method
