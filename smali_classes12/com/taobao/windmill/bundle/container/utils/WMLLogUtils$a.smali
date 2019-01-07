.class public final Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$a;
.super Ljava/lang/Object;
.source "WMLLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljqd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Ljqd;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x5

    invoke-interface {p0}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->DOWNGRDAE:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FAIL_DOWNGRADE_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v6, "url"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    aput-object p1, v5, v4

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
