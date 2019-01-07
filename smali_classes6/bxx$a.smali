.class final Lbxx$a;
.super Landroid/content/BroadcastReceiver;
.source "ShareLivePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbxx;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lbxx;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lbxx$a;->a:Lbxx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbxx;B)V
    .locals 0
    .param p1, "x0"    # Lbxx;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lbxx$a;-><init>(Lbxx;)V

    return-void
.end method

.method static synthetic a(Lbxx$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lbxx$a;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 191
    .line 1197
    iput-object p1, p0, Lbxx$a;->b:Ljava/lang/String;

    .line 1198
    iput-object p2, p0, Lbxx$a;->c:Ljava/lang/String;

    .line 191
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 204
    const-string/jumbo v4, "activity_identify"

    invoke-static {p2, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "idEntify":Ljava/lang/String;
    const-string/jumbo v4, "live_replay"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const-string/jumbo v4, "conversation"

    .line 209
    invoke-static {p2, v4}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 210
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 215
    .local v3, "object":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v3, :cond_2

    .line 216
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    .end local v3    # "object":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :cond_3
    iget-object v4, p0, Lbxx$a;->a:Lbxx;

    iget-object v5, p0, Lbxx$a;->b:Ljava/lang/String;

    iget-object v6, p0, Lbxx$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v0}, Lbxx;->a(Lbxx;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
