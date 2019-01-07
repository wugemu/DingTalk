.class public interface abstract Lcom/alipay/android/app/render/api/ICashierRender;
.super Ljava/lang/Object;
.source "ICashierRender.java"


# virtual methods
.method public abstract callExecuteJs(Landroid/view/View;Ljava/lang/String;)I
.end method

.method public abstract callOnreload(Landroid/view/View;)V
.end method

.method public abstract callRender(Ljava/lang/String;)V
.end method

.method public abstract destroy(Landroid/content/Context;I)V
.end method

.method public abstract destroyView(Landroid/view/View;)V
.end method

.method public abstract generateView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract generateView(Lcom/alipay/android/app/render/api/result/PreparedResult;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract getEngineParams()Ljava/lang/String;
.end method

.method public abstract getEngineVersion()Ljava/lang/String;
.end method

.method public abstract onBackPressed(Landroid/view/View;)Z
.end method

.method public abstract preloadView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)Lcom/alipay/android/app/render/api/result/PreparedResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;",
            ")",
            "Lcom/alipay/android/app/render/api/result/PreparedResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
