.class final Lboy$9;
.super Ljava/lang/Object;
.source "CommentPresenter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lboy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lboy;


# direct methods
.method constructor <init>(Lboy;)V
    .locals 0
    .param p1, "this$0"    # Lboy;

    .prologue
    .line 419
    iput-object p1, p0, Lboy$9;->a:Lboy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/16 v8, 0x40

    .line 419
    check-cast p1, Ljava/util/List;

    .line 1422
    iget-object v2, p0, Lboy$9;->a:Lboy;

    .line 2114
    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2118
    iget-object v0, v2, Lboy;->k:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-eqz v0, :cond_4

    .line 2122
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 2123
    iget-object v0, v2, Lboy;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2124
    iget-object v0, v2, Lboy;->j:Ljava/lang/String;

    iget-object v1, v2, Lboy;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_0

    .line 2125
    iget-object v0, v2, Lboy;->j:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v4, v2, Lboy;->j:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lboy;->j:Ljava/lang/String;

    .line 2127
    :cond_0
    iget-object v0, v2, Lboy;->j:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2130
    :cond_1
    iget-object v0, v2, Lboy;->k:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-object v1, v2, Lboy;->l:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->getCombinedId(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)Ljava/lang/String;

    move-result-object v1

    .line 2132
    iget-object v0, v2, Lboy;->o:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2134
    if-nez v0, :cond_5

    .line 3018
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2136
    iget-object v4, v2, Lboy;->o:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 2139
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2140
    if-eqz v0, :cond_2

    .line 2144
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2146
    invoke-virtual {v3, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 2149
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2150
    iget-object v1, v2, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    .line 2151
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2152
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 419
    :cond_4
    return-void

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method
