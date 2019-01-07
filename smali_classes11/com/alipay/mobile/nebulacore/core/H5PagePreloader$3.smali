.class final Lcom/alipay/mobile/nebulacore/core/H5PagePreloader$3;
.super Ljava/lang/Object;
.source "H5PagePreloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->precreateH5Activity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 199
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->access$700()Ljava/lang/Object;

    move-result-object v3

    .line 200
    .local v3, "quinoxInstrumentation":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 229
    .end local v3    # "quinoxInstrumentation":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local v3    # "quinoxInstrumentation":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v9, "H5PagePreloader"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "instrumentation class type = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "com.alipay.mobile"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 207
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->d()Landroid/app/Application;

    move-result-object v9

    const-string/jumbo v10, "window"

    invoke-virtual {v9, v10}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 208
    .local v6, "wm":Landroid/view/WindowManager;
    if-eqz v6, :cond_0

    .line 211
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string/jumbo v10, "precreateActivity"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Ljava/lang/ClassLoader;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 212
    .local v2, "precreateActivityMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 213
    sget-object v9, Lcom/alipay/mobile/nebulacore/Nebula;->LITE_PROCESS_H5_ACTIVITY:[Ljava/lang/Class;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v10

    invoke-interface {v10}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->getLitePid()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    aget-object v4, v9, v10

    .line 214
    .local v4, "targetActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 215
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v9, "H5PagePreloader"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "activity create success ? "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->access$202(Landroid/app/Activity;)Landroid/app/Activity;

    .line 217
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->access$200()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 218
    const-class v7, Landroid/app/Activity;

    const-string/jumbo v8, "mWindowManager"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 219
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 220
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->access$200()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->access$000()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 225
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "precreateActivityMethod":Ljava/lang/reflect/Method;
    .end local v3    # "quinoxInstrumentation":Ljava/lang/Object;
    .end local v4    # "targetActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v5

    .line 226
    .local v5, "thr":Ljava/lang/Throwable;
    const-string/jumbo v7, "H5PagePreloader"

    const-string/jumbo v8, "precreateH5Activity error"

    invoke-static {v7, v8, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    const-string/jumbo v7, "H5Activity_create_failed"

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->access$600(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5    # "thr":Ljava/lang/Throwable;
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v2    # "precreateActivityMethod":Ljava/lang/reflect/Method;
    .restart local v3    # "quinoxInstrumentation":Ljava/lang/Object;
    .restart local v4    # "targetActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "wm":Landroid/view/WindowManager;
    :cond_2
    move v7, v8

    .line 215
    goto :goto_1

    .line 223
    :cond_3
    :try_start_1
    const-string/jumbo v7, "H5Activity_create_failed"

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->access$600(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
