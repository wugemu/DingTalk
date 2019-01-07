.class final Leto$1;
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
.field final synthetic a:Lcom/alibaba/android/search/model/BaseModel;

.field final synthetic b:Leto;


# direct methods
.method constructor <init>(Leto;Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 0
    .param p1, "this$0"    # Leto;

    .prologue
    .line 171
    iput-object p1, p0, Leto$1;->b:Leto;

    iput-object p2, p0, Leto$1;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    const-string/jumbo v1, "search_result_contactsms_click"

    invoke-static {v1}, Letd;->a(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Leto$1;->a:Lcom/alibaba/android/search/model/BaseModel;

    iget-object v2, p0, Leto$1;->b:Leto;

    iget-object v2, v2, Leto;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/android/search/model/BaseModel;->onClick(Landroid/app/Activity;Landroid/view/View;)V

    .line 178
    iget-object v1, p0, Leto$1;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->markItemClick()V

    .line 180
    iget-object v1, p0, Leto$1;->b:Leto;

    iget-object v1, v1, Leto;->a:Landroid/app/Activity;

    iget-object v2, p0, Leto$1;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Leto$1;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getSearchClickLogModel()Lcom/alibaba/android/search/model/SearchClickLogModel;

    move-result-object v0

    .line 184
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->PROFILE_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 187
    iget-object v1, p0, Leto$1;->b:Leto;

    iget v1, v1, Leto;->c:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    .line 188
    invoke-static {v0}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    sget-object v1, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->PROFILE_BTN:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 191
    invoke-static {}, Leqb;->b()V

    goto :goto_0
.end method
