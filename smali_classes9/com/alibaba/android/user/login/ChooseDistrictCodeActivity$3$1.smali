.class final Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3$1;
.super Ljava/lang/Object;
.source "ChooseDistrictCodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3$1;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lfra;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3$1;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->b(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3$1;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->b(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3$1;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->h(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3$1;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->h(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;->a(Ljava/util/List;)V

    .line 181
    :cond_1
    return-void
.end method
