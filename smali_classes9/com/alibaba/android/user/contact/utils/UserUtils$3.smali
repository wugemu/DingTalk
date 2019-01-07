.class final Lcom/alibaba/android/user/contact/utils/UserUtils$3;
.super Ljava/lang/Object;
.source "UserUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/user/model/EnergyRecordObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 881
    iput-object p1, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$3;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$3;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 881
    check-cast p1, Lcom/alibaba/android/user/model/EnergyRecordObject;

    .line 1885
    iget-object v0, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$3;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$3;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1889
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$3;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1893
    iget v0, p1, Lcom/alibaba/android/user/model/EnergyRecordObject;->a:I

    sget-object v1, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;->RECEIVE:Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;

    invoke-virtual {v1}, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1894
    iget-object v0, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$3;->b:Landroid/app/Activity;

    sget v1, Lezg$l;->dt_contact_dingEnerry_claimSuccess:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/alibaba/android/user/model/EnergyRecordObject;->b:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 881
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 907
    const-string/jumbo v0, "221000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$3;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$3;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 912
    :cond_0
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 913
    const-string/jumbo v0, "claimDailyEnergy code=%s, msg=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lfxo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 914
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 901
    return-void
.end method
