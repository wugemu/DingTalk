.class final Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$1;
.super Ljava/lang/Object;
.source "DomainStorageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils;->getItem(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/wukong/Callback;

.field final synthetic val$domainKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$1;->val$domainKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$1;->val$callback:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$1;->val$domainKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$1;->val$callback:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils$1;->val$callback:Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 51
    :cond_0
    return-void
.end method
