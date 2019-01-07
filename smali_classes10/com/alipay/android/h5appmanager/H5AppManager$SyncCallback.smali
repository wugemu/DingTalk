.class public interface abstract Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;
.super Ljava/lang/Object;
.source "H5AppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/h5appmanager/H5AppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncCallback"
.end annotation


# virtual methods
.method public abstract onAppInfo(Lcom/alipay/android/h5appmanager/AppInfo;)V
.end method

.method public abstract onFail(Ljava/lang/Exception;Lcom/alipay/android/h5appmanager/AppInfo;)V
.end method

.method public abstract onSuccess(Lcom/alipay/android/h5appmanager/AppInfo;)V
.end method
