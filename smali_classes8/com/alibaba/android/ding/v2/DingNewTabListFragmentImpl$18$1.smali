.class final Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18$1;
.super Ljava/lang/Object;
.source "DingNewTabListFragmentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18$1;->b:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18;

    iput-object p2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 648
    sget-object v2, Lchg;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 649
    new-instance v1, Lcom/google/gson/stream/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18$1;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 650
    .local v1, "reader":Lcom/google/gson/stream/JsonReader;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 652
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Ljava/util/HashMap;

    invoke-static {v2, v1, v3}, Lcor;->a(Lcom/google/gson/Gson;Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 653
    sput-object v2, Lchg;->d:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 654
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "load_confirm_status_info_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 655
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "confirm_status_info_language"

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18$1;->b:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18;

    iget-object v4, v4, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18$1;->b:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18;

    iget-object v3, v3, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18;->b:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18$1;->b:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18;

    iget-object v4, v4, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "[DingListFragmentV2]fetchConfirmStatusInfo failed"

    invoke-static {v2, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
