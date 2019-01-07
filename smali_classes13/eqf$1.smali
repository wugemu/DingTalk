.class final Leqf$1;
.super Ljava/lang/Object;
.source "LightAppSearchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leqf;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leqk;

.field final synthetic b:Leqf;


# direct methods
.method constructor <init>(Leqf;Leqk;)V
    .locals 0
    .param p1, "this$0"    # Leqf;

    .prologue
    .line 69
    iput-object p1, p0, Leqf$1;->b:Leqf;

    iput-object p2, p0, Leqf$1;->a:Leqk;

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
    .line 74
    iget-object v2, p0, Leqf$1;->a:Leqk;

    .line 1056
    iget-object v0, v2, Leqi;->c:Lcom/alibaba/android/search/model/SearchClickLogModel;

    .line 75
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    if-eqz v0, :cond_0

    .line 76
    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 77
    invoke-static {}, Leqb;->b()V

    .line 80
    :cond_0
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    iget-object v3, p0, Leqf$1;->b:Leqf;

    iget-object v3, v3, Leqf;->b:Landroid/app/Activity;

    iget-object v4, p0, Leqf$1;->a:Leqk;

    .line 1059
    iget-object v4, v4, Leqk;->f:Ljava/lang/String;

    .line 81
    iget-object v5, p0, Leqf$1;->a:Leqk;

    invoke-virtual {v5}, Leqk;->a()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.add.search.history"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Leqf$1;->b:Leqf;

    iget-object v2, v2, Leqf;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object v2, p0, Leqf$1;->b:Leqf;

    iget-object v2, v2, Leqf;->b:Landroid/app/Activity;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 86
    return-void
.end method
