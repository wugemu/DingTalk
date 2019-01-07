.class final Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;
.super Ljava/lang/Object;
.source "TeleConfDialPadLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 336
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->g(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->g(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->g(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 338
    .local v6, "activity":Landroid/app/Activity;
    invoke-static {v6}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    .end local v6    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .line 343
    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .line 344
    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_3

    .line 345
    :cond_2
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid clk position or result is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    .line 349
    .local v9, "searchObject":Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;
    if-eqz v9, :cond_0

    .line 350
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;->NormalItem:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    iget-object v1, v9, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    if-ne v0, v1, :cond_7

    .line 352
    iget-object v0, v9, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->f(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->h(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 356
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0, v9}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;)V

    goto :goto_0

    .line 358
    :cond_4
    iget-object v0, v9, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 359
    iget-object v0, v9, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v0}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 360
    .local v8, "realMobile":Ljava/lang/String;
    iget-object v0, v9, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v9, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 361
    .local v7, "nick":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    iget-object v1, v9, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v0, v2, v3, v7, v8}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;JLjava/lang/String;Ljava/lang/String;)V

    .line 363
    .end local v7    # "nick":Ljava/lang/String;
    .end local v8    # "realMobile":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->i(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    goto/16 :goto_0

    .line 360
    .restart local v8    # "realMobile":Ljava/lang/String;
    :cond_6
    iget-object v0, v9, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    goto :goto_1

    .line 365
    .end local v8    # "realMobile":Ljava/lang/String;
    :cond_7
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;->AddContactItem:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    iget-object v1, v9, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    if-ne v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->c(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Add into contact "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->c(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    .line 370
    .local v4, "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->c(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 371
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$7;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->g(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V

    goto/16 :goto_0
.end method
