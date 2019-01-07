.class final Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a$a;
.super Ljava/lang/Object;
.source "CMailSignMottoListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field final synthetic c:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;Landroid/view/View;)V
    .locals 1
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a$a;->c:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    sget v0, Laxo$f;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a$a;->a:Landroid/widget/TextView;

    .line 242
    sget v0, Laxo$f;->is_select:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a$a;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 243
    return-void
.end method
