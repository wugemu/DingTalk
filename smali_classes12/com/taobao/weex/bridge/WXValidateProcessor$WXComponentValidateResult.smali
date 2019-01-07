.class public Lcom/taobao/weex/bridge/WXValidateProcessor$WXComponentValidateResult;
.super Ljava/lang/Object;
.source "WXValidateProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/bridge/WXValidateProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WXComponentValidateResult"
.end annotation


# instance fields
.field public isSuccess:Z

.field public replacedComponent:Ljava/lang/String;

.field public validateInfo:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
