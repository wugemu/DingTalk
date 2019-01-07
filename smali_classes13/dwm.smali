.class public final Ldwm;
.super Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;
.source "BusinessSystemBoxViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;-><init>(Landroid/app/Activity;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lctk$g;->box_business_item_system:I

    return v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    sget v0, Lctk$f;->tv_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldwm;->d:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    .line 2053
    if-eqz p1, :cond_0

    .line 2057
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2058
    iget-object v0, p0, Ldwm;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    .line 1064
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Ldwm;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->url:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
