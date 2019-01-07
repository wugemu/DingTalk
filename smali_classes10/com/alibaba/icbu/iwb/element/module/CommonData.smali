.class public Lcom/alibaba/icbu/iwb/element/module/CommonData;
.super Ljava/lang/Object;
.source "CommonData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final API_ERROR:Ljava/lang/String; = "IWB_API_ERROR"

.field public static final CANCELED:Ljava/lang/String; = "IWB_CANCELED"

.field public static final CLOSED:Ljava/lang/String; = "IWB_PLUGIN_CLOSED"

.field public static final FAIL:Ljava/lang/String; = "IWB_FAILURE"

.field public static final INVALID_APPKEY:Ljava/lang/String; = "IWB_INVALID_APPKEY"

.field public static final INVALID_SESSION:Ljava/lang/String; = "IWB_INVALID_SESSION"

.field public static final INVALID_TOKEN:Ljava/lang/String; = "IWB_INVALID_TOKEN"

.field public static final NO_METHOD:Ljava/lang/String; = "IWB_API_NOT_FOUND"

.field public static final NO_PERMISSION:Ljava/lang/String; = "IWB_NO_PERMISSION"

.field public static final PARAM_ERR:Ljava/lang/String; = "IWB_INVALID_PARAM"

.field public static final RENDER_ERROR:Ljava/lang/String; = "IWB_RENDER_ERROR"

.field public static final SESSION_EXPIRED:Ljava/lang/String; = "IWB_SESSION_EXPIRED"

.field public static final SUCCESS:Ljava/lang/String; = "IWB_SUCCESS"

.field public static final TOKEN_EXPIRED:Ljava/lang/String; = "IWB_TOKEN_EXPIRED"


# instance fields
.field public code:Ljava/lang/String;

.field public data:Ljava/lang/Object;

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/icbu/iwb/element/module/CommonData;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/icbu/iwb/element/module/CommonData;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/icbu/iwb/element/module/CommonData;->code:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/icbu/iwb/element/module/CommonData;->data:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/icbu/iwb/element/module/CommonData;->msg:Ljava/lang/String;

    .line 41
    return-void
.end method
