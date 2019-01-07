.class Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->downloadTemplateCheckOverTime(Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;Lcom/alipay/android/app/cctemplate/api/ITplTransport;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

.field final synthetic val$completed:Landroid/os/ConditionVariable;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$resultStatus:Ljava/util/Map;

.field final synthetic val$transport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/cctemplate/transport/TemplateManager;Ljava/util/Map;Ljava/util/List;Lcom/alipay/android/app/cctemplate/api/ITplTransport;Landroid/os/ConditionVariable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;->this$0:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    iput-object p2, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;->val$resultStatus:Ljava/util/Map;

    iput-object p3, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;->val$items:Ljava/util/List;

    iput-object p4, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;->val$transport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    iput-object p5, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;->val$completed:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;->val$resultStatus:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;->this$0:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;->val$items:Ljava/util/List;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;->val$transport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->downloadTemplate(Ljava/util/List;Ljava/util/Map;Lcom/alipay/android/app/cctemplate/api/ITplTransport;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;->val$completed:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$1;->val$completed:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
