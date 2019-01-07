.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$10;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->b(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgjs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    .prologue
    .line 2155
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$10;->c:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$10;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$10;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2155
    check-cast p1, Lgjs;

    .line 3158
    if-eqz p1, :cond_1

    .line 3159
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceInterfaceImpl"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "SpaceInterfaceImpl"

    aput-object v3, v2, v5

    const-string/jumbo v3, " isUserCanPrint result, isBindCloudprint = "

    aput-object v3, v2, v4

    iget-object v3, p1, Lgjs;->a:Ljava/lang/Boolean;

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const-string/jumbo v4, ", hasAccessRight = "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lgjs;->b:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, ", url = "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p1, Lgjs;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 3160
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3159
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3163
    iget-object v0, p1, Lgjs;->a:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v0, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 3163
    if-eqz v0, :cond_0

    iget-object v0, p1, Lgjs;->b:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v0, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 3164
    if-eqz v0, :cond_0

    .line 3165
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$10;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$10;->b:Lcma;

    invoke-static {v0, v1}, Lgpr;->a(Ljava/lang/Object;Lcma;)V

    .line 3167
    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lgjs;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$10;->b:Lcma;

    invoke-static {v0, v1}, Lgpr;->a(Ljava/lang/Object;Lcma;)V

    goto :goto_0

    .line 3170
    :cond_1
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceInterfaceImpl"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "SpaceInterfaceImpl"

    aput-object v3, v2, v5

    const-string/jumbo v3, " isUserCanPrint result is null"

    aput-object v3, v2, v4

    .line 3171
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3170
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3172
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$10;->b:Lcma;

    invoke-static {v7, v7, v0}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2183
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceInterfaceImpl"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "SpaceInterfaceImpl"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " isUserCanPrint exp code = "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ", reason = "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    .line 2184
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2183
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$10;->b:Lcma;

    invoke-static {p1, p2, v0}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 2186
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2179
    return-void
.end method
