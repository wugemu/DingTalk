.class final Leqs$7;
.super Lerz;
.source "ContactSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leqs;->a(Ljava/util/List;Ljava/lang/String;Leoe;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lerz",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/search/model/idl/objects/PushUserObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Leqs;


# direct methods
.method constructor <init>(Leqs;Leqq;Ljava/lang/String;Leoe;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Leqs;
    .param p2, "baseSearchPresenter"    # Leqq;
    .param p3, "keyWord"    # Ljava/lang/String;
    .param p4, "queryLog"    # Leoe;

    .prologue
    .line 1517
    iput-object p1, p0, Leqs$7;->b:Leqs;

    iput-object p5, p0, Leqs$7;->a:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4}, Lerz;-><init>(Leqq;Ljava/lang/String;Leoe;)V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1517
    check-cast p1, Ljava/util/List;

    .line 2520
    iget-object v0, p0, Leqs$7;->b:Leqs;

    iget-object v0, v0, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2522
    :try_start_0
    iget-object v0, p0, Leqs$7;->b:Leqs;

    iget-object v1, p0, Leqs$7;->a:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Leqs;->a(Leqs;Ljava/util/Map;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2529
    :cond_0
    :goto_0
    return-void

    .line 2523
    :catch_0
    move-exception v0

    .line 2524
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2525
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "updateUserIntimacy exception"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2526
    const-string/jumbo v2, "exception"

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2527
    const-string/jumbo v2, "-403"

    const-string/jumbo v3, "updateUserIntimacy exception"

    invoke-static {v2, v3, v1}, Letb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2528
    const-string/jumbo v1, "[Contact]updateUserIntimacy exception %s "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 3050
    const-string/jumbo v0, "search"

    invoke-static {v0, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1540
    const-string/jumbo v0, "[Contact]getNewUserIntimacyPushModelData exception %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 2050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1541
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1536
    return-void
.end method
