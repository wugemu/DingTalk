.class public interface abstract Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
.super Ljava/lang/Object;
.source "IWXUserTrackAdapter.java"


# static fields
.field public static final DOM_MODULE:Ljava/lang/String; = "domModule"

.field public static final INIT_FRAMEWORK:Ljava/lang/String; = "initFramework"

.field public static final INVOKE_MODULE:Ljava/lang/String; = "invokeModule"

.field public static final JS_BRIDGE:Ljava/lang/String; = "jsBridge"

.field public static final JS_DOWNLOAD:Ljava/lang/String; = "jsDownload"

.field public static final JS_FRAMEWORK:Ljava/lang/String; = "jsFramework"

.field public static final LOAD:Ljava/lang/String; = "load"

.field public static final MODULE_NAME:Ljava/lang/String; = "weex"

.field public static final MONITOR_ARG:Ljava/lang/String; = "arg"

.field public static final MONITOR_ERROR_CODE:Ljava/lang/String; = "errCode"

.field public static final MONITOR_ERROR_MSG:Ljava/lang/String; = "errMsg"

.field public static final STREAM_MODULE:Ljava/lang/String; = "streamModule"


# virtual methods
.method public abstract commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXPerformance;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation
.end method
