.class final Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;
.super Ljava/lang/Object;
.source "TeleConfDialPadLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

.field final synthetic b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;->b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 591
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v0, "destUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 594
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v3}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 595
    iput v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 596
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    iget-object v1, v3, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 599
    .local v1, "toDestUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2$1;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2$1;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    invoke-virtual {v3, v0, v8, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;ZLcma;)V

    .line 643
    .end local v0    # "destUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v1    # "toDestUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v2    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;->b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->i(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    .line 644
    return-void

    .line 639
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;->b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->h(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 640
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;->b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;->b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->h(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    goto :goto_0
.end method
