.class final Lcxk$3;
.super Ljava/lang/Object;
.source "SessionTextItemHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxk;
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
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field final synthetic c:Lcma;

.field final synthetic d:Lcxk;


# direct methods
.method constructor <init>(Lcxk;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcxk;

    .prologue
    .line 732
    iput-object p1, p0, Lcxk$3;->d:Lcxk;

    iput-object p2, p0, Lcxk$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcxk$3;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iput-object p4, p0, Lcxk$3;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 732
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1735
    iget-object v0, p0, Lcxk$3;->d:Lcxk;

    .line 2087
    iget-object v0, v0, Lcxk;->H:Landroid/app/Activity;

    .line 1735
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxk$3;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxk$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcxk$3;->d:Lcxk;

    iget-object v1, v1, Lcxk;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1737
    :cond_0
    :goto_0
    return-void

    .line 1740
    :cond_1
    invoke-static {}, Ldyt;->a()Ldyt;

    move-result-object v0

    iget-object v1, p0, Lcxk$3;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 3046
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, v0, Ldyt;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3047
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ad()I

    move-result v2

    if-nez v2, :cond_4

    .line 3048
    :cond_2
    iget-object v2, v0, Ldyt;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3049
    iget-object v0, v0, Ldyt;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    :cond_3
    :goto_1
    iget-object v0, p0, Lcxk$3;->c:Lcma;

    if-eqz v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcxk$3;->c:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 3054
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    .line 3055
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3058
    iget-object v3, v0, Ldyt;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3059
    new-instance v1, Ldyt$1;

    invoke-direct {v1, v0, p1}, Ldyt$1;-><init>(Ldyt;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 3067
    iget-object v0, v0, Ldyt;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3068
    invoke-virtual {p1, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->s(Lckm$a;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 754
    iget-object v0, p0, Lcxk$3;->d:Lcxk;

    .line 1087
    iget-object v0, v0, Lcxk;->H:Landroid/app/Activity;

    .line 754
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxk$3;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxk$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcxk$3;->d:Lcxk;

    iget-object v1, v1, Lcxk;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    iget-object v0, p0, Lcxk$3;->c:Lcma;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcxk$3;->c:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 750
    return-void
.end method
