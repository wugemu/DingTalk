.class final Leur$2;
.super Ljava/lang/Object;
.source "TeleConfRecordAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leur;


# direct methods
.method constructor <init>(Leur;)V
    .locals 0
    .param p1, "this$0"    # Leur;

    .prologue
    .line 301
    iput-object p1, p0, Leur$2;->a:Leur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p1, :cond_0

    if-gez p3, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    const-string/jumbo v9, "tele_conf"

    invoke-static {}, Leur;->a()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Goto special function page"

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    move/from16 v0, p3

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    .line 309
    .local v4, "destObj":Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v9, v4, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    if-eqz v9, :cond_0

    move-object v8, v4

    .line 310
    check-cast v8, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 311
    .local v8, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    iget-object v9, v8, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v9, :cond_0

    iget-object v9, v8, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    instance-of v9, v9, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;

    if-eqz v9, :cond_0

    .line 312
    iget-object v2, v8, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;

    .line 1046
    .local v2, "codeNumberObject":Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;
    iget-object v5, v2, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->e:Ljava/lang/String;

    .line 314
    .local v5, "destTitle":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1062
    .local v3, "ctrlKey":Ljava/lang/String;
    iget-object v7, v2, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->a:Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;

    .line 316
    .local v7, "jumpType":Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;
    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;->UrlJump:Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;

    if-ne v7, v9, :cond_4

    .line 2054
    iget-object v6, v2, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->f:Ljava/lang/String;

    .line 318
    .local v6, "destUrl":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 319
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v9

    iget-object v10, p0, Leur$2;->a:Leur;

    iget-object v10, v10, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v9, v10, v6, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string/jumbo v9, "tele_conf"

    invoke-static {}, Leur;->a()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "Goto special function page: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v5, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_2
    const-string/jumbo v3, "call_extern_ad_click"

    .line 328
    .end local v6    # "destUrl":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 329
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 330
    .local v1, "argMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "title"

    invoke-interface {v1, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v9

    invoke-interface {v9, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 323
    .end local v1    # "argMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;->LocalJump:Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;

    if-ne v7, v9, :cond_3

    .line 325
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v9

    iget-object v10, p0, Leur$2;->a:Leur;

    iget-object v10, v10, Leur;->b:Landroid/app/Activity;

    sget-object v11, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->CALL_LOG:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    invoke-virtual {v9, v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;)V

    .line 326
    const-string/jumbo v3, "call_record_contact_click"

    goto :goto_1
.end method
