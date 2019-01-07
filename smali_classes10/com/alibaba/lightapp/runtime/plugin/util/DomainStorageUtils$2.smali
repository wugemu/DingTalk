.class final Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;
.super Ljava/lang/Object;
.source "DomainStorageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils;->setItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/wukong/Callback;

.field final synthetic val$domainSize:[I

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$host:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$domainSize:[I

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$value:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$callback:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 80
    new-array v3, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$host:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$key:Ljava/lang/String;

    aput-object v5, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "domainKey":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "oldValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$domainSize:[I

    aget v5, v3, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v3, v4

    .line 85
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$domainSize:[I

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$domainSize:[I

    aget v3, v3, v4

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$domainSize:[I

    aget v3, v3, v4

    :goto_0
    aput v3, v5, v4

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$domainSize:[I

    aget v5, v3, v4

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 89
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$value:Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 90
    .local v2, "result":I
    if-lez v2, :cond_3

    .line 91
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$host:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$domainSize:[I

    aget v4, v6, v4

    invoke-static {v3, v5, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 92
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$callback:Lcom/alibaba/wukong/Callback;

    if-eqz v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$callback:Lcom/alibaba/wukong/Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 101
    :cond_1
    :goto_1
    return-void

    .end local v2    # "result":I
    :cond_2
    move v3, v4

    .line 85
    goto :goto_0

    .line 96
    .restart local v2    # "result":I
    :cond_3
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$callback:Lcom/alibaba/wukong/Callback;

    if-eqz v3, :cond_4

    .line 97
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$2;->val$callback:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v5, "2"

    const-string/jumbo v6, "setItem fail"

    invoke-interface {v3, v5, v6}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_4
    const-string/jumbo v3, "lightapp"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v7, "DomainStorage setItem fail:"

    aput-object v7, v6, v4

    aput-object v0, v6, v8

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
