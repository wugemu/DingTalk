.class final Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$3;
.super Ljava/lang/Object;
.source "DomainStorageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils;->removeItem(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/wukong/Callback;

.field final synthetic val$domainKey:Ljava/lang/String;

.field final synthetic val$host:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$3;->val$domainKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$3;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$3;->val$callback:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$3;->val$domainKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "deleteValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 121
    .local v1, "deleteValueSize":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$3;->val$host:Ljava/lang/String;

    invoke-static {v3, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    sub-int v2, v3, v1

    .line 122
    .local v2, "domainSize":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$3;->val$host:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 124
    .end local v1    # "deleteValueSize":I
    .end local v2    # "domainSize":I
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$3;->val$domainKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Ljava/lang/String;)I

    .line 125
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$3;->val$callback:Lcom/alibaba/wukong/Callback;

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$3;->val$callback:Lcom/alibaba/wukong/Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 128
    :cond_1
    return-void
.end method
