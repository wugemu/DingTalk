.class final Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2$1;
.super Ljava/lang/Object;
.source "ChooseDistrictCodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2$1;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2$1;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2$1;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;

    iget-object v2, v2, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->c(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1251
    new-instance v2, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;

    invoke-direct {v2, v0, v0, v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;-><init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;Landroid/app/Activity;Ljava/util/List;)V

    iput-object v2, v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->b:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;

    .line 1252
    iget-object v1, v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->a:Landroid/widget/ListView;

    iget-object v2, v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->b:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1253
    iget-object v1, v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->a:Landroid/widget/ListView;

    iget-object v0, v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    return-void
.end method
