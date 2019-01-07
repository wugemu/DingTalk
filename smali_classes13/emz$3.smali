.class final Lemz$3;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lemz;->a(Lcom/alibaba/android/search/model/BaseModel;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/model/BaseModel;

.field final synthetic b:Lemz;


# direct methods
.method constructor <init>(Lemz;Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 0
    .param p1, "this$0"    # Lemz;

    .prologue
    .line 324
    iput-object p1, p0, Lemz$3;->b:Lemz;

    iput-object p2, p0, Lemz$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 327
    iget-object v2, p0, Lemz$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    iget-object v3, p0, Lemz$3;->b:Lemz;

    iget-object v3, v3, Lemz;->b:Landroid/app/Activity;

    invoke-virtual {v2, v3, p1}, Lcom/alibaba/android/search/model/BaseModel;->onClick(Landroid/app/Activity;Landroid/view/View;)V

    .line 328
    iget-object v2, p0, Lemz$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->markItemClick()V

    .line 329
    iget-object v2, p0, Lemz$3;->b:Lemz;

    iget-object v2, v2, Lemz;->b:Landroid/app/Activity;

    iget-object v3, p0, Lemz$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-static {v2, v3}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/content/Context;Lcom/alibaba/android/search/model/BaseModel;)V

    .line 332
    iget-object v2, p0, Lemz$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getSearchClickLogModel()Lcom/alibaba/android/search/model/SearchClickLogModel;

    move-result-object v1

    .line 333
    .local v1, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    if-eqz v1, :cond_0

    .line 334
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 335
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 336
    iget-object v2, p0, Lemz$3;->b:Lemz;

    invoke-static {v2}, Lemz;->a(Lemz;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    .line 338
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lemz$3;->b:Lemz;

    invoke-static {v2}, Lemz;->b(Lemz;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    iget-object v2, p0, Lemz$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getAssureModel()Lcom/alibaba/android/search/assure/model/AssureModel;

    move-result-object v0

    .line 340
    .local v0, "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v0, :cond_1

    .line 341
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_ASSURE_CONTACT_MSG:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/assure/model/AssureModel;->adjustClickLogModel(I)V

    .line 342
    iget-object v2, p0, Lemz$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-static {v1, v2}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;Lcom/alibaba/android/search/model/BaseModel;)V

    .line 354
    .end local v0    # "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    :cond_0
    :goto_0
    iget-object v2, p0, Lemz$3;->b:Lemz;

    iget-object v3, p0, Lemz$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-static {v2, v3}, Lemz;->a(Lemz;Lcom/alibaba/android/search/model/BaseModel;)V

    .line 355
    return-void

    .line 344
    .restart local v0    # "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    :cond_1
    invoke-static {v1}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    goto :goto_0

    .line 347
    .end local v0    # "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    :cond_2
    invoke-static {v1}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    goto :goto_0

    .line 350
    :cond_3
    invoke-static {}, Leqb;->b()V

    goto :goto_0
.end method
