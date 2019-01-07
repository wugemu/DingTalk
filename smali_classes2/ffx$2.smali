.class final Lffx$2;
.super Ljava/lang/Object;
.source "ActiveInvitePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lffx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
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
        "Lcom/alibaba/android/user/model/OrgInviteObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lffx;


# direct methods
.method constructor <init>(Lffx;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lffx;

    .prologue
    .line 141
    iput-object p1, p0, Lffx$2;->d:Lffx;

    iput-object p2, p0, Lffx$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lffx$2;->b:Ljava/util/List;

    iput-object p4, p0, Lffx$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 141
    check-cast p1, Lcom/alibaba/android/user/model/OrgInviteObject;

    .line 3144
    iget-object v0, p0, Lffx$2;->d:Lffx;

    .line 4053
    iget-object v0, v0, Lffx;->f:Lffw;

    .line 3144
    if-eqz v0, :cond_0

    .line 3148
    iget-object v0, p0, Lffx$2;->d:Lffx;

    .line 5053
    iget-object v0, v0, Lffx;->f:Lffw;

    .line 3148
    invoke-interface {v0}, Lffw;->b()V

    .line 3149
    if-nez p1, :cond_1

    .line 3150
    const-string/jumbo v0, "ActiveInvite"

    const-string/jumbo v1, "loadActiveInviteInfo ret null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3151
    :cond_0
    :goto_0
    return-void

    .line 3154
    :cond_1
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;-><init>()V

    .line 3155
    iget-object v1, p0, Lffx$2;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3156
    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgInviteObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 3160
    :goto_1
    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgInviteObject;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setContent(Ljava/lang/String;)V

    .line 3161
    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgInviteObject;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setLinkUrl(Ljava/lang/String;)V

    .line 3162
    const-string/jumbo v1, "invite_share_click"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setShareKey(Ljava/lang/String;)V

    .line 3163
    const-string/jumbo v1, "https://gw.alicdn.com/tps/TB1u3jCMXXXXXcuXpXXXXXXXXXX-200-200.png"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 3164
    iget-object v1, p0, Lffx$2;->d:Lffx;

    iget-object v1, p0, Lffx$2;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 6305
    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3165
    :cond_2
    :goto_2
    iget-object v1, p0, Lffx$2;->d:Lffx;

    .line 7053
    iget-object v1, v1, Lffx;->f:Lffw;

    .line 3165
    iget-object v2, p0, Lffx$2;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lffw;->a(Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto :goto_0

    .line 3158
    :cond_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lffx$2;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string/jumbo v3, "\uff0c"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/alibaba/android/user/model/OrgInviteObject;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 6309
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6310
    const-string/jumbo v3, "address"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6311
    invoke-virtual {v0, v2}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setExtention(Ljava/util/Map;)V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 175
    iget-object v0, p0, Lffx$2;->d:Lffx;

    .line 1053
    iget-object v0, v0, Lffx;->f:Lffw;

    .line 175
    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lffx$2;->d:Lffx;

    .line 2053
    iget-object v0, v0, Lffx;->f:Lffw;

    .line 176
    invoke-interface {v0}, Lffw;->b()V

    .line 177
    iget-object v0, p0, Lffx$2;->d:Lffx;

    .line 3053
    iget-object v0, v0, Lffx;->f:Lffw;

    .line 177
    invoke-interface {v0, p1, p2}, Lffw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v0, "ActiveInvite"

    const-string/jumbo v1, "loadActiveInviteInfo err,code:%s,reason:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 171
    return-void
.end method
