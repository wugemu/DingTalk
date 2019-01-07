.class final Lcom/alibaba/android/user/external/list/ExternalListActivity$3;
.super Ljava/lang/Object;
.source "ExternalListActivity.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/list/ExternalListActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lblg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ExternalListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ExternalListActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity$3;->a:Lcom/alibaba/android/user/external/list/ExternalListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 178
    check-cast p1, Lblg;

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity$3;->a:Lcom/alibaba/android/user/external/list/ExternalListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g(Lcom/alibaba/android/user/external/list/ExternalListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1182
    if-eqz p1, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity$3;->a:Lcom/alibaba/android/user/external/list/ExternalListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g(Lcom/alibaba/android/user/external/list/ExternalListActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->tv_tips_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2051
    iget-object v1, p1, Lblg;->c:Ljava/lang/String;

    .line 1184
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity$3;->a:Lcom/alibaba/android/user/external/list/ExternalListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->h(Lcom/alibaba/android/user/external/list/ExternalListActivity;)V

    .line 178
    return-void
.end method
