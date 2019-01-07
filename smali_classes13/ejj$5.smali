.class final Lejj$5;
.super Ljava/lang/Object;
.source "FastConfigJsonHandler.java"

# interfaces
.implements Lejh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lejj;


# direct methods
.method constructor <init>(Lejj;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lejj;

    .prologue
    .line 172
    iput-object p1, p0, Lejj$5;->b:Lejj;

    iput-object p2, p0, Lejj$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    invoke-static {}, Leix;->a()Leix;

    move-result-object v0

    iget-object v1, p0, Lejj$5;->a:Ljava/lang/String;

    .line 1120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    const-string/jumbo v2, "FastConfigEngine"

    const-string/jumbo v3, "saveModuleContent, content"

    invoke-static {v2, v3, p1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-static {v1}, Leix;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1127
    :try_start_0
    invoke-static {p1}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 1128
    if-eqz v2, :cond_2

    .line 1129
    iget-object v3, v0, Leix;->b:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    iget-object v0, v0, Leix;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1136
    const-string/jumbo v1, "FastConfigEngine"

    const-string/jumbo v2, "saveModuleContent"

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1132
    :cond_2
    :try_start_1
    const-string/jumbo v0, "FastConfigEngine"

    const-string/jumbo v1, "saveModuleContent"

    const-string/jumbo v2, "saveModuleContent parseObject ret null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
