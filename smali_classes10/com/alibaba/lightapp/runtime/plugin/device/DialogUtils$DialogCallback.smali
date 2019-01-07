.class public interface abstract Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DialogCallback"
.end annotation


# virtual methods
.method public abstract dialogCallbackFail(Ljava/lang/Exception;)V
.end method

.method public abstract dialogCallbackSuccess(ILjava/lang/String;)V
.end method
