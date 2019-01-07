.class public Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;
.source "AdsListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;-><init>(Landroid/app/Activity;)V

    .line 35
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a;

    .line 36
    return-void
.end method

.method static synthetic a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    .line 1125
    if-eqz p0, :cond_0

    .line 1129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1130
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1133
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 27
    .line 1040
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a;

    .line 27
    return-object v0
.end method
