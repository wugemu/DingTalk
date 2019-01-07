.class final Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$h;
.super Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$f;
.source "BanWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V
    .locals 2

    .prologue
    .line 946
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$h;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .line 947
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$f;-><init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V

    .line 948
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$h;->c:Landroid/view/View;

    sget v1, Lctk$f;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$h;->b:Landroid/widget/TextView;

    .line 949
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 960
    sget v0, Lctk$g;->activity_ban_words_list_item_tip:I

    return v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 953
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$h;->b:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    :cond_0
    return-void
.end method
