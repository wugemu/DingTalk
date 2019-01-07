.class public final Lftm;
.super Lfsd;
.source "NameCardEditStyleViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsd",
        "<",
        "Lfso;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lfsd;-><init>(Landroid/view/View;)V

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lftm;->b:Landroid/os/Bundle;

    .line 29
    return-void
.end method

.method static synthetic a(Lftm;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lftm;

    .prologue
    .line 25
    iget-object v0, p0, Lftm;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic a(Lftm;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Lftm;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 25
    iput-object p1, p0, Lftm;->b:Landroid/os/Bundle;

    return-object p1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 25
    check-cast p1, Lfso;

    .line 1035
    if-eqz p1, :cond_0

    .line 1038
    sget v0, Lezg$h;->horizontal_list_view:I

    invoke-virtual {p0, v0}, Lftm;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/widget/BizHorizontalListView;

    .line 1040
    iget-object v1, p1, Lfso;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    if-nez v1, :cond_1

    .line 1041
    const-string/jumbo v1, "white"

    .line 1045
    :goto_0
    new-instance v2, Lfth;

    iget-object v3, p1, Lfso;->c:Ljava/util/List;

    invoke-direct {v2, v3, v1}, Lfth;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/namecard/widget/BizHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1047
    new-instance v1, Lftm$1;

    invoke-direct {v1, p0, v2, p1}, Lftm$1;-><init>(Lftm;Lfth;Lfso;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/BizHorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 25
    :cond_0
    return-void

    .line 1043
    :cond_1
    iget-object v1, p1, Lfso;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->orgThemeId:Ljava/lang/String;

    goto :goto_0
.end method
