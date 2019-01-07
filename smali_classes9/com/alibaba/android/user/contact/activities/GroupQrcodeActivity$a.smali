.class final Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity$a;
.super Lcq;
.source "GroupQrcodeActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;Lcn;)V
    .locals 4
    .param p2, "fm"    # Lcn;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity$a;->a:Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;

    .line 88
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity$a;->a:Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;

    sget v3, Lezg$l;->group_qrcode:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity$a;->a:Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;

    sget v3, Lezg$l;->dt_im_group_link:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity$a;->b:[Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity$a;->a:Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;->a(Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity$a;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/GroupQrcodeActivity$a;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 101
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
