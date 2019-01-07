.class public Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject;
.super Ljava/lang/Object;
.source "OAHostPushObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;
    }
.end annotation


# static fields
.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_CORP_ID:Ljava/lang/String; = "corpId"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_PLAN_ID:Ljava/lang/String; = "planId"

.field private static final KEY_SOURCE:Ljava/lang/String; = "source"

.field private static final KEY_WORK_DATE:Ljava/lang/String; = "workDate"

.field private static final serialVersionUID:J = -0x484587d27e2c4236L


# instance fields
.field public code:I

.field public corpId:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public planId:J

.field public source:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

.field public workDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static convertToSourceType(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 115
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 120
    sget-object v1, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->OTHER:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    goto :goto_0
.end method

.method public static fromIDLModel(Lhjv;)Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject;
    .locals 6
    .param p0, "model"    # Lhjv;

    .prologue
    const/4 v3, 0x0

    .line 91
    if-nez p0, :cond_0

    move-object v2, v3

    .line 109
    :goto_0
    return-object v2

    .line 96
    :cond_0
    :try_start_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject;

    invoke-direct {v2}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject;-><init>()V

    .line 97
    .local v2, "oaObject":Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject;
    new-instance v0, Lorg/json/JSONObject;

    iget-object v4, p0, Lhjv;->d:Ljava/lang/String;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "clientValueObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "planId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject;->planId:J

    .line 99
    const-string/jumbo v4, "corpId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject;->corpId:Ljava/lang/String;

    .line 100
    const-string/jumbo v4, "code"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject;->code:I

    .line 101
    const-string/jumbo v4, "message"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject;->message:Ljava/lang/String;

    .line 102
    const-string/jumbo v4, "source"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject;->convertToSourceType(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject;->source:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    .line 103
    const-string/jumbo v4, "workDate"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject;->workDate:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v0    # "clientValueObject":Lorg/json/JSONObject;
    .end local v2    # "oaObject":Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 109
    goto :goto_0
.end method
