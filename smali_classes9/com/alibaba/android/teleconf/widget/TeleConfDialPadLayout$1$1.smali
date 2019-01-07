.class final Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;
.super Ljava/lang/Object;
.source "TeleConfDialPadLayout.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->run()V
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
        "Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 148
    check-cast p1, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;

    .line 1151
    if-nez p1, :cond_0

    .line 1160
    :goto_0
    return-void

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->c(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/lang/String;

    move-result-object v1

    .line 2039
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->d:Ljava/lang/String;

    .line 1156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1157
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Search result invalid "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->e(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    goto :goto_0

    .line 1162
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1163
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Ljava/util/List;)Ljava/util/List;

    .line 2047
    :goto_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->a:Ljava/util/List;

    .line 1168
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1170
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1171
    if-eqz v0, :cond_2

    .line 1174
    new-instance v4, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;->NormalItem:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    invoke-direct {v4, v5}, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;)V

    .line 1175
    iput-object v0, v4, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1176
    iput-object v2, v4, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->c:Ljava/lang/String;

    .line 1177
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    iget-object v5, v5, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->f(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1178
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1165
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 1180
    :cond_4
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1186
    :cond_5
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Search res: ("

    aput-object v4, v0, v3

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v3, ","

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "), type "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 2071
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->e:Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;

    .line 1192
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1186
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->e(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 205
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Search fail "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Ljava/util/List;)Ljava/util/List;

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->e(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    .line 214
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 201
    return-void
.end method
