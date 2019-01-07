.class public interface abstract Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;
.super Ljava/lang/Object;
.source "NetworkEventReporter.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequestCommon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InspectorRequest"
.end annotation


# virtual methods
.method public abstract body()[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract friendlyNameExtra()Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract method()Ljava/lang/String;
.end method

.method public abstract url()Ljava/lang/String;
.end method
