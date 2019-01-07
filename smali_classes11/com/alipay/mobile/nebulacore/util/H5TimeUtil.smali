.class public Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;
.super Ljava/lang/Object;
.source "H5TimeUtil.java"


# static fields
.field public static final CREATE_PAGE:Ljava/lang/String; = "create_page"

.field public static final CREATE_WEBVIEW:Ljava/lang/String; = "create_webView"

.field public static final INIT_PLUGIN:Ljava/lang/String; = "init_plugin"

.field public static final PARSER_APP:Ljava/lang/String; = "parser_app"

.field public static final PREPARE_APP:Ljava/lang/String; = "prepare_app"

.field public static final START_APP:Ljava/lang/String; = "start_app"

.field public static final TAG:Ljava/lang/String; = "H5TimeLog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static timeLog(Ljava/lang/String;J)V
    .locals 5
    .param p0, "phase"    # Ljava/lang/String;
    .param p1, "startTime"    # J

    .prologue
    .line 29
    const-string/jumbo v0, "H5TimeLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static timeLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p0, "phase"    # Ljava/lang/String;
    .param p1, "subPhase"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .prologue
    .line 33
    const-string/jumbo v0, "H5TimeLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
