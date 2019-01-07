.class final Lewn$4;
.super Ljava/lang/Object;
.source "TeleConfQuickStartCallHelper.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeModel;

.field final synthetic b:I

.field final synthetic c:Lewn;


# direct methods
.method constructor <init>(Lewn;Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeModel;I)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 861
    iput-object p1, p0, Lewn$4;->c:Lewn;

    iput-object p2, p0, Lewn$4;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeModel;

    iput p3, p0, Lewn$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 861
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeResultModel;

    .line 1864
    if-nez p1, :cond_1

    .line 4345
    :cond_0
    :goto_0
    return-void

    .line 1867
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeResultModel;->code:Ljava/lang/Integer;

    .line 2033
    invoke-static {v0, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1868
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    .line 1869
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lewn;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Query short code fail "

    aput-object v4, v3, v5

    .line 1870
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeResultModel;->cause:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1869
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1873
    :cond_2
    iget-object v0, p0, Lewn$4;->c:Lewn;

    invoke-static {v0}, Lewn;->a(Lewn;)Lewj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, p0, Lewn$4;->c:Lewn;

    invoke-static {v0}, Lewn;->a(Lewn;)Lewj;

    move-result-object v0

    .line 2459
    iget-object v0, v0, Lewj;->g:Ljava/lang/String;

    .line 1875
    iget-object v1, p0, Lewn$4;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeModel;->callee:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lewn$4;->c:Lewn;

    invoke-static {v0}, Lewn;->a(Lewn;)Lewj;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeResultModel;->shortDialingCode:Ljava/lang/String;

    .line 2467
    iput-object v1, v0, Lewj;->h:Ljava/lang/String;

    .line 1877
    iget-object v0, p0, Lewn$4;->c:Lewn;

    invoke-static {v0}, Lewn;->a(Lewn;)Lewj;

    move-result-object v0

    iget v1, p0, Lewn$4;->b:I

    .line 3449
    iget-object v2, v0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    if-eqz v2, :cond_0

    .line 3450
    iget-object v0, v0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    .line 4342
    iget-object v2, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->a:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    .line 4344
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4348
    iget-object v2, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 4349
    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->a:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 4350
    if-lt v1, v2, :cond_0

    if-gt v1, v3, :cond_0

    .line 4351
    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a(I)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v3

    .line 5165
    iput-boolean v6, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->m:Z

    .line 4354
    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->a:Landroid/widget/ListView;

    sub-int v2, v1, v2

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4355
    iget-object v3, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->a:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v2, v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 884
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewn;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Query short code fail "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    return-void
.end method
