.class public Lcom/alibaba/wukong/auth/ap;
.super Ljava/lang/Object;
.source "CloudSettingImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/settings/CloudSetting;


# instance fields
.field protected aT:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

.field protected aU:J

.field protected mKey:Ljava/lang/String;

.field protected mModuleName:Ljava/lang/String;

.field protected mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/auth/x;)Lcom/alibaba/wukong/auth/ap;
    .locals 2
    .param p0, "model"    # Lcom/alibaba/wukong/auth/x;

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/auth/ap;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/ap;-><init>()V

    .line 61
    .local v0, "object":Lcom/alibaba/wukong/auth/ap;
    iget-object v1, p0, Lcom/alibaba/wukong/auth/x;->moduleName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/ap;->mModuleName:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/alibaba/wukong/auth/x;->key:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/ap;->mKey:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/alibaba/wukong/auth/x;->ag:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/ap;->mValue:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/alibaba/wukong/auth/x;->ah:Ljava/lang/Integer;

    if-nez v1, :cond_1

    sget-object v1, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    :goto_1
    iput-object v1, v0, Lcom/alibaba/wukong/auth/ap;->aT:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/wukong/auth/x;->ah:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->fromValue(I)Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public getEffectScope()Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/wukong/auth/ap;->aT:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/wukong/auth/ap;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/wukong/auth/ap;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/wukong/auth/ap;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/alibaba/wukong/auth/ap;->aU:J

    return-wide v0
.end method
