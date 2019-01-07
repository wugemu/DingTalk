.class final Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$3;
.super Ljava/lang/Object;
.source "DingListFragmentImplV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$3;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 706
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const-string/jumbo v8, "load_confirm_status_info_time"

    const-wide/16 v10, 0x0

    invoke-static {v7, v8, v10, v11}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 707
    .local v4, "lastLoadTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    const-wide/32 v10, 0x5265c00

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 708
    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "fetchConfirmStatusInfo when expired"

    aput-object v8, v7, v13

    invoke-static {v7}, Lbkd;->a([Ljava/lang/String;)V

    .line 709
    iget-object v7, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$3;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v7}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->l(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    .line 738
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "currentLanguage":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const-string/jumbo v8, "confirm_status_info_language"

    const-string/jumbo v9, ""

    invoke-static {v7, v8, v9}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 716
    .local v3, "preSaveLanguage":Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 717
    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "fetchConfirmStatusInfo when language changed"

    aput-object v8, v7, v13

    invoke-static {v7}, Lbkd;->a([Ljava/lang/String;)V

    .line 718
    iget-object v7, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$3;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v7}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->l(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    goto :goto_0

    .line 723
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$3;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v8, v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 725
    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "fetchConfirmStatusInfo when having no local data"

    aput-object v8, v7, v13

    invoke-static {v7}, Lbkd;->a([Ljava/lang/String;)V

    .line 726
    iget-object v7, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$3;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v7}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->l(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    goto :goto_0

    .line 732
    :cond_2
    :try_start_0
    new-instance v6, Lcom/google/gson/stream/JsonReader;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 733
    .local v6, "reader":Lcom/google/gson/stream/JsonReader;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 734
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, Ljava/util/HashMap;

    invoke-static {v7, v6, v8}, Lcor;->a(Lcom/google/gson/Gson;Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    sput-object v7, Lchg;->d:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 735
    .end local v6    # "reader":Lcom/google/gson/stream/JsonReader;
    :catch_0
    move-exception v2

    .line 736
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v7, "[DingListFragmentV2]initConfirmStatusInfo failed"

    invoke-static {v7, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
