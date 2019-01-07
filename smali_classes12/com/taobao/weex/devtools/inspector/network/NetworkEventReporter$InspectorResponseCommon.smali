.class public interface abstract Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponseCommon;
.super Ljava/lang/Object;
.source "NetworkEventReporter.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InspectorResponseCommon"
.end annotation


# virtual methods
.method public abstract reasonPhrase()Ljava/lang/String;
.end method

.method public abstract requestId()Ljava/lang/String;
.end method

.method public abstract statusCode()I
.end method
