.class final Leto$2;
.super Ljava/lang/Object;
.source "ExternalContactSearchViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Lcom/alibaba/android/search/model/BaseModel;

.field final synthetic c:Leto;


# direct methods
.method constructor <init>(Leto;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 0
    .param p1, "this$0"    # Leto;

    .prologue
    .line 196
    iput-object p1, p0, Leto$2;->c:Leto;

    iput-object p2, p0, Leto$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Leto$2;->b:Lcom/alibaba/android/search/model/BaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    const-string/jumbo v1, "search_result_contactcall_click"

    invoke-static {v1}, Letd;->a(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Leto$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 202
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    iget-object v2, p0, Leto$2;->c:Leto;

    iget-object v2, v2, Leto;->a:Landroid/app/Activity;

    iget-object v3, p0, Leto$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    sget-object v4, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->SEARCH:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    .line 206
    :goto_0
    iget-object v1, p0, Leto$2;->c:Leto;

    iget-object v1, v1, Leto;->a:Landroid/app/Activity;

    iget-object v2, p0, Leto$2;->b:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Leto$2;->b:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getSearchClickLogModel()Lcom/alibaba/android/search/model/SearchClickLogModel;

    move-result-object v0

    .line 210
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CALL_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 213
    iget-object v1, p0, Leto$2;->c:Leto;

    iget v1, v1, Leto;->c:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    .line 214
    invoke-static {v0}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 221
    :cond_0
    :goto_1
    iget-object v1, p0, Leto$2;->b:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->markItemClick()V

    .line 222
    return-void

    .line 204
    .end local v0    # "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    :cond_1
    iget-object v1, p0, Leto$2;->b:Lcom/alibaba/android/search/model/BaseModel;

    iget-object v2, p0, Leto$2;->c:Leto;

    iget-object v2, v2, Leto;->a:Landroid/app/Activity;

    iget-object v3, p0, Leto$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    sget-object v4, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->TYPE_FREE_CALL:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/search/model/BaseModel;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/search/utils/SearchUtils$ActionType;)V

    goto :goto_0

    .line 216
    .restart local v0    # "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    :cond_2
    sget-object v1, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->CALL_BTN:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 217
    invoke-static {}, Leqb;->b()V

    goto :goto_1
.end method
