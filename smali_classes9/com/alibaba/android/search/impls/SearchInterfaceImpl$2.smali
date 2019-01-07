.class final Lcom/alibaba/android/search/impls/SearchInterfaceImpl$2;
.super Ljava/lang/Object;
.source "SearchInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

.field final synthetic d:Lcom/alibaba/android/search/impls/SearchInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/impls/SearchInterfaceImpl;Ljava/lang/String;ILcom/alibaba/android/dingtalk/search/base/SearchCategoryType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/impls/SearchInterfaceImpl;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$2;->d:Lcom/alibaba/android/search/impls/SearchInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$2;->b:I

    iput-object p4, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$2;->c:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$2;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const-string/jumbo v0, "keyword"

    iget-object v1, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    :cond_0
    const-string/jumbo v0, "choose_mode"

    iget v1, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$2;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    iget-object v0, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$2;->c:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    if-eqz v0, :cond_1

    .line 244
    const-string/jumbo v0, "intent_key_search_category_type"

    iget-object v1, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$2;->c:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    :cond_1
    return-object p1
.end method
