.class public Lcom/alibaba/lightapp/runtime/nav/model/AppxParseUrlResult;
.super Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;
.source "AppxParseUrlResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appConfigJson:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public enableDSL:Ljava/lang/String;

.field public enableTabBar:Ljava/lang/String;

.field public isTinyApp:Ljava/lang/String;

.field public launchParamsTag:Ljava/lang/String;

.field public tabBarJson:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;-><init>()V

    return-void
.end method
