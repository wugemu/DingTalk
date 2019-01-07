.class final Lhov$1$1;
.super Ljava/lang/Object;
.source "RuntimeNavigator2.java"

# interfaces
.implements Lhot;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhov$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhov$1;


# direct methods
.method constructor <init>(Lhov$1;)V
    .locals 0
    .param p1, "this$0"    # Lhov$1;

    .prologue
    .line 145
    iput-object p1, p0, Lhov$1$1;->a:Lhov$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;)V
    .locals 8
    .param p1, "handleUrlResult"    # Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 148
    iget-object v0, p0, Lhov$1$1;->a:Lhov$1;

    iget-object v0, v0, Lhov$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lhov$1$1;->a:Lhov$1;

    iget-object v1, v1, Lhov$1;->f:Landroid/os/Bundle;

    .line 1249
    if-nez p1, :cond_1

    .line 1250
    invoke-static {v0, v1}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1251
    const-string/jumbo v0, "RuntimeNavigator2"

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "handleUrlResult is null in handleException"

    aput-object v2, v1, v6

    .line 2082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1252
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    iget v2, p1, Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;->openStatus:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 1256
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;->fallbackUrl:Ljava/lang/String;

    .line 1257
    const-string/jumbo v3, "RuntimeNavigator2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "handleUrlResult status is not success & fallbackUrl=>"

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    .line 3082
    const-string/jumbo v5, "mini_task"

    invoke-static {v5, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1258
    if-eqz v1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1259
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    :cond_2
    invoke-static {v0, v1}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
