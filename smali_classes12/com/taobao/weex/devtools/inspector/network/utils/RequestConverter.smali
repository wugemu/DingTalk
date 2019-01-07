.class public Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter;
.super Ljava/lang/Object;
.source "RequestConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static convertFrom(Ljava/util/Map;)Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "raw":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;

    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter$GeneralRequest;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
