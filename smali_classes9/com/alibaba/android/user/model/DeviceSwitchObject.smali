.class public Lcom/alibaba/android/user/model/DeviceSwitchObject;
.super Ljava/lang/Object;
.source "DeviceSwitchObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x429580933611c35L


# instance fields
.field public name:Ljava/lang/String;

.field public show:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/model/DeviceSwitchObject;->show:Z

    .line 37
    return-void
.end method

.method public static fromIDLModel(Lfoq;)Lcom/alibaba/android/user/model/DeviceSwitchObject;
    .locals 5
    .param p0, "model"    # Lfoq;

    .prologue
    const/4 v4, 0x0

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/model/DeviceSwitchObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/DeviceSwitchObject;-><init>()V

    .line 45
    .local v0, "object":Lcom/alibaba/android/user/model/DeviceSwitchObject;
    iget-object v1, p0, Lfoq;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/DeviceSwitchObject;->name:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lfoq;->b:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/user/model/DeviceSwitchObject;->show:Z

    .line 47
    const-string/jumbo v1, "name=%s, show=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lfoq;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lfoq;->b:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lfxo;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static fromIdlList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfoq;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/DeviceSwitchObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "deviceSwitchModelList":Ljava/util/List;, "Ljava/util/List<Lfoq;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    :cond_0
    const/4 v2, 0x0

    .line 70
    :cond_1
    return-object v2

    .line 56
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, "deviceSwitchObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/DeviceSwitchObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfoq;

    .line 59
    .local v0, "deviceSwitchModel":Lfoq;
    if-eqz v0, :cond_3

    .line 63
    invoke-static {v0}, Lcom/alibaba/android/user/model/DeviceSwitchObject;->fromIDLModel(Lfoq;)Lcom/alibaba/android/user/model/DeviceSwitchObject;

    move-result-object v1

    .line 65
    .local v1, "deviceSwitchObject":Lcom/alibaba/android/user/model/DeviceSwitchObject;
    if-eqz v1, :cond_3

    .line 66
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public toIDLModel()Lfoq;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 74
    new-instance v0, Lfoq;

    invoke-direct {v0}, Lfoq;-><init>()V

    .line 75
    .local v0, "model":Lfoq;
    iget-object v1, p0, Lcom/alibaba/android/user/model/DeviceSwitchObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lfoq;->a:Ljava/lang/String;

    .line 76
    iget-boolean v1, p0, Lcom/alibaba/android/user/model/DeviceSwitchObject;->show:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lfoq;->b:Ljava/lang/Boolean;

    .line 77
    return-object v0
.end method
