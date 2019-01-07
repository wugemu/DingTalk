.class final Lcom/alibaba/android/user/service/ExtensionImpl$1;
.super Ljava/lang/Object;
.source "ExtensionImpl.java"

# interfaces
.implements Lcom/laiwang/protocol/http/DNS;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/service/ExtensionImpl;->getDNSForHttp()Lcom/laiwang/protocol/http/DNS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/service/ExtensionImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/service/ExtensionImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/service/ExtensionImpl;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/android/user/service/ExtensionImpl$1;->a:Lcom/alibaba/android/user/service/ExtensionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/user/service/ExtensionImpl$1;->a:Lcom/alibaba/android/user/service/ExtensionImpl;

    invoke-static {v0}, Lcom/alibaba/android/user/service/ExtensionImpl;->access$000(Lcom/alibaba/android/user/service/ExtensionImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final requestTimeout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method
