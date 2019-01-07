.class public interface abstract Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;
.super Ljava/lang/Object;
.source "NavBarDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public abstract getActionTitle()Ljava/lang/String;
.end method

.method public abstract getAppId()J
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract onRightClick()V
.end method

.method public abstract stickPage()V
.end method
