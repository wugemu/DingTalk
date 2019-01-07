.class public Lcom/taobao/weex/ui/component/list/HorizontalListComponent;
.super Lcom/taobao/weex/ui/component/list/WXListComponent;
.source "HorizontalListComponent.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "lazy"    # Z
    .param p4, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/list/WXListComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method
