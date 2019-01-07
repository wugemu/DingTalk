.class final Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper$1;
.super Ljava/lang/Object;
.source "HttpDnsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper$1;->b:Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper$1;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper$1;->a:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method
