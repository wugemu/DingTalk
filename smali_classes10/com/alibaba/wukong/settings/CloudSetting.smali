.class public interface abstract Lcom/alibaba/wukong/settings/CloudSetting;
.super Ljava/lang/Object;
.source "CloudSetting.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;,
        Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;
    }
.end annotation


# virtual methods
.method public abstract getEffectScope()Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getModuleName()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
