.class final Letf$2;
.super Ljava/lang/Object;
.source "ContactSearchViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Letf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/model/BaseModel;

.field final synthetic b:Letf;


# direct methods
.method constructor <init>(Letf;Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 0
    .param p1, "this$0"    # Letf;

    .prologue
    .line 320
    iput-object p1, p0, Letf$2;->b:Letf;

    iput-object p2, p0, Letf$2;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 323
    const-string/jumbo v2, "search_result_contactsms_click"

    invoke-static {v2}, Letd;->a(Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Letf$2;->a:Lcom/alibaba/android/search/model/BaseModel;

    iget-object v3, p0, Letf$2;->b:Letf;

    iget-object v3, v3, Letf;->a:Landroid/app/Activity;

    iget-object v4, p0, Letf$2;->b:Letf;

    iget-object v4, v4, Letf;->m:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/search/model/BaseModel;->onClick(Landroid/app/Activity;Landroid/view/View;)V

    .line 326
    iget-object v2, p0, Letf$2;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->markItemClick()V

    .line 328
    iget-object v2, p0, Letf$2;->b:Letf;

    iget-object v2, v2, Letf;->a:Landroid/app/Activity;

    iget-object v3, p0, Letf$2;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v3}, Lcom/alibaba/android/search/model/BaseModel;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Letf$2;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getSearchClickLogModel()Lcom/alibaba/android/search/model/SearchClickLogModel;

    move-result-object v1

    .line 332
    .local v1, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    if-eqz v1, :cond_1

    .line 333
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 334
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->PROFILE_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 335
    iget-object v2, p0, Letf$2;->b:Letf;

    iget v2, v2, Letf;->c:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    .line 337
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    iget-object v2, p0, Letf$2;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getAssureModel()Lcom/alibaba/android/search/assure/model/AssureModel;

    move-result-object v0

    .line 339
    .local v0, "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v0, :cond_0

    .line 341
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_ASSURE_CONTACT_CHECK_PROFILE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/assure/model/AssureModel;->adjustClickLogModel(I)V

    .line 343
    :cond_0
    iget-object v2, p0, Letf$2;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-static {v1, v2}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;Lcom/alibaba/android/search/model/BaseModel;)V

    .line 353
    .end local v0    # "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    :cond_1
    :goto_0
    return-void

    .line 345
    :cond_2
    invoke-static {v1}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    goto :goto_0

    .line 349
    :cond_3
    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->PROFILE_BTN:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 350
    invoke-static {}, Leqb;->b()V

    goto :goto_0
.end method
